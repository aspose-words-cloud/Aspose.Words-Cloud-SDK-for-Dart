/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_link_collection.dart">
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

/// The collection of table's links.
class TableLinkCollection extends LinkElement {
  /// Gets or sets the collection of table's links.
  List<TableLink?>? _tableLinkList;

  List<TableLink?>? get tableLinkList => _tableLinkList;
  set tableLinkList(List<TableLink?>? val) => _tableLinkList = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableLinkCollection data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('TableLinkList')) {
      // Array processing
      tableLinkList = <TableLink>[];
      for(final _element in json['TableLinkList']) {
        tableLinkList!.add(ModelBase.createInstance< TableLink >(_element as Map<String, dynamic>));
      }
    } else {
      tableLinkList = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (tableLinkList != null) {
      _result['TableLinkList'] = tableLinkList!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    for (final elementTableLinkList in tableLinkList ?? [])
    {
        elementTableLinkList?.validate();
    }

  }
}


