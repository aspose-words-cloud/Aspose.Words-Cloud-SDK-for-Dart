/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="replace_range.dart">
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

/// DTO container with a range element.
class ReplaceRange implements ModelBase {
  /// Gets or sets the range's text.
  String? _text;

  String? get text => _text;
  set text(String? val) => _text = val;


  /// Gets or sets the range's text type.
  ReplaceRange_TextTypeEnum? _textType;

  ReplaceRange_TextTypeEnum? get textType => _textType;
  set textType(ReplaceRange_TextTypeEnum? val) => _textType = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ReplaceRange data model.');
    }

    if (json.containsKey('Text')) {
      text = json['Text'] as String;
    } else {
      text = null;
    }

    if (json.containsKey('TextType')) {
      switch (json['TextType'] as String) {
        case 'Text': textType = ReplaceRange_TextTypeEnum.text; break;
        case 'Html': textType = ReplaceRange_TextTypeEnum.html; break;
        default: textType = null; break;
      }
    } else {
      textType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (text != null) {
      _result['Text'] = text!;
    }

    if (textType != null) {
      switch (textType!) {
        case ReplaceRange_TextTypeEnum.text: _result['TextType'] = 'Text'; break;
        case ReplaceRange_TextTypeEnum.html: _result['TextType'] = 'Html'; break;
        default: break;
      }
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (text == null)
    {
        throw new ApiException(400, 'Property Text in ReplaceRange is required.');
    }
  }
}

/// Gets or sets the range's text type.
enum ReplaceRange_TextTypeEnum
{ 
  text,
  html
}

