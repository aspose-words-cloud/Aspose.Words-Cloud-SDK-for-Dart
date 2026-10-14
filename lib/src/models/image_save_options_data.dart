/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="image_save_options_data.dart">
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

/// Container abstract class for image save options.
abstract class ImageSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the horizontal resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double? _horizontalResolution;

  double? get horizontalResolution => _horizontalResolution;
  set horizontalResolution(double? val) => _horizontalResolution = val;


  /// Gets or sets the brightness level of the image.
  double? _imageBrightness;

  double? get imageBrightness => _imageBrightness;
  set imageBrightness(double? val) => _imageBrightness = val;


  /// Gets or sets the color mode of the image.
  ImageSaveOptionsData_ImageColorModeEnum? _imageColorMode;

  ImageSaveOptionsData_ImageColorModeEnum? get imageColorMode => _imageColorMode;
  set imageColorMode(ImageSaveOptionsData_ImageColorModeEnum? val) => _imageColorMode = val;


  /// Gets or sets the contrast level of the image.
  double? _imageContrast;

  double? get imageContrast => _imageContrast;
  set imageContrast(double? val) => _imageContrast = val;


  /// Gets or sets the background (paper) color of the image.
  String? _paperColor;

  String? get paperColor => _paperColor;
  set paperColor(String? val) => _paperColor = val;


  /// Gets or sets the pixel format of the image.
  ImageSaveOptionsData_PixelFormatEnum? _pixelFormat;

  ImageSaveOptionsData_PixelFormatEnum? get pixelFormat => _pixelFormat;
  set pixelFormat(ImageSaveOptionsData_PixelFormatEnum? val) => _pixelFormat = val;


  /// Gets or sets both horizontal and vertical resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double? _resolution;

  double? get resolution => _resolution;
  set resolution(double? val) => _resolution = val;


  /// Gets or sets the zoom factor of the image.
  double? _scale;

  double? get scale => _scale;
  set scale(double? val) => _scale = val;


  /// Gets or sets a value indicating whether to use anti-aliasing for rendering.
  bool? _useAntiAliasing;

  bool? get useAntiAliasing => _useAntiAliasing;
  set useAntiAliasing(bool? val) => _useAntiAliasing = val;


  /// Gets or sets a value indicating whether to use high quality (i.e. slow) rendering algorithms.
  bool? _useHighQualityRendering;

  bool? get useHighQualityRendering => _useHighQualityRendering;
  set useHighQualityRendering(bool? val) => _useHighQualityRendering = val;


  /// Gets or sets the vertical resolution in dots per inch for the generated images.
  /// This property has effect only when saving to raster image formats.
  /// The default value is 96.
  double? _verticalResolution;

  double? get verticalResolution => _verticalResolution;
  set verticalResolution(double? val) => _verticalResolution = val;


  /// Gets or sets the height of a generated image in pixels.
  /// This property has effect only when saving to raster image formats
  /// and used in pair with ImageWidth.
  int? _imageHeight;

  int? get imageHeight => _imageHeight;
  set imageHeight(int? val) => _imageHeight = val;


  /// Gets or sets the width of a generated image in pixels.
  /// This property has effect only when saving to raster image formats
  /// and used in pair with ImageHeight.
  int? _imageWidth;

  int? get imageWidth => _imageWidth;
  set imageWidth(int? val) => _imageWidth = val;


  /// Gets or sets a value indicating whether to use GDI+ or Aspose.Words metafile renderer when saving to EMF.
  /// If set to true - GDI+ metafile renderer is used. I.e. content is written to GDI+ graphics object and saved to metafile.If set to false - Aspose.Words metafile renderer is used. I.e. content is written directly to the metafile format with Aspose.Words.The default value is true.Has effect only when saving to EMF.
  bool? _useGdiEmfRenderer;

  bool? get useGdiEmfRenderer => _useGdiEmfRenderer;
  set useGdiEmfRenderer(bool? val) => _useGdiEmfRenderer = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ImageSaveOptionsData data model.');
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
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (horizontalResolution != null) {
      _result['HorizontalResolution'] = horizontalResolution!;
    }

    if (imageBrightness != null) {
      _result['ImageBrightness'] = imageBrightness!;
    }

    if (imageColorMode != null) {
      switch (imageColorMode!) {
        case ImageSaveOptionsData_ImageColorModeEnum.none: _result['ImageColorMode'] = 'None'; break;
        case ImageSaveOptionsData_ImageColorModeEnum.grayscale: _result['ImageColorMode'] = 'Grayscale'; break;
        case ImageSaveOptionsData_ImageColorModeEnum.blackAndWhite: _result['ImageColorMode'] = 'BlackAndWhite'; break;
        default: break;
      }
    }

    if (imageContrast != null) {
      _result['ImageContrast'] = imageContrast!;
    }

    if (paperColor != null) {
      _result['PaperColor'] = paperColor!;
    }

    if (pixelFormat != null) {
      switch (pixelFormat!) {
        case ImageSaveOptionsData_PixelFormatEnum.format16BppRgb555: _result['PixelFormat'] = 'Format16BppRgb555'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format16BppRgb565: _result['PixelFormat'] = 'Format16BppRgb565'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format16BppArgb1555: _result['PixelFormat'] = 'Format16BppArgb1555'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format24BppRgb: _result['PixelFormat'] = 'Format24BppRgb'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format32BppRgb: _result['PixelFormat'] = 'Format32BppRgb'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format32BppArgb: _result['PixelFormat'] = 'Format32BppArgb'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format32BppPArgb: _result['PixelFormat'] = 'Format32BppPArgb'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format48BppRgb: _result['PixelFormat'] = 'Format48BppRgb'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format64BppArgb: _result['PixelFormat'] = 'Format64BppArgb'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format64BppPArgb: _result['PixelFormat'] = 'Format64BppPArgb'; break;
        case ImageSaveOptionsData_PixelFormatEnum.format1bppIndexed: _result['PixelFormat'] = 'Format1bppIndexed'; break;
        default: break;
      }
    }

    if (resolution != null) {
      _result['Resolution'] = resolution!;
    }

    if (scale != null) {
      _result['Scale'] = scale!;
    }

    if (useAntiAliasing != null) {
      _result['UseAntiAliasing'] = useAntiAliasing!;
    }

    if (useHighQualityRendering != null) {
      _result['UseHighQualityRendering'] = useHighQualityRendering!;
    }

    if (verticalResolution != null) {
      _result['VerticalResolution'] = verticalResolution!;
    }

    if (imageHeight != null) {
      _result['ImageHeight'] = imageHeight!;
    }

    if (imageWidth != null) {
      _result['ImageWidth'] = imageWidth!;
    }

    if (useGdiEmfRenderer != null) {
      _result['UseGdiEmfRenderer'] = useGdiEmfRenderer!;
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

/// Gets or sets the color mode of the image.
enum ImageSaveOptionsData_ImageColorModeEnum
{ 
  none,
  grayscale,
  blackAndWhite
}

/// Gets or sets the pixel format of the image.
enum ImageSaveOptionsData_PixelFormatEnum
{ 
  format16BppRgb555,
  format16BppRgb565,
  format16BppArgb1555,
  format24BppRgb,
  format32BppRgb,
  format32BppArgb,
  format32BppPArgb,
  format48BppRgb,
  format64BppArgb,
  format64BppPArgb,
  format1bppIndexed
}

