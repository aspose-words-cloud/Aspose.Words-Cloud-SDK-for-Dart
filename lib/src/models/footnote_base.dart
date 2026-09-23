/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnote_base.dart">
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

/// Footnote base class.
abstract class FootnoteBase implements ModelBase {
  /// Gets or sets the link to range start node.
  Position? _position;

  Position? get position => _position;
  set position(Position? val) => _position = val;


  /// Gets or sets the option, that specifies whether this is a footnote or endnote.
  FootnoteBase_FootnoteTypeEnum? _footnoteType;

  FootnoteBase_FootnoteTypeEnum? get footnoteType => _footnoteType;
  set footnoteType(FootnoteBase_FootnoteTypeEnum? val) => _footnoteType = val;


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


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FootnoteBase data model.');
    }

    if (json.containsKey('Position')) {
      position = ModelBase.createInstance< Position >(json['Position'] as Map<String, dynamic>);
    } else {
      position = null;
    }

    if (json.containsKey('FootnoteType')) {
      switch (json['FootnoteType'] as String) {
        case 'Footnote': footnoteType = FootnoteBase_FootnoteTypeEnum.footnote; break;
        case 'Endnote': footnoteType = FootnoteBase_FootnoteTypeEnum.endnote; break;
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
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (position != null) {
      _result['Position'] = position!.serialize();
    }

    if (footnoteType != null) {
      switch (footnoteType!) {
        case FootnoteBase_FootnoteTypeEnum.footnote: _result['FootnoteType'] = 'Footnote'; break;
        case FootnoteBase_FootnoteTypeEnum.endnote: _result['FootnoteType'] = 'Endnote'; break;
        default: break;
      }
    }

    if (referenceMark != null) {
      _result['ReferenceMark'] = referenceMark!;
    }

    if (text != null) {
      _result['Text'] = text!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    position?.validate();




  }
}

/// Gets or sets the option, that specifies whether this is a footnote or endnote.
enum FootnoteBase_FootnoteTypeEnum
{ 
  footnote,
  endnote
}

