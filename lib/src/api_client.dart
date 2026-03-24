/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="api_client.dart">
 *   Copyright (c) 2026 Aspose.Words for Cloud
 * </copyright>
 * <summary>
 *   Permission is hereby granted, free of charge, to any person obtaining a copy
 *  of this software and associated documentation files (the "Software"), to deal
 *  in the Software without restriction, including without limitation the rights
 *  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *  copies of the Software, and to permit persons to whom the Software is
 *  furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *  SOFTWARE.
 * </summary>
 * --------------------------------------------------------------------------------
 */

library aspose_words_cloud;

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart';
import 'package:http/http.dart' as http;
import 'package:pointycastle/export.dart';
import 'package:uuid/uuid.dart';

import './api_request_data.dart';
import './api_request_part.dart';
import './api_response_data.dart';
import './body_part_data.dart';
import './byte_data_extensions.dart';
import '../aspose_words_cloud.dart';

class ApiClient {
  String? _authToken;
  bool _encryptorInitialized = false;

  final _publicKeyRequester;
  final PKCS1Encoding _encrypter = PKCS1Encoding(RSAEngine());
  final _starting = ByteData.view(utf8.encoder.convert('--').buffer);
  final _newline = ByteData.view(utf8.encoder.convert('\r\n').buffer);
  final _newline2x = ByteData.view(utf8.encoder.convert('\r\n\r\n').buffer);

  final Configuration configuration;

  ApiClient(this.configuration, this._publicKeyRequester);

  Future _initializeEncrypter() async {
    if (_encryptorInitialized == true) {
      return;
    }

    _encryptorInitialized = true;
    try {
        var exponentString = configuration.rsaExponent;
        var modulusString = configuration.rsaModulus;

        if (exponentString.isEmpty || modulusString.isEmpty)
        {
            final rsaPublicKey = await _publicKeyRequester(GetPublicKeyRequest());
            if (rsaPublicKey == null || rsaPublicKey.modulus == null || rsaPublicKey.exponent == null) {
              throw ApiException(400, 'Invalid public key response.');
            }
            exponentString = rsaPublicKey.exponent as String;
            modulusString = rsaPublicKey.modulus as String;
        }

        final modulus = BigInt.parse(hex.encode(base64Decode(modulusString)), radix: 16);
        final exponent = BigInt.parse(hex.encode(base64Decode(exponentString)), radix: 16);
        var pubKey = RSAPublicKey(modulus, exponent);

        _encrypter.init(true, PublicKeyParameter<RSAPublicKey>(pubKey));
      }
      catch(_) {
        _encryptorInitialized = false;
        rethrow;
      }
  }

  Future<String> encryptPassword(final String password) async {
    await _initializeEncrypter();
    return base64Encode(
      _encrypter.process(
        Uint8List.fromList(
          utf8.encode(password)
        )
      )
    );
  }

  void _handleResponse(final int statusCode, final String reasonPhrase, final ByteData body) {
    if (statusCode != 200) {
      var printBody = '';
      try {
        printBody = utf8.decoder.convert(body.buffer.asUint8List(body.offsetInBytes, body.lengthInBytes));
      }
      catch(e) {
        printBody = reasonPhrase;
      }

      throw ApiException(statusCode, printBody);
    }
  }

  Future<String> _getAuthToken() async {
    if (_authToken == null) {
      await _updateAuthToken();
    }

    return _authToken ?? "";
  }

  Future<void> _updateAuthToken() async {
    final url = configuration.baseUrl + '/v4.0/words/connect/token';
    final data = 'grant_type=client_credentials&client_id=${configuration.clientId}&client_secret=${configuration.clientSecret}';
    final headers = {'Content-Type' : 'application/x-www-form-urlencoded'};
    final response = await http.post(Uri.parse(url), headers: headers, body: data).timeout(configuration.timeout);
    if (response.statusCode == 400) {
      throw ApiException(response.statusCode, 'Invalid server credentials. Please check your ClientSecret and ClientId.');
    }
    else {
      _handleResponse(response.statusCode, response.reasonPhrase ?? "", ByteData.view(response.bodyBytes.buffer));
    }

    final json = jsonDecode(response.body);
    _authToken = '${json['token_type']} ${json['access_token']}';
  }

  String _stringifyBody(ByteData body) {
    try {
      return '\t' + utf8.decoder.convert(body.buffer.asUint8List(body.offsetInBytes, body.lengthInBytes));
    }
    catch(ex) {
      var result = '\t';
      for (var i = 0; i < body.lengthInBytes; i++) {
        if (i != 0) {
          result += ', ';
          if (i % 16 == 0) {
            result += '\r\n\t';
          }
        }
        result += body.getUint8(body.offsetInBytes + i).toRadixString(16).padLeft(2, '0').toUpperCase();
      }
      return result;
    }
  }

