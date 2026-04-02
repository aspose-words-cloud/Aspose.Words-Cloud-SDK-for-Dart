/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="job_info.dart">
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

import '../../aspose_words_cloud.dart';

/// The REST response with a job result.
class JobInfo implements ModelBase {
  /// Gets or sets the job id.
  String? _jobId;

  String? get jobId => _jobId;
  set jobId(String? val) => _jobId = val;


  /// Gets or sets the job message.
  String? _message;

  String? get message => _message;
  set message(String? val) => _message = val;


  /// Gets or sets the job status.
  JobInfo_StatusEnum? _status;

  JobInfo_StatusEnum? get status => _status;
  set status(JobInfo_StatusEnum? val) => _status = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize JobInfo data model.');
    }

    if (json.containsKey('JobId')) {
      jobId = json['JobId'] as String;
    } else {
      jobId = null;
    }

    if (json.containsKey('Message')) {
      message = json['Message'] as String;
    } else {
      message = null;
    }

    if (json.containsKey('Status')) {
      switch (json['Status'] as String) {
        case 'Unknown': status = JobInfo_StatusEnum.unknown; break;
        case 'Queued': status = JobInfo_StatusEnum.queued; break;
        case 'Processing': status = JobInfo_StatusEnum.processing; break;
        case 'Succeded': status = JobInfo_StatusEnum.succeded; break;
        case 'Failed': status = JobInfo_StatusEnum.failed; break;
        default: status = null; break;
      }
    } else {
      status = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (jobId != null) {
      _result['JobId'] = jobId!;
    }

    if (message != null) {
      _result['Message'] = message!;
    }

    if (status != null) {
      switch (status!) {
        case JobInfo_StatusEnum.unknown: _result['Status'] = 'Unknown'; break;
        case JobInfo_StatusEnum.queued: _result['Status'] = 'Queued'; break;
        case JobInfo_StatusEnum.processing: _result['Status'] = 'Processing'; break;
        case JobInfo_StatusEnum.succeded: _result['Status'] = 'Succeded'; break;
        case JobInfo_StatusEnum.failed: _result['Status'] = 'Failed'; break;
        default: break;
      }
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (status == null)
    {
        throw new ApiException(400, 'Property Status in JobInfo is required.');
    }
  }
}

/// Gets or sets the job status.
enum JobInfo_StatusEnum
{ 
  unknown,
  queued,
  processing,
  succeded,
  failed
}

