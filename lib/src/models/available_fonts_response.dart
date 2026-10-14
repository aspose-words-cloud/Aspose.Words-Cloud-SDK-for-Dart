/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="available_fonts_response.dart">
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

/// The REST response with data on system, additional and custom fonts, available for document processing.
class AvailableFontsResponse extends WordsResponse {
  /// Gets or sets the list of additional fonts, provided by Aspose team.
  List<FontInfo?>? _additionalFonts;

  List<FontInfo?>? get additionalFonts => _additionalFonts;
  set additionalFonts(List<FontInfo?>? val) => _additionalFonts = val;


  /// Gets or sets the list of custom user fonts from user cloud storage. To use them, you should specify "fontsLocation" parameter in any request.
  List<FontInfo?>? _customFonts;

  List<FontInfo?>? get customFonts => _customFonts;
  set customFonts(List<FontInfo?>? val) => _customFonts = val;


  /// Gets or sets the list of system fonts, available on the server.
  List<FontInfo?>? _systemFonts;

  List<FontInfo?>? get systemFonts => _systemFonts;
  set systemFonts(List<FontInfo?>? val) => _systemFonts = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize AvailableFontsResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }

    if (json.containsKey('AdditionalFonts')) {
      // Array processing
      additionalFonts = <FontInfo>[];
      for(final _element in json['AdditionalFonts']) {
        additionalFonts!.add(ModelBase.createInstance< FontInfo >(_element as Map<String, dynamic>));
      }
    } else {
      additionalFonts = null;
    }

    if (json.containsKey('CustomFonts')) {
      // Array processing
      customFonts = <FontInfo>[];
      for(final _element in json['CustomFonts']) {
        customFonts!.add(ModelBase.createInstance< FontInfo >(_element as Map<String, dynamic>));
      }
    } else {
      customFonts = null;
    }

    if (json.containsKey('SystemFonts')) {
      // Array processing
      systemFonts = <FontInfo>[];
      for(final _element in json['SystemFonts']) {
        systemFonts!.add(ModelBase.createInstance< FontInfo >(_element as Map<String, dynamic>));
      }
    } else {
      systemFonts = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (additionalFonts != null) {
      _result['AdditionalFonts'] = additionalFonts!.map((_element) => _element?.serialize()).toList();
    }

    if (customFonts != null) {
      _result['CustomFonts'] = customFonts!.map((_element) => _element?.serialize()).toList();
    }

    if (systemFonts != null) {
      _result['SystemFonts'] = systemFonts!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    for (final elementAdditionalFonts in additionalFonts ?? [])
    {
        elementAdditionalFonts?.validate();
    }



    for (final elementCustomFonts in customFonts ?? [])
    {
        elementCustomFonts?.validate();
    }



    for (final elementSystemFonts in systemFonts ?? [])
    {
        elementSystemFonts?.validate();
    }

  }
}