  String applyQueryParams(String url, Map<String, String> queryParams) {
    if (queryParams.isEmpty) {
      return url;
    }

    var firstAppend = true;
    queryParams.forEach((key, value) {
      url = '$url${firstAppend ? '?' : '&'}$key=${Uri.encodeQueryComponent(value)}';
      firstAppend = false;
    });

    return url;
  }

  String? serializeToString(final dynamic value) {
    if (value == null) {
      return null;
    }
    else if (value is ModelBase) {
      return jsonEncode(value.serialize());
    }
    else if (value is String) {
      return value;
    }
    else if (value is int) {
      return value.toString();
    }
    else if (value is bool) {
      return value ? 'true' : 'false';
    }
    else if (value is double) {
      return value.toString().replaceFirst(',', '.');
    }
    else {
      throw ApiException(400, 'Unable to serialize ${value.runtimeType}.');
    }
  }

  ApiRequestPart? serializeBody(final dynamic value, final String name) {
    if (value == null) {
      return null;
    }
    else if (value is ModelBase) {
      var json = jsonEncode(value.serialize());
      var data = ByteData.view(utf8.encoder.convert(json).buffer);
      return ApiRequestPart(data, 'application/json', name: name);
    }
    else if (value is ByteData) {
      return ApiRequestPart(value, 'application/octet-stream', name: name);
    }
    else if (value is String) {
      return ApiRequestPart(ByteData.view(utf8.encoder.convert(value).buffer), 'text/plain', name: name);
    }
    else if (value is int) {
      return ApiRequestPart(ByteData.view(utf8.encoder.convert(value.toString()).buffer), 'text/plain', name: name);
    }
    else if (value is bool) {
      return ApiRequestPart(ByteData.view(utf8.encoder.convert(value ? 'true' : 'false').buffer), 'text/plain', name: name);
    }
    else if (value is double) {
      return ApiRequestPart(ByteData.view(utf8.encoder.convert(value.toString().replaceFirst(',', '.')).buffer), 'text/plain', name: name);
    }
    else {
      throw ApiException(400, 'Unable to serialize ${value.runtimeType}.');
    }
  }

  ByteData? serializeBodyParts(final List<ApiRequestPart> bodyParts, Map<String, String> headers) {
    ByteData? body;
    if (bodyParts.length == 1) {
      body = bodyParts.first.data;
      headers['Content-Type'] = bodyParts.first.mimeType;
    } else if (bodyParts.length > 1) {
      var boundary = Uuid().v4();
      body = serializeMultipart(bodyParts, boundary);
      headers['Content-Type'] = 'multipart/form-data; boundary="$boundary"';
    }

    return body;
  }

  ApiRequestPart serializeBatchPart(final ApiRequestData requestData) {
    var data = <Uint8List>[];
    var relativeUrl = requestData.url.substring( (configuration.getApiRootUrl() + '/words/').length );
    data.add(utf8.encoder.convert('${requestData.method} $relativeUrl \r\n'));

    requestData.headers.forEach((key, value) {
      data.add(utf8.encoder.convert('$key: $value\r\n'));
    });

    data.add(utf8.encoder.convert('\r\n'));
    if (requestData.body != null) {
      data.add(requestData.body!.buffer.asUint8List(requestData.body!.offsetInBytes, requestData.body!.lengthInBytes));
    }

    return ApiRequestPart(toByteData(data), 'application/http; msgtype=request');
  }

  ByteData serializeMultipart(final List<ApiRequestPart> bodyParts, String boundary) {
    var needsClrf = false;
    var formBody = <Uint8List>[];
    for (final formParam in bodyParts) {
      if (needsClrf) {
        formBody.add(utf8.encoder.convert('\r\n'));
      }
      needsClrf = true;

      formBody.add(utf8.encoder.convert('--$boundary\r\n'));
      formBody.add(utf8.encoder.convert('Content-Type: ${formParam.mimeType}\r\n'));
      formBody.add(utf8.encoder.convert('Content-Disposition: form-data'));

      if (formParam.name?.isNotEmpty == true) {
        formBody.add(utf8.encoder.convert('; name="${formParam.name!}"'));
      }

      if (formParam.filename?.isNotEmpty == true) {
        formBody.add(utf8.encoder.convert('; filename="${formParam.filename!}"'));
      }

      formBody.add(utf8.encoder.convert('\r\n\r\n'));
      formBody.add(formParam.data.buffer.asUint8List(formParam.data.offsetInBytes, formParam.data.lengthInBytes));
    }
    formBody.add(utf8.encoder.convert('\r\n--$boundary--\r\n'));
    return toByteData(formBody);
  }

