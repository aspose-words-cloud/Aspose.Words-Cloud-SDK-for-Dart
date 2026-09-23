/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="rtf_save_options_data.dart">
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

/// Container class for rtf save options.
class RtfSaveOptionsData extends SaveOptionsData {
  /// Gets or sets a value indicating whether to make output RTF documents smaller in size, but if they contain RTL (right-to-left) text, it will not be displayed correctly.
  bool? _exportCompactSize;

  bool? get exportCompactSize => _exportCompactSize;
  set exportCompactSize(bool? val) => _exportCompactSize = val;


  /// Gets or sets a value indicating whether the keywords for "old readers" are written to RTF or not.
  bool? _exportImagesForOldReaders;

  bool? get exportImagesForOldReaders => _exportImagesForOldReaders;
  set exportImagesForOldReaders(bool? val) => _exportImagesForOldReaders = val;


  /// Gets or sets a value indicating whether to use pretty formats output.
  bool? _prettyFormat;

  bool? get prettyFormat => _prettyFormat;
  set prettyFormat(bool? val) => _prettyFormat = val;


  /// Gets or sets a value indicating whether when true all images will be saved as WMF. This option might help to avoid WordPad warning messages.
  bool? _saveImagesAsWmf;

  bool? get saveImagesAsWmf => _saveImagesAsWmf;
  set saveImagesAsWmf(bool? val) => _saveImagesAsWmf = val;


  /// Gets the format of save.
  String? _saveFormat = 'rtf';

  @override
  String? get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize RtfSaveOptionsData data model.');
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

    if (json.containsKey('ExportCompactSize')) {
      exportCompactSize = json['ExportCompactSize'] as bool;
    } else {
      exportCompactSize = null;
    }

    if (json.containsKey('ExportImagesForOldReaders')) {
      exportImagesForOldReaders = json['ExportImagesForOldReaders'] as bool;
    } else {
      exportImagesForOldReaders = null;
    }

    if (json.containsKey('PrettyFormat')) {
      prettyFormat = json['PrettyFormat'] as bool;
    } else {
      prettyFormat = null;
    }

    if (json.containsKey('SaveImagesAsWmf')) {
      saveImagesAsWmf = json['SaveImagesAsWmf'] as bool;
    } else {
      saveImagesAsWmf = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (exportCompactSize != null) {
      _result['ExportCompactSize'] = exportCompactSize!;
    }

    if (exportImagesForOldReaders != null) {
      _result['ExportImagesForOldReaders'] = exportImagesForOldReaders!;
    }

    if (prettyFormat != null) {
      _result['PrettyFormat'] = prettyFormat!;
    }

    if (saveImagesAsWmf != null) {
      _result['SaveImagesAsWmf'] = saveImagesAsWmf!;
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


