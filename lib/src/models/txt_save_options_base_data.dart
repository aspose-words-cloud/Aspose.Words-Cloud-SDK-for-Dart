/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="txt_save_options_base_data.dart">
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

/// Base class for save options of text formats.
abstract class TxtSaveOptionsBaseData extends SaveOptionsData {
  /// Gets or sets the character encoding to use when exporting in plain text format.
  String? _encoding;

  String? get encoding => _encoding;
  set encoding(String? val) => _encoding = val;


  /// Gets or sets the option that controls whether to output headers and footers when exporting in plain text format.
  /// The default value is TxtExportHeadersFootersMode.PrimaryOnly.
  TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum? _exportHeadersFootersMode;

  TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum? get exportHeadersFootersMode => _exportHeadersFootersMode;
  set exportHeadersFootersMode(TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum? val) => _exportHeadersFootersMode = val;


  /// Gets or sets a value indicating whether the page breaks should be preserved during export.
  /// The default value is false.
  bool? _forcePageBreaks;

  bool? get forcePageBreaks => _forcePageBreaks;
  set forcePageBreaks(bool? val) => _forcePageBreaks = val;


  /// Gets or sets the string to use as a paragraph break when exporting in plain text format.
  String? _paragraphBreak;

  String? get paragraphBreak => _paragraphBreak;
  set paragraphBreak(String? val) => _paragraphBreak = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TxtSaveOptionsBaseData data model.');
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

    if (json.containsKey('Encoding')) {
      encoding = json['Encoding'] as String;
    } else {
      encoding = null;
    }

    if (json.containsKey('ExportHeadersFootersMode')) {
      switch (json['ExportHeadersFootersMode'] as String) {
        case 'None': exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.none; break;
        case 'PrimaryOnly': exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.primaryOnly; break;
        case 'AllAtEnd': exportHeadersFootersMode = TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.allAtEnd; break;
        default: exportHeadersFootersMode = null; break;
      }
    } else {
      exportHeadersFootersMode = null;
    }

    if (json.containsKey('ForcePageBreaks')) {
      forcePageBreaks = json['ForcePageBreaks'] as bool;
    } else {
      forcePageBreaks = null;
    }

    if (json.containsKey('ParagraphBreak')) {
      paragraphBreak = json['ParagraphBreak'] as String;
    } else {
      paragraphBreak = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (encoding != null) {
      _result['Encoding'] = encoding!;
    }

    if (exportHeadersFootersMode != null) {
      switch (exportHeadersFootersMode!) {
        case TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.none: _result['ExportHeadersFootersMode'] = 'None'; break;
        case TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.primaryOnly: _result['ExportHeadersFootersMode'] = 'PrimaryOnly'; break;
        case TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum.allAtEnd: _result['ExportHeadersFootersMode'] = 'AllAtEnd'; break;
        default: break;
      }
    }

    if (forcePageBreaks != null) {
      _result['ForcePageBreaks'] = forcePageBreaks!;
    }

    if (paragraphBreak != null) {
      _result['ParagraphBreak'] = paragraphBreak!;
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

/// Gets or sets the option that controls whether to output headers and footers when exporting in plain text format.
/// The default value is TxtExportHeadersFootersMode.PrimaryOnly.
enum TxtSaveOptionsBaseData_ExportHeadersFootersModeEnum
{ 
  none,
  primaryOnly,
  allAtEnd
}

