/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="text_save_options_data.dart">
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

/// Container class for text save options.
class TextSaveOptionsData extends TxtSaveOptionsBaseData {
  /// Gets or sets a value indicating whether to add bi-directional marks before each BiDi run when exporting in plain text format.
  /// The default value is true.
  bool? _addBidiMarks;

  bool? get addBidiMarks => _addBidiMarks;
  set addBidiMarks(bool? val) => _addBidiMarks = val;


  /// Gets or sets an integer value that specifies the maximum number of characters per one line.
  /// The default value is 0, that means no limit.
  int? _maxCharactersPerLine;

  int? get maxCharactersPerLine => _maxCharactersPerLine;
  set maxCharactersPerLine(int? val) => _maxCharactersPerLine = val;


  /// Gets or sets a value that specifies how OfficeMath will be written to the output file.
  /// The default value is Text.
  TextSaveOptionsData_OfficeMathExportModeEnum? _officeMathExportMode;

  TextSaveOptionsData_OfficeMathExportModeEnum? get officeMathExportMode => _officeMathExportMode;
  set officeMathExportMode(TextSaveOptionsData_OfficeMathExportModeEnum? val) => _officeMathExportMode = val;


  /// Gets or sets a value indicating whether the program should attempt to preserve layout of tables when saving in the plain text format.
  bool? _preserveTableLayout;

  bool? get preserveTableLayout => _preserveTableLayout;
  set preserveTableLayout(bool? val) => _preserveTableLayout = val;


  /// Gets or sets a value indicating whether the program should simplify list labels in case of complex label formatting not being adequately represented by plain text.
  bool? _simplifyListLabels;

  bool? get simplifyListLabels => _simplifyListLabels;
  set simplifyListLabels(bool? val) => _simplifyListLabels = val;


  /// Gets the format of save.
  String? _saveFormat = 'txt';

  @override
  String? get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TextSaveOptionsData data model.');
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

    if (json.containsKey('AddBidiMarks')) {
      addBidiMarks = json['AddBidiMarks'] as bool;
    } else {
      addBidiMarks = null;
    }

    if (json.containsKey('MaxCharactersPerLine')) {
      maxCharactersPerLine = json['MaxCharactersPerLine'] as int;
    } else {
      maxCharactersPerLine = null;
    }

    if (json.containsKey('OfficeMathExportMode')) {
      switch (json['OfficeMathExportMode'] as String) {
        case 'Text': officeMathExportMode = TextSaveOptionsData_OfficeMathExportModeEnum.text; break;
        case 'Latex': officeMathExportMode = TextSaveOptionsData_OfficeMathExportModeEnum.latex; break;
        default: officeMathExportMode = null; break;
      }
    } else {
      officeMathExportMode = null;
    }

    if (json.containsKey('PreserveTableLayout')) {
      preserveTableLayout = json['PreserveTableLayout'] as bool;
    } else {
      preserveTableLayout = null;
    }

    if (json.containsKey('SimplifyListLabels')) {
      simplifyListLabels = json['SimplifyListLabels'] as bool;
    } else {
      simplifyListLabels = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (addBidiMarks != null) {
      _result['AddBidiMarks'] = addBidiMarks!;
    }

    if (maxCharactersPerLine != null) {
      _result['MaxCharactersPerLine'] = maxCharactersPerLine!;
    }

    if (officeMathExportMode != null) {
      switch (officeMathExportMode!) {
        case TextSaveOptionsData_OfficeMathExportModeEnum.text: _result['OfficeMathExportMode'] = 'Text'; break;
        case TextSaveOptionsData_OfficeMathExportModeEnum.latex: _result['OfficeMathExportMode'] = 'Latex'; break;
        default: break;
      }
    }

    if (preserveTableLayout != null) {
      _result['PreserveTableLayout'] = preserveTableLayout!;
    }

    if (simplifyListLabels != null) {
      _result['SimplifyListLabels'] = simplifyListLabels!;
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
    if (maxCharactersPerLine == null)
    {
        throw new ApiException(400, 'Property MaxCharactersPerLine in TextSaveOptionsData is required.');
    }
  }
}

/// Gets or sets a value that specifies how OfficeMath will be written to the output file.
/// The default value is Text.
enum TextSaveOptionsData_OfficeMathExportModeEnum
{ 
  text,
  latex
}

