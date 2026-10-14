/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="font_info.dart">
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

/// DTO container with font info.
class FontInfo implements ModelBase {
  /// Gets or sets the path to the font file if any.
  String? _filePath;

  String? get filePath => _filePath;
  set filePath(String? val) => _filePath = val;


  /// Gets or sets the family name of the font.
  String? _fontFamilyName;

  String? get fontFamilyName => _fontFamilyName;
  set fontFamilyName(String? val) => _fontFamilyName = val;


  /// Gets or sets the full name of the font.
  String? _fullFontName;

  String? get fullFontName => _fullFontName;
  set fullFontName(String? val) => _fullFontName = val;


  /// Gets or sets the version string of the font.
  String? _version;

  String? get version => _version;
  set version(String? val) => _version = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FontInfo data model.');
    }

    if (json.containsKey('FilePath')) {
      filePath = json['FilePath'] as String;
    } else {
      filePath = null;
    }

    if (json.containsKey('FontFamilyName')) {
      fontFamilyName = json['FontFamilyName'] as String;
    } else {
      fontFamilyName = null;
    }

    if (json.containsKey('FullFontName')) {
      fullFontName = json['FullFontName'] as String;
    } else {
      fullFontName = null;
    }

    if (json.containsKey('Version')) {
      version = json['Version'] as String;
    } else {
      version = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (filePath != null) {
      _result['FilePath'] = filePath!;
    }

    if (fontFamilyName != null) {
      _result['FontFamilyName'] = fontFamilyName!;
    }

    if (fullFontName != null) {
      _result['FullFontName'] = fullFontName!;
    }

    if (version != null) {
      _result['Version'] = version!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
  }
}


