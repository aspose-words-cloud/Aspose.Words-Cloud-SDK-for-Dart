/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="tiff_save_options_data.dart">
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

/// Container class for tiff save options.
class TiffSaveOptionsData extends ImageSaveOptionsData {
  /// Gets or sets the threshold that determines the value of the binarization error in the Floyd-Steinberg method. when ImageBinarizationMethod is ImageBinarizationMethod.FloydSteinbergDithering.
  /// The default value is 128.
  int? _thresholdForFloydSteinbergDithering;

  int? get thresholdForFloydSteinbergDithering => _thresholdForFloydSteinbergDithering;
  set thresholdForFloydSteinbergDithering(int? val) => _thresholdForFloydSteinbergDithering = val;


  /// Gets or sets the method used while converting images to 1 bpp format.
  TiffSaveOptionsData_TiffBinarizationMethodEnum? _tiffBinarizationMethod;

  TiffSaveOptionsData_TiffBinarizationMethodEnum? get tiffBinarizationMethod => _tiffBinarizationMethod;
  set tiffBinarizationMethod(TiffSaveOptionsData_TiffBinarizationMethodEnum? val) => _tiffBinarizationMethod = val;


  /// Gets or sets the type of compression.
  TiffSaveOptionsData_TiffCompressionEnum? _tiffCompression;

  TiffSaveOptionsData_TiffCompressionEnum? get tiffCompression => _tiffCompression;
  set tiffCompression(TiffSaveOptionsData_TiffCompressionEnum? val) => _tiffCompression = val;


  /// Gets the format of save.
  String? _saveFormat = 'tiff';

  @override
  String? get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TiffSaveOptionsData data model.');
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

    if (json.containsKey('HorizontalResolution')) {
      horizontalResolution = json['HorizontalResolution'] as double;
    } else {
      horizontalResolution = null;
    }

    if (json.containsKey('ImageBrightness')) {
      imageBrightness = json['ImageBrightness'] as double;
    } else {
      imageBrightness = null;
    }

    if (json.containsKey('ImageColorMode')) {
      switch (json['ImageColorMode'] as String) {
        case 'None': imageColorMode = ImageSaveOptionsData_ImageColorModeEnum.none; break;
        case 'Grayscale': imageColorMode = ImageSaveOptionsData_ImageColorModeEnum.grayscale; break;
        case 'BlackAndWhite': imageColorMode = ImageSaveOptionsData_ImageColorModeEnum.blackAndWhite; break;
        default: imageColorMode = null; break;
      }
    } else {
      imageColorMode = null;
    }

    if (json.containsKey('ImageContrast')) {
      imageContrast = json['ImageContrast'] as double;
    } else {
      imageContrast = null;
    }

    if (json.containsKey('PaperColor')) {
      paperColor = json['PaperColor'] as String;
    } else {
      paperColor = null;
    }

    if (json.containsKey('PixelFormat')) {
      switch (json['PixelFormat'] as String) {
        case 'Format16BppRgb555': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format16BppRgb555; break;
        case 'Format16BppRgb565': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format16BppRgb565; break;
        case 'Format16BppArgb1555': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format16BppArgb1555; break;
        case 'Format24BppRgb': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format24BppRgb; break;
        case 'Format32BppRgb': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format32BppRgb; break;
        case 'Format32BppArgb': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format32BppArgb; break;
        case 'Format32BppPArgb': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format32BppPArgb; break;
        case 'Format48BppRgb': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format48BppRgb; break;
        case 'Format64BppArgb': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format64BppArgb; break;
        case 'Format64BppPArgb': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format64BppPArgb; break;
        case 'Format1bppIndexed': pixelFormat = ImageSaveOptionsData_PixelFormatEnum.format1bppIndexed; break;
        default: pixelFormat = null; break;
      }
    } else {
      pixelFormat = null;
    }

    if (json.containsKey('Resolution')) {
      resolution = json['Resolution'] as double;
    } else {
      resolution = null;
    }

    if (json.containsKey('Scale')) {
      scale = json['Scale'] as double;
    } else {
      scale = null;
    }

    if (json.containsKey('UseAntiAliasing')) {
      useAntiAliasing = json['UseAntiAliasing'] as bool;
    } else {
      useAntiAliasing = null;
    }

