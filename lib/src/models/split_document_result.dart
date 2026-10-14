/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="split_document_result.dart">
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

/// Result of splitting document.
class SplitDocumentResult implements ModelBase {
  /// Gets or sets the link to the source document.
  FileLink? _sourceDocument;

  FileLink? get sourceDocument => _sourceDocument;
  set sourceDocument(FileLink? val) => _sourceDocument = val;


  /// Gets or sets the link to the file archive with pages.
  FileLink? _zippedPages;

  FileLink? get zippedPages => _zippedPages;
  set zippedPages(FileLink? val) => _zippedPages = val;


  /// Gets or sets the list of pages.
  List<FileLink?>? _pages;

  List<FileLink?>? get pages => _pages;
  set pages(List<FileLink?>? val) => _pages = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SplitDocumentResult data model.');
    }

    if (json.containsKey('SourceDocument')) {
      sourceDocument = ModelBase.createInstance< FileLink >(json['SourceDocument'] as Map<String, dynamic>);
    } else {
      sourceDocument = null;
    }

    if (json.containsKey('ZippedPages')) {
      zippedPages = ModelBase.createInstance< FileLink >(json['ZippedPages'] as Map<String, dynamic>);
    } else {
      zippedPages = null;
    }

    if (json.containsKey('Pages')) {
      // Array processing
      pages = <FileLink>[];
      for(final _element in json['Pages']) {
        pages!.add(ModelBase.createInstance< FileLink >(_element as Map<String, dynamic>));
      }
    } else {
      pages = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (sourceDocument != null) {
      _result['SourceDocument'] = sourceDocument!.serialize();
    }

    if (zippedPages != null) {
      _result['ZippedPages'] = zippedPages!.serialize();
    }

    if (pages != null) {
      _result['Pages'] = pages!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    sourceDocument?.validate();



    zippedPages?.validate();



    for (final elementPages in pages ?? [])
    {
        elementPages?.validate();
    }

  }
}


