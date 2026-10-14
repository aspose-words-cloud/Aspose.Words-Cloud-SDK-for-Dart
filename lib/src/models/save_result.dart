/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_result.dart">
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

/// Result of saving.
class SaveResult implements ModelBase {
  /// Gets or sets the link to destination document.
  FileLink? _destDocument;

  FileLink? get destDocument => _destDocument;
  set destDocument(FileLink? val) => _destDocument = val;


  /// Gets or sets the link to source document.
  FileLink? _sourceDocument;

  FileLink? get sourceDocument => _sourceDocument;
  set sourceDocument(FileLink? val) => _sourceDocument = val;


  /// Gets or sets the list of links to additional items (css, images etc).
  List<FileLink?>? _additionalItems;

  List<FileLink?>? get additionalItems => _additionalItems;
  set additionalItems(List<FileLink?>? val) => _additionalItems = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SaveResult data model.');
    }

    if (json.containsKey('DestDocument')) {
      destDocument = ModelBase.createInstance< FileLink >(json['DestDocument'] as Map<String, dynamic>);
    } else {
      destDocument = null;
    }

    if (json.containsKey('SourceDocument')) {
      sourceDocument = ModelBase.createInstance< FileLink >(json['SourceDocument'] as Map<String, dynamic>);
    } else {
      sourceDocument = null;
    }

    if (json.containsKey('AdditionalItems')) {
      // Array processing
      additionalItems = <FileLink>[];
      for(final _element in json['AdditionalItems']) {
        additionalItems!.add(ModelBase.createInstance< FileLink >(_element as Map<String, dynamic>));
      }
    } else {
      additionalItems = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (destDocument != null) {
      _result['DestDocument'] = destDocument!.serialize();
    }

    if (sourceDocument != null) {
      _result['SourceDocument'] = sourceDocument!.serialize();
    }

    if (additionalItems != null) {
      _result['AdditionalItems'] = additionalItems!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    destDocument?.validate();



    sourceDocument?.validate();



    for (final elementAdditionalItems in additionalItems ?? [])
    {
        elementAdditionalItems?.validate();
    }

  }
}