    if (json.containsKey('UseHighQualityRendering')) {
      useHighQualityRendering = json['UseHighQualityRendering'] as bool;
    } else {
      useHighQualityRendering = null;
    }

    if (json.containsKey('VerticalResolution')) {
      verticalResolution = json['VerticalResolution'] as double;
    } else {
      verticalResolution = null;
    }

    if (json.containsKey('ImageHeight')) {
      imageHeight = json['ImageHeight'] as int;
    } else {
      imageHeight = null;
    }

    if (json.containsKey('ImageWidth')) {
      imageWidth = json['ImageWidth'] as int;
    } else {
      imageWidth = null;
    }

    if (json.containsKey('UseGdiEmfRenderer')) {
      useGdiEmfRenderer = json['UseGdiEmfRenderer'] as bool;
    } else {
      useGdiEmfRenderer = null;
    }

    if (json.containsKey('ThresholdForFloydSteinbergDithering')) {
      thresholdForFloydSteinbergDithering = json['ThresholdForFloydSteinbergDithering'] as int;
    } else {
      thresholdForFloydSteinbergDithering = null;
    }

    if (json.containsKey('TiffBinarizationMethod')) {
      switch (json['TiffBinarizationMethod'] as String) {
        case 'Threshold': tiffBinarizationMethod = TiffSaveOptionsData_TiffBinarizationMethodEnum.threshold; break;
        case 'FloydSteinbergDithering': tiffBinarizationMethod = TiffSaveOptionsData_TiffBinarizationMethodEnum.floydSteinbergDithering; break;
        default: tiffBinarizationMethod = null; break;
      }
    } else {
      tiffBinarizationMethod = null;
    }

    if (json.containsKey('TiffCompression')) {
      switch (json['TiffCompression'] as String) {
        case 'None': tiffCompression = TiffSaveOptionsData_TiffCompressionEnum.none; break;
        case 'Rle': tiffCompression = TiffSaveOptionsData_TiffCompressionEnum.rle; break;
        case 'Lzw': tiffCompression = TiffSaveOptionsData_TiffCompressionEnum.lzw; break;
        case 'Ccitt3': tiffCompression = TiffSaveOptionsData_TiffCompressionEnum.ccitt3; break;
        case 'Ccitt4': tiffCompression = TiffSaveOptionsData_TiffCompressionEnum.ccitt4; break;
        default: tiffCompression = null; break;
      }
    } else {
      tiffCompression = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (thresholdForFloydSteinbergDithering != null) {
      _result['ThresholdForFloydSteinbergDithering'] = thresholdForFloydSteinbergDithering!;
    }

    if (tiffBinarizationMethod != null) {
      switch (tiffBinarizationMethod!) {
        case TiffSaveOptionsData_TiffBinarizationMethodEnum.threshold: _result['TiffBinarizationMethod'] = 'Threshold'; break;
        case TiffSaveOptionsData_TiffBinarizationMethodEnum.floydSteinbergDithering: _result['TiffBinarizationMethod'] = 'FloydSteinbergDithering'; break;
        default: break;
      }
    }

    if (tiffCompression != null) {
      switch (tiffCompression!) {
        case TiffSaveOptionsData_TiffCompressionEnum.none: _result['TiffCompression'] = 'None'; break;
        case TiffSaveOptionsData_TiffCompressionEnum.rle: _result['TiffCompression'] = 'Rle'; break;
        case TiffSaveOptionsData_TiffCompressionEnum.lzw: _result['TiffCompression'] = 'Lzw'; break;
        case TiffSaveOptionsData_TiffCompressionEnum.ccitt3: _result['TiffCompression'] = 'Ccitt3'; break;
        case TiffSaveOptionsData_TiffCompressionEnum.ccitt4: _result['TiffCompression'] = 'Ccitt4'; break;
        default: break;
      }
    }

    if (saveFormat != null) {
      _result['SaveFormat'] = saveFormat!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
  }
}

/// Gets or sets the method used while converting images to 1 bpp format.
enum TiffSaveOptionsData_TiffBinarizationMethodEnum
{ 
  threshold,
  floydSteinbergDithering
}

/// Gets or sets the type of compression.
enum TiffSaveOptionsData_TiffCompressionEnum
{ 
  none,
  rle,
  lzw,
  ccitt3,
  ccitt4
}