  List<ByteData> _deserializeMultipartBase(final ByteData data) {
    if (!data.compare(_starting, offset: 0)) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    var boundaryEndIndex = data.indexOf(_newline);
    if (boundaryEndIndex == null) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    var boundaryBytes = ByteData.sublistView(data, 0, boundaryEndIndex);
    var parts = data.split(boundaryBytes);
    if (parts.length < 2) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    if (!parts.last.compare(_starting, offset: 0)) {
      throw ApiException(400, 'Failed to parse multipart response.');
    }

    parts.removeLast();
    return parts;
  }

  List<ByteData> deserializeMultipartArray(final ByteData data) {
    return _deserializeMultipartBase(data).map((part) {
      var headersEndIndex = part.indexOf(_newline2x);
      if (headersEndIndex != null) {
        return ByteData.sublistView(part, headersEndIndex + _newline2x.lengthInBytes, part.lengthInBytes - _newline.lengthInBytes);
      }

      return ByteData.sublistView(part, _newline.lengthInBytes, part.lengthInBytes - _newline.lengthInBytes);
    }).toList();
  }

  Map<String, ByteData> deserializeMultipartBatch(final ByteData data) {
    var result = <String, ByteData>{};
    for (final part in _deserializeMultipartBase(data)) {
      var headersEndIndex = part.indexOf(_newline2x);
      if (headersEndIndex == null) {
        throw ApiException(400, 'Failed to parse multipart response.');
      }

      var headersData = ByteData.sublistView(part, 0, headersEndIndex);
      var headersStr = utf8.decoder.convert(headersData.buffer.asUint8List(headersData.offsetInBytes, headersData.lengthInBytes));
      var requestIdHeader = headersStr.split('\r\n').firstWhere((x) => x.trim().startsWith('RequestId:'));
      var nameValueParts = requestIdHeader.split(':');
      if (nameValueParts.length != 2) {
        throw ApiException(400, 'Failed to parse multipart response.');
      }

      var requestId = nameValueParts.elementAt(1).trim();
      result[requestId] = ByteData.sublistView(part, headersEndIndex + _newline2x.lengthInBytes, part.lengthInBytes - _newline.lengthInBytes);
    }

    return result;
  }

  Map<String, BodyPartData> deserializeMultipartMap(final ByteData data) {
    var result = <String, BodyPartData>{};
    for (final part in _deserializeMultipartBase(data)) {
      var headersEndIndex = part.indexOf(_newline2x);
      if (headersEndIndex == null) {
        throw ApiException(400, 'Failed to parse multipart response.');
      }

      const contentDispositionStr = 'Content-Disposition:';
      const contentTypeStr = 'Content-Disposition:';
      var headersData = ByteData.sublistView(part, 0, headersEndIndex);
      var headersStr = utf8.decoder.convert(headersData.buffer.asUint8List(headersData.offsetInBytes, headersData.lengthInBytes));
      var headersRaw = headersStr.split('\r\n');
      var contentDisposition = headersRaw.awCollectionSearch((x) => x.trim().startsWith(contentDispositionStr))?.replaceFirst(contentDispositionStr, '').trim();
      if (contentDisposition == null) {
        throw ApiException(400, 'Failed to parse multipart response.');
      }

      var contentType = headersRaw.awCollectionSearch((x) => x.trim().startsWith(contentTypeStr))?.replaceFirst(contentTypeStr, '').trim();
      var nameHeaderPart = contentDisposition.split(';').map((x) => x.trim()).awCollectionSearch((x) => x.toLowerCase().startsWith('name'));
      var filenameHeaderPart = contentDisposition.split(';').map((x) => x.trim()).awCollectionSearch((x) => x.toLowerCase().startsWith('name'));
      var nameValueParts = nameHeaderPart?.split('=');
      var filenameValueParts = filenameHeaderPart?.split('=');
      if (nameValueParts == null || nameValueParts.length != 2) {
        throw ApiException(400, 'Failed to parse multipart response.');
      }

      var nameValue = nameValueParts.elementAt(1).trim().replaceAll('"', '').toLowerCase();
      var filenameValue = filenameValueParts?.elementAt(1).trim().replaceAll('"', '');
      var content = ByteData.sublistView(part, headersEndIndex + _newline2x.lengthInBytes, part.lengthInBytes - _newline.lengthInBytes);
      result[nameValue] = BodyPartData(contentType, filenameValue, content);
    }
    return result;
  }

