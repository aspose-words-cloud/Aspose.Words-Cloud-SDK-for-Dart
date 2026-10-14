/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="load_web_document_data.dart">
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

/// Contains data for load web document.
class LoadWebDocumentData implements ModelBase {
  /// Gets or sets the save options.
  SaveOptionsData? _saveOptions;

  SaveOptionsData? get saveOptions => _saveOptions;
  set saveOptions(SaveOptionsData? val) => _saveOptions = val;


  /// Gets or sets the web document URL.
  String? _loadingDocumentUrl;

  String? get loadingDocumentUrl => _loadingDocumentUrl;
  set loadingDocumentUrl(String? val) => _loadingDocumentUrl = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize LoadWebDocumentData data model.');
    }

    if (json.containsKey('SaveOptions')) {
      saveOptions = ModelBase.createInstance< SaveOptionsData >(json['SaveOptions'] as Map<String, dynamic>);
    } else {
      saveOptions = null;
    }

    if (json.containsKey('LoadingDocumentUrl')) {
      loadingDocumentUrl = json['LoadingDocumentUrl'] as String;
    } else {
      loadingDocumentUrl = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (saveOptions != null) {
      _result['SaveOptions'] = saveOptions!.serialize();
    }

    if (loadingDocumentUrl != null) {
      _result['LoadingDocumentUrl'] = loadingDocumentUrl!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (loadingDocumentUrl == null)
    {
        throw new ApiException(400, 'Property LoadingDocumentUrl in LoadWebDocumentData is required.');
    }

    saveOptions?.validate();


  }
}


