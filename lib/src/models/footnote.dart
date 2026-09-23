/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnote.dart">
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

/// DTO container with a footnote.
class Footnote extends FootnoteLink {
  /// Gets or sets the link to comment range start node.
  DocumentPosition? _position;

  DocumentPosition? get position => _position;
  set position(DocumentPosition? val) => _position = val;


  /// Gets or sets the value, that specifies whether this is a footnote or endnote.
  Footnote_FootnoteTypeEnum? _footnoteType;

  Footnote_FootnoteTypeEnum? get footnoteType => _footnoteType;
  set footnoteType(Footnote_FootnoteTypeEnum? val) => _footnoteType = val;


  /// Gets or sets the custom reference mark to be used for this footnote.
  /// The default value is Empty, meaning auto-numbered footnotes are used.
  /// RTF-format can only store 1 symbol as custom reference mark, so upon export only the first symbol will be written others will be discard.
  String? _referenceMark;

  String? get referenceMark => _referenceMark;
  set referenceMark(String? val) => _referenceMark = val;


  /// Gets or sets text of the footnote.
  /// This method allows to quickly set text of a footnote from a string. The string can contain paragraph breaks, this will create paragraphs of text in the footnote accordingly.
  String? _text;

  String? get text => _text;
  set text(String? val) => _text = val;


  /// Gets or sets the content of the footnote.
  StoryChildNodes? _content;

  StoryChildNodes? get content => _content;
  set content(StoryChildNodes? val) => _content = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Footnote data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('NodeId')) {
      nodeId = json['NodeId'] as String;
    } else {
      nodeId = null;
    }

    if (json.containsKey('Position')) {
      position = ModelBase.createInstance< DocumentPosition >(json['Position'] as Map<String, dynamic>);
    } else {
      position = null;
    }

    if (json.containsKey('FootnoteType')) {
      switch (json['FootnoteType'] as String) {
        case 'Footnote': footnoteType = Footnote_FootnoteTypeEnum.footnote; break;
        case 'Endnote': footnoteType = Footnote_FootnoteTypeEnum.endnote; break;
        default: footnoteType = null; break;
      }
    } else {
      footnoteType = null;
    }

    if (json.containsKey('ReferenceMark')) {
      referenceMark = json['ReferenceMark'] as String;
    } else {
      referenceMark = null;
    }

    if (json.containsKey('Text')) {
      text = json['Text'] as String;
    } else {
      text = null;
    }

    if (json.containsKey('Content')) {
      content = ModelBase.createInstance< StoryChildNodes >(json['Content'] as Map<String, dynamic>);
    } else {
      content = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (position != null) {
      _result['Position'] = position!.serialize();
    }

    if (footnoteType != null) {
      switch (footnoteType!) {
        case Footnote_FootnoteTypeEnum.footnote: _result['FootnoteType'] = 'Footnote'; break;
        case Footnote_FootnoteTypeEnum.endnote: _result['FootnoteType'] = 'Endnote'; break;
        default: break;
      }
    }

    if (referenceMark != null) {
      _result['ReferenceMark'] = referenceMark!;
    }

    if (text != null) {
      _result['Text'] = text!;
    }

    if (content != null) {
      _result['Content'] = content!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    position?.validate();






    content?.validate();

  }
}

/// Gets or sets the value, that specifies whether this is a footnote or endnote.
enum Footnote_FootnoteTypeEnum
{ 
  footnote,
  endnote
}