  Map<String, ByteData> deserializeFilesCollection(final BodyPartData bodyPartData) {
    var result = <String, ByteData>{};
    if (bodyPartData.contentType?.startsWith('multipart/mixed') == true)
    {
      var subParts = deserializeMultipartMap(bodyPartData.content);
      subParts.forEach((key, value) {
        result[value.filename ?? key] = value.content;
      });
    }
    else
    {
      result[bodyPartData.filename ?? ''] = bodyPartData.content;
    }

    return result;
  }

  dynamic deserializeBatchPart(final RequestBase request, final ByteData partData) {
    var statusDataEndIndex = partData.indexOf(_newline);
    if (statusDataEndIndex == null) {
      throw ApiException(400, 'Failed to parse batch response part.');
    }

    var statusData = ByteData.sublistView(partData, 0, statusDataEndIndex);
    var statusStr = utf8.decoder.convert(statusData.buffer.asUint8List(statusData.offsetInBytes, statusData.lengthInBytes));
    var statusStrParts = statusStr.split(' ');
    if (statusStrParts.length < 2) {
      throw ApiException(400, 'Failed to parse batch response part.');
    }

    var statusCode = int.tryParse(statusStrParts[0]);
    if (statusCode == null) {
      throw ApiException(400, 'Failed to parse batch response part.');
    }

    ByteData? body;
    var headersEndIndex = partData.indexOf(_newline2x);
    if (headersEndIndex != null) {
      body = ByteData.sublistView(partData, headersEndIndex + _newline2x.lengthInBytes);
    }

    if (statusCode != 200) {
      String? message;
      if (body != null) {
        message = utf8.decoder.convert(body.buffer.asUint8List(body.offsetInBytes, body.lengthInBytes));
      }
      return ApiException(statusCode, message ?? statusStr);
    }

    return request.deserializeResponse(this, {}, body);
  }

  ByteData toByteData(final List<Uint8List> bufferStream) {
    var wholeSize = 0;
    var fillIndex = 0;
    bufferStream.forEach((element) => wholeSize += element.buffer.lengthInBytes);
    var fullBuffer = Uint8List(wholeSize);
    bufferStream.forEach((element) {
      fullBuffer.setAll(fillIndex, element);
      fillIndex += element.lengthInBytes;
    });

    return ByteData.view(fullBuffer.buffer);
  }

  Future<dynamic> call(final RequestBase request) async {
    var requestData = await request.createRequestData(this);
    var response = await _callWithChecks(requestData);
    return request.deserializeResponse(this, response.headers, response.content);
  }

  Future< List< ByteData > > callJobResult(final String jobId) async {
    var _queryParams = <String, String>{'id': jobId};
    var _url = configuration.getApiRootUrl() + applyQueryParams('/words/job', _queryParams).replaceAll('//', '/');
    var _headers = <String, String>{};
    var _requestData = ApiRequestData('GET', _url, _headers, null, null, null);
    var _response = await _callWithChecks(_requestData);
    return deserializeMultipartArray(_response.content);
  }

  Future< List<dynamic> > callBatch(final List<BatchRequest> requests, final bool displayIntermediateResults) async {
    var bodyParts = <ApiRequestPart>[];
    for (final request in requests) {
      bodyParts.add(serializeBatchPart(await request.createRequestData(this)));
    }
    var boundary = Uuid().v4();
    var batchUrl = '${configuration.getApiRootUrl()}/words/batch?displayIntermediateResults=$displayIntermediateResults';
    var batchHeaders = <String, String>{};
    var batchBody = serializeMultipart(bodyParts, boundary);
    batchHeaders['Content-Type'] = 'multipart/form-data; boundary="$boundary"';

    var batchRequestData = ApiRequestData('PUT', batchUrl, batchHeaders, batchBody, null, null);
    var response = await _callWithChecks(batchRequestData);
    var responseParts = deserializeMultipartBatch(response.content);
    var result = <dynamic>[];
    responseParts.forEach((key, value) {
      var request = requests.awCollectionSearch((element) => element.getRequestId() == key);
      if (request == null) {
        throw ApiException(400, 'Failed to deserialize batch multipart response.');
      }

      result.add(deserializeBatchPart(request.getRequest(), value));
    });

    return result;
  }

