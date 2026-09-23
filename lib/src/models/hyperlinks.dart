/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="hyperlinks.dart">
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

/// Collection of Hyperlink.
class Hyperlinks extends LinkElement {
  /// Gets or sets the array of Hyperlink.
  List<Hyperlink?>? _hyperlinkList;

  List<Hyperlink?>? get hyperlinkList => _hyperlinkList;
  set hyperlinkList(List<Hyperlink?>? val) => _hyperlinkList = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Hyperlinks data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('HyperlinkList')) {
      // Array processing
      hyperlinkList = <Hyperlink>[];
      for(final _element in json['HyperlinkList']) {
        hyperlinkList!.add(ModelBase.createInstance< Hyperlink >(_element as Map<String, dynamic>));
      }
    } else {
      hyperlinkList = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (hyperlinkList != null) {
      _result['HyperlinkList'] = hyperlinkList!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    for (final elementHyperlinkList in hyperlinkList ?? [])
    {
        elementHyperlinkList?.validate();
    }

  }
}


