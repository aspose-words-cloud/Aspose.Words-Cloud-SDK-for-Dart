/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="job_handler.dart">
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

import './api_exception.dart';
import './api_client.dart';
import './requests/request_base.dart';
import './models/job_info.dart';

class JobHandler<T> {
  final ApiClient _apiClient;
  final RequestBase _request;
  JobInfo _info;
  T? _result;

  String get message => _info.message ?? '';
  JobInfo_StatusEnum get status => _info.status ?? JobInfo_StatusEnum.unknown;
  T? get result => _result;

  JobHandler(this._apiClient, this._request, this._info);

  Future update() async {
    if (_info.jobId == null) {
      throw ApiException(400, 'Invalid job id.');
    }

    var parts = await _apiClient.callJobResult(_info.jobId!);
    if (parts.length >= 1) {
      var newinfo = JobInfo();
      var json = jsonDecode(utf8.decode(parts[0].buffer.asUint8List(parts[0].offsetInBytes, parts[0].lengthInBytes)));
      newinfo.deserialize(json as Map<String, dynamic>);
      _info = newinfo;

      if (parts.length == 2 && newinfo.status == JobInfo_StatusEnum.succeded) {
        _result = _apiClient.deserializeHttpResponsePart(_request, parts[1]) as T;
      }
    }
  }

  Future< T > waitResult(final Duration updateInterval) async {
    while (status == JobInfo_StatusEnum.queued || status == JobInfo_StatusEnum.processing) {
      await Future.delayed(updateInterval);
      await update();
    }

    if (status != JobInfo_StatusEnum.succeded) {
      throw ApiException(400, 'Job failed with status "${status}" - "${message}".');
    }

    return result!;
  }
}