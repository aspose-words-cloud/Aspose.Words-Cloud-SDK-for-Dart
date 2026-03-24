/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="move_folder_request.dart">
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

import 'dart:typed_data';
import '../../aspose_words_cloud.dart';
import '../api_client.dart';
import '../api_request_data.dart';
import '../api_request_part.dart';

/// Request model for MoveFolder operation.
class MoveFolderRequest implements RequestBase {
  /// Destination folder path to move to e.g '/dst'.
  final String? destPath;

  /// Source folder path e.g. /Folder1.
  final String? srcPath;

  /// Source storage name.
  final String? srcStorageName;

  /// Destination storage name.
  final String? destStorageName;

  /// Request send data progress callback
  final SendDataProgressCallback? sendDataProgressCallback;

  /// Response receive data progress callback
  final ReceiveDataProgressCallback? receiveDataProgressCallback;

  MoveFolderRequest(this.destPath, this.srcPath, {this.srcStorageName, this.destStorageName, this.sendDataProgressCallback, this.receiveDataProgressCallback});

  @override
  RequestBase getOriginalRequest() {
    return this;
  }

  @override
  Future<ApiRequestData> createRequestData(final ApiClient _apiClient) async {
    var _path = '/words/storage/folder/move/{srcPath}';
    var _queryParams = <String, String>{};
    var _headers = <String, String>{};
    var _bodyParts = <ApiRequestPart>[];
    var _fileContentParts = <FileReference>[];
    if (srcPath == null) {
      throw ApiException(400, 'Parameter srcPath is required.');
    }
    _path = _path.replaceAll('{srcPath}', _apiClient.serializeToString(srcPath) ?? "");
    if (destPath != null) {
      _queryParams['destPath'] = _apiClient.serializeToString(destPath) ?? "";
    }
    else {
      throw ApiException(400, 'Parameter destPath is required.');
    }

    if (srcStorageName != null) {
      _queryParams['srcStorageName'] = _apiClient.serializeToString(srcStorageName) ?? "";
    }

    if (destStorageName != null) {
      _queryParams['destStorageName'] = _apiClient.serializeToString(destStorageName) ?? "";
    }

    for (final _fileContentPart in _fileContentParts) {
        _fileContentPart.encryptPassword(_apiClient);
        if (_fileContentPart.source == 'Request') {
            _bodyParts.add(ApiRequestPart(_fileContentPart.content!, 'application/octet-stream', name: _fileContentPart.reference));
        }
    }
    var _url = _apiClient.configuration.getApiRootUrl() + _apiClient.applyQueryParams(_path, _queryParams).replaceAll('//', '/');
    var _body = _apiClient.serializeBodyParts(_bodyParts, _headers);
    return ApiRequestData('PUT', _url, _headers, _body, this.sendDataProgressCallback, this.receiveDataProgressCallback);
  }

  @override
  dynamic deserializeResponse(final ApiClient _apiClient, final Map<String, String> _headers, final ByteData? _body) {
    return null;
  }
}