  Future<ApiResponseData> _callWithChecks(final ApiRequestData requestData) async {
    try {
      return await _callInternal(requestData);
    }
    on ApiException catch(ex) {
      if (ex.statusCode == 401) {
        await _updateAuthToken();
        return await _callInternal(requestData);
      } else {
        rethrow;
      }
    }
  }

  Future<ApiResponseData> _callInternal(final ApiRequestData requestData) async {
    if (configuration.debugMode == true) {
      var debugMessage = 'CALL BEGIN: ${requestData.method} ${requestData.url}\r\n';
      if (requestData.headers.isNotEmpty == true) {
        debugMessage += 'REQUEST HEADERS:\r\n';
        requestData.headers.forEach((key, value) => debugMessage += '\t$key: $value\r\n');
      }
      if (requestData.body != null) {
        debugMessage += 'REQUEST BODY:\r\n';
        debugMessage += _stringifyBody(requestData.body!) + '\r\n';
      }
      print(debugMessage);
    }

    http.BaseRequest httpRequest;
    if (requestData.sendDataProgressCallback != null && requestData.body != null) {
      final streamRequest = httpRequest = http.StreamedRequest(requestData.method, Uri.parse(requestData.url));
      streamRequest.sink.addStream(_streamedByteData(requestData.body!, requestData.sendDataProgressCallback!)).then((_) {
        streamRequest.sink.close();
      });
    }
    else {
      final bodyRequest = httpRequest = http.Request(requestData.method, Uri.parse(requestData.url));
      if (requestData.body != null) {
        bodyRequest.bodyBytes = requestData.body!.buffer.asUint8List(
            requestData.body!.offsetInBytes, requestData.body!.lengthInBytes);
      }
    }

    httpRequest.headers['x-aspose-client'] = 'dart sdk';
    httpRequest.headers['x-aspose-client-version'] = '26.3';
    httpRequest.headers['Authorization'] = await _getAuthToken();
    httpRequest.headers.addAll(requestData.headers);

    var response = await httpRequest.send().timeout(configuration.timeout);
    ByteData responseData;
    if (requestData.receiveDataProgressCallback != null) {
      var responseReceivedBytes = 0;
      final responseTotalBytes = response.contentLength ?? 0;
      final bytes = BytesBuilder();
      await for (final chunkValue in response.stream) {
        final chunk = Uint8List.fromList(chunkValue);
        bytes.write(chunk, chunk.offsetInBytes, chunk.lengthInBytes);
        responseReceivedBytes += chunk.lengthInBytes;
        requestData.receiveDataProgressCallback!(responseReceivedBytes, responseTotalBytes);
      }

      final totalBytes = bytes.takeBytes();
      responseData = ByteData.view(totalBytes.buffer, totalBytes.offsetInBytes, totalBytes.lengthInBytes);
    }
    else {
      final bytes = await response.stream.toBytes();
      responseData = ByteData.view(bytes.buffer, bytes.offsetInBytes, bytes.lengthInBytes);
    }

    if (configuration.debugMode == true) {
      var debugMessage = 'RESPONSE STATUS: ${response.statusCode} ${response.reasonPhrase}\r\n';
      if (response.headers.isNotEmpty == true) {
        debugMessage += 'RESPONSE HEADERS:\r\n';
        response.headers.forEach((key, value) => debugMessage += '\t$key: $value\r\n');
      }
      if (responseData.lengthInBytes > 0) {
        debugMessage += 'RESPONSE BODY:\r\n';
        debugMessage += _stringifyBody(responseData) + '\r\n';
      }
      debugMessage += 'CALL END: ${requestData.method} ${requestData.url}\r\n';
      print(debugMessage);
    }

    _handleResponse(response.statusCode, response.reasonPhrase ?? "", responseData);
    return ApiResponseData(response.headers, responseData);
  }

  Stream<Uint8List> _streamedByteData(ByteData buffer, final SendDataProgressCallback sendDataProgressCallback) async* {
    final maxChunkSize = 1024 * 64;
    final streamTotal = buffer.lengthInBytes;
    for (int i = 0; i < streamTotal; i += maxChunkSize) {
      final chunkProgress = i;
      final chunkOffset = buffer.offsetInBytes + i;
      final chunkSize = min(maxChunkSize, streamTotal - i);
      sendDataProgressCallback(chunkProgress + chunkSize, streamTotal);
      yield buffer.buffer.asUint8List(chunkOffset, chunkSize);
    }
  }
}

extension IterableExtension<T> on Iterable<T> {
  T? awCollectionSearch(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}