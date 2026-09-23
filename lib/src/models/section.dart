/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="section.dart">
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

/// DTO container with a section element.
class Section extends LinkElement {
  /// Gets or sets the list of child nodes.
  List<NodeLink?>? _childNodes;

  List<NodeLink?>? get childNodes => _childNodes;
  set childNodes(List<NodeLink?>? val) => _childNodes = val;


  /// Gets or sets the link to Paragraphs resource.
  LinkElement? _paragraphs;

  LinkElement? get paragraphs => _paragraphs;
  set paragraphs(LinkElement? val) => _paragraphs = val;


  /// Gets or sets the link to PageSetup resource.
  LinkElement? _pageSetup;

  LinkElement? get pageSetup => _pageSetup;
  set pageSetup(LinkElement? val) => _pageSetup = val;


  /// Gets or sets the link to HeaderFooters resource.
  LinkElement? _headerFooters;

  LinkElement? get headerFooters => _headerFooters;
  set headerFooters(LinkElement? val) => _headerFooters = val;


  /// Gets or sets the link to Tables resource.
  LinkElement? _tables;

  LinkElement? get tables => _tables;
  set tables(LinkElement? val) => _tables = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Section data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('ChildNodes')) {
      // Array processing
      childNodes = <NodeLink>[];
      for(final _element in json['ChildNodes']) {
        childNodes!.add(ModelBase.createInstance< NodeLink >(_element as Map<String, dynamic>));
      }
    } else {
      childNodes = null;
    }

    if (json.containsKey('Paragraphs')) {
      paragraphs = ModelBase.createInstance< LinkElement >(json['Paragraphs'] as Map<String, dynamic>);
    } else {
      paragraphs = null;
    }

    if (json.containsKey('PageSetup')) {
      pageSetup = ModelBase.createInstance< LinkElement >(json['PageSetup'] as Map<String, dynamic>);
    } else {
      pageSetup = null;
    }

    if (json.containsKey('HeaderFooters')) {
      headerFooters = ModelBase.createInstance< LinkElement >(json['HeaderFooters'] as Map<String, dynamic>);
    } else {
      headerFooters = null;
    }

    if (json.containsKey('Tables')) {
      tables = ModelBase.createInstance< LinkElement >(json['Tables'] as Map<String, dynamic>);
    } else {
      tables = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (childNodes != null) {
      _result['ChildNodes'] = childNodes!.map((_element) => _element?.serialize()).toList();
    }

    if (paragraphs != null) {
      _result['Paragraphs'] = paragraphs!.serialize();
    }

    if (pageSetup != null) {
      _result['PageSetup'] = pageSetup!.serialize();
    }

    if (headerFooters != null) {
      _result['HeaderFooters'] = headerFooters!.serialize();
    }

    if (tables != null) {
      _result['Tables'] = tables!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    for (final elementChildNodes in childNodes ?? [])
    {
        elementChildNodes?.validate();
    }



    paragraphs?.validate();



    pageSetup?.validate();



    headerFooters?.validate();



    tables?.validate();

  }
}


