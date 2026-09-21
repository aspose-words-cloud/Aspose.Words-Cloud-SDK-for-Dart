/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_position.dart">
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

/// DTO container with a position in the document tree.
class DocumentPosition implements ModelBase {
  /// Gets or sets the link to a node.
  NodeLink? _node;

  NodeLink? get node => _node;
  set node(NodeLink? val) => _node = val;


  /// Gets or sets the offset in the node.
  int? _offset;

  int? get offset => _offset;
  set offset(int? val) => _offset = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocumentPosition data model.');
    }

    if (json.containsKey('Node')) {
      node = ModelBase.createInstance< NodeLink >(json['Node'] as Map<String, dynamic>);
    } else {
      node = null;
    }

    if (json.containsKey('Offset')) {
      offset = json['Offset'] as int;
    } else {
      offset = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (node != null) {
      _result['Node'] = node!.serialize();
    }

    if (offset != null) {
      _result['Offset'] = offset!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    node?.validate();


  }
}


