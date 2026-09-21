/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="fixed_page_save_options_data.dart">
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

/// Contains common options that can be specified when saving a document into fixed page formats (PDF, XPS, images etc).
abstract class FixedPageSaveOptionsData extends SaveOptionsData {
  /// Gets or sets the value determining how colors are rendered.
  /// { Normal | Grayscale}.
  /// The default value is Normal.
  /// This property is used when the document is exported to fixed page formats.
  FixedPageSaveOptionsData_ColorModeEnum? _colorMode;

  FixedPageSaveOptionsData_ColorModeEnum? get colorMode => _colorMode;
  set colorMode(FixedPageSaveOptionsData_ColorModeEnum? val) => _colorMode = val;


  /// Gets or sets the quality of the JPEG images inside PDF document.
  int? _jpegQuality;

  int? get jpegQuality => _jpegQuality;
  set jpegQuality(int? val) => _jpegQuality = val;


  /// Gets or sets the metafile rendering options.
  MetafileRenderingOptionsData? _metafileRenderingOptions;

  MetafileRenderingOptionsData? get metafileRenderingOptions => _metafileRenderingOptions;
  set metafileRenderingOptions(MetafileRenderingOptionsData? val) => _metafileRenderingOptions = val;


  /// Gets or sets the symbol set, that is used to represent numbers while rendering to fixed page formats.
  FixedPageSaveOptionsData_NumeralFormatEnum? _numeralFormat;

  FixedPageSaveOptionsData_NumeralFormatEnum? get numeralFormat => _numeralFormat;
  set numeralFormat(FixedPageSaveOptionsData_NumeralFormatEnum? val) => _numeralFormat = val;


  /// Gets or sets a value indicating whether it is required to optimize output of XPS.
  /// If this flag is set redundant nested canvases and empty canvases are removed, also neighbor glyphs with the same formatting are concatenated.
  /// Note: The accuracy of the content display may be affected if this property is set to true.. The default value is false.
  bool? _optimizeOutput;

  bool? get optimizeOutput => _optimizeOutput;
  set optimizeOutput(bool? val) => _optimizeOutput = val;


  /// Gets or sets the number of pages to render.
  int? _pageCount;

  int? get pageCount => _pageCount;
  set pageCount(int? val) => _pageCount = val;


  /// Gets or sets the 0-based index of the first page to render.
  int? _pageIndex;

