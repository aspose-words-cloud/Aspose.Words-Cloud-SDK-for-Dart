/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="files_upload_result.dart">
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

/// File upload result.
class FilesUploadResult implements ModelBase {
  /// List of errors.
  List<Error?>? _errors;

  List<Error?>? get errors => _errors;
  set errors(List<Error?>? val) => _errors = val;


  /// List of uploaded file names.
  List<String?>? _uploaded;

  List<String?>? get uploaded => _uploaded;
  set uploaded(List<String?>? val) => _uploaded = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FilesUploadResult data model.');
    }

    if (json.containsKey('Errors')) {
      // Array processing
      errors = <Error>[];
      for(final _element in json['Errors']) {
        errors!.add(ModelBase.createInstance< Error >(_element as Map<String, dynamic>));
      }
    } else {
      errors = null;
    }

    if (json.containsKey('Uploaded')) {
      // Array processing
      uploaded = <String>[];
      for(final _element in json['Uploaded']) {
        uploaded!.add(_element as String);
      }
    } else {
      uploaded = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (errors != null) {
      _result['Errors'] = errors!.map((_element) => _element?.serialize()).toList();
    }

    if (uploaded != null) {
      _result['Uploaded'] = uploaded!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    for (final elementErrors in errors ?? [])
    {
        elementErrors?.validate();
    }


  }
}


