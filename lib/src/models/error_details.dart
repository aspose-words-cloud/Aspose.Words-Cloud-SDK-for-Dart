/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="error_details.dart">
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

/// The error details.
class ErrorDetails implements ModelBase {
  /// Gets or sets ErrorDateTime.
  DateTime? _errorDateTime;

  DateTime? get errorDateTime => _errorDateTime;
  set errorDateTime(DateTime? val) => _errorDateTime = val;


  /// Gets or sets RequestId.
  String? _requestId;

  String? get requestId => _requestId;
  set requestId(String? val) => _requestId = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ErrorDetails data model.');
    }

    if (json.containsKey('ErrorDateTime')) {
      errorDateTime = DateTime.parse(json['ErrorDateTime'] as String);
    } else {
      errorDateTime = null;
    }

    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (errorDateTime != null) {
      _result['ErrorDateTime'] = errorDateTime!.toIso8601String();
    }

    if (requestId != null) {
      _result['RequestId'] = requestId!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (errorDateTime == null)
    {
        throw new ApiException(400, 'Property ErrorDateTime in ErrorDetails is required.');
    }
  }
}