  int? get pageIndex => _pageIndex;
  set pageIndex(int? val) => _pageIndex = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FixedPageSaveOptionsData data model.');
    }

    super.deserialize(json);
    if (json.containsKey('AllowEmbeddingPostScriptFonts')) {
      allowEmbeddingPostScriptFonts = json['AllowEmbeddingPostScriptFonts'] as bool;
    } else {
      allowEmbeddingPostScriptFonts = null;
    }

    if (json.containsKey('CustomTimeZoneInfoData')) {
      customTimeZoneInfoData = ModelBase.createInstance< TimeZoneInfoData >(json['CustomTimeZoneInfoData'] as Map<String, dynamic>);
    } else {
      customTimeZoneInfoData = null;
    }

    if (json.containsKey('Dml3DEffectsRenderingMode')) {
      switch (json['Dml3DEffectsRenderingMode'] as String) {
        case 'Basic': dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.basic; break;
        case 'Advanced': dml3DEffectsRenderingMode = SaveOptionsData_Dml3DEffectsRenderingModeEnum.advanced; break;
        default: dml3DEffectsRenderingMode = null; break;
      }
    } else {
      dml3DEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlEffectsRenderingMode')) {
      switch (json['DmlEffectsRenderingMode'] as String) {
        case 'Simplified': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.simplified; break;
        case 'None': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.none; break;
        case 'Fine': dmlEffectsRenderingMode = SaveOptionsData_DmlEffectsRenderingModeEnum.fine; break;
        default: dmlEffectsRenderingMode = null; break;
      }
    } else {
      dmlEffectsRenderingMode = null;
    }

    if (json.containsKey('DmlRenderingMode')) {
      switch (json['DmlRenderingMode'] as String) {
        case 'Fallback': dmlRenderingMode = SaveOptionsData_DmlRenderingModeEnum.fallback; break;
        case 'DrawingML': dmlRenderingMode = SaveOptionsData_DmlRenderingModeEnum.drawingML; break;
        default: dmlRenderingMode = null; break;
      }
    } else {
      dmlRenderingMode = null;
    }

    if (json.containsKey('FileName')) {
      fileName = json['FileName'] as String;
    } else {
      fileName = null;
    }

    if (json.containsKey('ImlRenderingMode')) {
      switch (json['ImlRenderingMode'] as String) {
        case 'Fallback': imlRenderingMode = SaveOptionsData_ImlRenderingModeEnum.fallback; break;
        case 'InkML': imlRenderingMode = SaveOptionsData_ImlRenderingModeEnum.inkML; break;
        default: imlRenderingMode = null; break;
      }
    } else {
      imlRenderingMode = null;
    }

    if (json.containsKey('UpdateAmbiguousTextFont')) {
      updateAmbiguousTextFont = json['UpdateAmbiguousTextFont'] as bool;
    } else {
      updateAmbiguousTextFont = null;
    }

    if (json.containsKey('UpdateCreatedTimeProperty')) {
      updateCreatedTimeProperty = json['UpdateCreatedTimeProperty'] as bool;
    } else {
      updateCreatedTimeProperty = null;
    }

    if (json.containsKey('UpdateFields')) {
      updateFields = json['UpdateFields'] as bool;
    } else {
      updateFields = null;
    }

    if (json.containsKey('UpdateLastPrintedProperty')) {
      updateLastPrintedProperty = json['UpdateLastPrintedProperty'] as bool;
    } else {
      updateLastPrintedProperty = null;
    }

    if (json.containsKey('UpdateLastSavedTimeProperty')) {
      updateLastSavedTimeProperty = json['UpdateLastSavedTimeProperty'] as bool;
    } else {
      updateLastSavedTimeProperty = null;
    }

    if (json.containsKey('ZipOutput')) {
      zipOutput = json['ZipOutput'] as bool;
    } else {
      zipOutput = null;
    }

    if (json.containsKey('ColorMode')) {
      switch (json['ColorMode'] as String) {
        case 'Normal': colorMode = FixedPageSaveOptionsData_ColorModeEnum.normal; break;
        case 'Grayscale': colorMode = FixedPageSaveOptionsData_ColorModeEnum.grayscale; break;
        default: colorMode = null; break;
      }
    } else {
      colorMode = null;
    }

    if (json.containsKey('JpegQuality')) {
      jpegQuality = json['JpegQuality'] as int;
    } else {
      jpegQuality = null;
    }

    if (json.containsKey('MetafileRenderingOptions')) {
      metafileRenderingOptions = ModelBase.createInstance< MetafileRenderingOptionsData >(json['MetafileRenderingOptions'] as Map<String, dynamic>);
    } else {
      metafileRenderingOptions = null;
    }

    if (json.containsKey('NumeralFormat')) {
      switch (json['NumeralFormat'] as String) {
        case 'European': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.european; break;
        case 'ArabicIndic': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.arabicIndic; break;
        case 'EasternArabicIndic': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.easternArabicIndic; break;
        case 'Context': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.context; break;
        case 'System': numeralFormat = FixedPageSaveOptionsData_NumeralFormatEnum.system; break;
        default: numeralFormat = null; break;
      }
    } else {
      numeralFormat = null;
    }

    if (json.containsKey('OptimizeOutput')) {
      optimizeOutput = json['OptimizeOutput'] as bool;
    } else {
      optimizeOutput = null;
    }

    if (json.containsKey('PageCount')) {
      pageCount = json['PageCount'] as int;
    } else {
      pageCount = null;
    }

    if (json.containsKey('PageIndex')) {
      pageIndex = json['PageIndex'] as int;
    } else {
      pageIndex = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (colorMode != null) {
      switch (colorMode!) {
        case FixedPageSaveOptionsData_ColorModeEnum.normal: _result['ColorMode'] = 'Normal'; break;
        case FixedPageSaveOptionsData_ColorModeEnum.grayscale: _result['ColorMode'] = 'Grayscale'; break;
        default: break;
      }
    }

    if (jpegQuality != null) {
      _result['JpegQuality'] = jpegQuality!;
    }

    if (metafileRenderingOptions != null) {
      _result['MetafileRenderingOptions'] = metafileRenderingOptions!.serialize();
    }

    if (numeralFormat != null) {
      switch (numeralFormat!) {
        case FixedPageSaveOptionsData_NumeralFormatEnum.european: _result['NumeralFormat'] = 'European'; break;
        case FixedPageSaveOptionsData_NumeralFormatEnum.arabicIndic: _result['NumeralFormat'] = 'ArabicIndic'; break;
        case FixedPageSaveOptionsData_NumeralFormatEnum.easternArabicIndic: _result['NumeralFormat'] = 'EasternArabicIndic'; break;
        case FixedPageSaveOptionsData_NumeralFormatEnum.context: _result['NumeralFormat'] = 'Context'; break;
        case FixedPageSaveOptionsData_NumeralFormatEnum.system: _result['NumeralFormat'] = 'System'; break;
        default: break;
      }
    }

    if (optimizeOutput != null) {
      _result['OptimizeOutput'] = optimizeOutput!;
    }

    if (pageCount != null) {
      _result['PageCount'] = pageCount!;
    }

    if (pageIndex != null) {
      _result['PageIndex'] = pageIndex!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    metafileRenderingOptions?.validate();





  }
}

/// Gets or sets the value determining how colors are rendered.
/// { Normal | Grayscale}.
/// The default value is Normal.
/// This property is used when the document is exported to fixed page formats.
enum FixedPageSaveOptionsData_ColorModeEnum
{ 
  normal,
  grayscale
}

/// Gets or sets the symbol set, that is used to represent numbers while rendering to fixed page formats.
enum FixedPageSaveOptionsData_NumeralFormatEnum
{ 
  european,
  arabicIndic,
  easternArabicIndic,
  context,
  system
}

