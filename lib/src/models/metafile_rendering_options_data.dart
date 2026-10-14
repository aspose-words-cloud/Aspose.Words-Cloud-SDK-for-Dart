/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="metafile_rendering_options_data.dart">
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

/// Container class for options of metafile rendering.
class MetafileRenderingOptionsData implements ModelBase {
  /// Gets or sets the option that controls how EMF+ Dual metafiles should be rendered.
  MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum? _emfPlusDualRenderingMode;

  MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum? get emfPlusDualRenderingMode => _emfPlusDualRenderingMode;
  set emfPlusDualRenderingMode(MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum? val) => _emfPlusDualRenderingMode = val;


  /// Gets or sets a value indicating whether the raster operations should be emulated.
  /// Specific raster operations could be used in metafiles. They can not be rendered directly to vector graphics. Emulating raster operations requires partial rasterization of the resulting vector graphics which may affect the metafile rendering performance. When this value is set to true, Aspose.Words emulates the raster operations. The resulting output maybe partially rasterized and performance might be slower. When this value is set to false, Aspose.Words does not emulate the raster operations. When Aspose.Words encounters a raster operation in a metafile it fallbacks to rendering the metafile into a bitmap by using the operating system. This option is used only when metafile is rendered as vector graphics. The default value is true.
  bool? _emulateRasterOperations;

  bool? get emulateRasterOperations => _emulateRasterOperations;
  set emulateRasterOperations(bool? val) => _emulateRasterOperations = val;


  /// Gets or sets a value determining whether metafile rendering emulates the display of the metafile according to the size on page
  /// or the display of the metafile in its default size.
  bool? _emulateRenderingToSizeOnPage;

  bool? get emulateRenderingToSizeOnPage => _emulateRenderingToSizeOnPage;
  set emulateRenderingToSizeOnPage(bool? val) => _emulateRenderingToSizeOnPage = val;


  /// Gets or sets the resolution in pixels per inch for the emulation of metafile rendering to the size on page.
  /// This option is used only when EmulateRenderingToSizeOnPage is set to true.The default value is 96. This is a default display resolution. I.e. metafile rendering will emulate the display of
  /// the metafile in MS Word with a 100% zoom factor.
  int? _emulateRenderingToSizeOnPageResolution;

  int? get emulateRenderingToSizeOnPageResolution => _emulateRenderingToSizeOnPageResolution;
  set emulateRenderingToSizeOnPageResolution(int? val) => _emulateRenderingToSizeOnPageResolution = val;


  /// Gets or sets the option that controls how metafile images should be rendered.
  MetafileRenderingOptionsData_RenderingModeEnum? _renderingMode;

  MetafileRenderingOptionsData_RenderingModeEnum? get renderingMode => _renderingMode;
  set renderingMode(MetafileRenderingOptionsData_RenderingModeEnum? val) => _renderingMode = val;


  /// Gets or sets the flag, that controls how WMF metafiles with embedded EMF metafiles should be rendered.
  bool? _useEmfEmbeddedToWmf;

  bool? get useEmfEmbeddedToWmf => _useEmfEmbeddedToWmf;
  set useEmfEmbeddedToWmf(bool? val) => _useEmfEmbeddedToWmf = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize MetafileRenderingOptionsData data model.');
    }

    if (json.containsKey('EmfPlusDualRenderingMode')) {
      switch (json['EmfPlusDualRenderingMode'] as String) {
        case 'EmfPlusWithFallback': emfPlusDualRenderingMode = MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum.emfPlusWithFallback; break;
        case 'EmfPlus': emfPlusDualRenderingMode = MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum.emfPlus; break;
        case 'Emf': emfPlusDualRenderingMode = MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum.emf; break;
        default: emfPlusDualRenderingMode = null; break;
      }
    } else {
      emfPlusDualRenderingMode = null;
    }

    if (json.containsKey('EmulateRasterOperations')) {
      emulateRasterOperations = json['EmulateRasterOperations'] as bool;
    } else {
      emulateRasterOperations = null;
    }

    if (json.containsKey('EmulateRenderingToSizeOnPage')) {
      emulateRenderingToSizeOnPage = json['EmulateRenderingToSizeOnPage'] as bool;
    } else {
      emulateRenderingToSizeOnPage = null;
    }

    if (json.containsKey('EmulateRenderingToSizeOnPageResolution')) {
      emulateRenderingToSizeOnPageResolution = json['EmulateRenderingToSizeOnPageResolution'] as int;
    } else {
      emulateRenderingToSizeOnPageResolution = null;
    }

    if (json.containsKey('RenderingMode')) {
      switch (json['RenderingMode'] as String) {
        case 'VectorWithFallback': renderingMode = MetafileRenderingOptionsData_RenderingModeEnum.vectorWithFallback; break;
        case 'Vector': renderingMode = MetafileRenderingOptionsData_RenderingModeEnum.vector; break;
        case 'Bitmap': renderingMode = MetafileRenderingOptionsData_RenderingModeEnum.bitmap; break;
        default: renderingMode = null; break;
      }
    } else {
      renderingMode = null;
    }

    if (json.containsKey('UseEmfEmbeddedToWmf')) {
      useEmfEmbeddedToWmf = json['UseEmfEmbeddedToWmf'] as bool;
    } else {
      useEmfEmbeddedToWmf = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (emfPlusDualRenderingMode != null) {
      switch (emfPlusDualRenderingMode!) {
        case MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum.emfPlusWithFallback: _result['EmfPlusDualRenderingMode'] = 'EmfPlusWithFallback'; break;
        case MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum.emfPlus: _result['EmfPlusDualRenderingMode'] = 'EmfPlus'; break;
        case MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum.emf: _result['EmfPlusDualRenderingMode'] = 'Emf'; break;
        default: break;
      }
    }

    if (emulateRasterOperations != null) {
      _result['EmulateRasterOperations'] = emulateRasterOperations!;
    }

    if (emulateRenderingToSizeOnPage != null) {
      _result['EmulateRenderingToSizeOnPage'] = emulateRenderingToSizeOnPage!;
    }

    if (emulateRenderingToSizeOnPageResolution != null) {
      _result['EmulateRenderingToSizeOnPageResolution'] = emulateRenderingToSizeOnPageResolution!;
    }

    if (renderingMode != null) {
      switch (renderingMode!) {
        case MetafileRenderingOptionsData_RenderingModeEnum.vectorWithFallback: _result['RenderingMode'] = 'VectorWithFallback'; break;
        case MetafileRenderingOptionsData_RenderingModeEnum.vector: _result['RenderingMode'] = 'Vector'; break;
        case MetafileRenderingOptionsData_RenderingModeEnum.bitmap: _result['RenderingMode'] = 'Bitmap'; break;
        default: break;
      }
    }

    if (useEmfEmbeddedToWmf != null) {
      _result['UseEmfEmbeddedToWmf'] = useEmfEmbeddedToWmf!;
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

/// Gets or sets the option that controls how EMF+ Dual metafiles should be rendered.
enum MetafileRenderingOptionsData_EmfPlusDualRenderingModeEnum
{ 
  emfPlusWithFallback,
  emfPlus,
  emf
}

/// Gets or sets the option that controls how metafile images should be rendered.
enum MetafileRenderingOptionsData_RenderingModeEnum
{ 
  vectorWithFallback,
  vector,
  bitmap
}

