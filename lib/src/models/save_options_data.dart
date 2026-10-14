/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="save_options_data.dart">
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

/// base container class for save options data.
abstract class SaveOptionsData implements ModelBase {
  /// Gets or sets a boolean value indicating whether to allow embedding fonts with PostScript outlines when embedding TrueType fonts in a document upon it is saved. The default value is false..
  /// Note, Word does not embed PostScript fonts, but can open documents with embedded fonts of this type.
  /// This option only works when Aspose.Words.Fonts.FontInfoCollection.EmbedTrueTypeFonts of the Aspose.Words.DocumentBase.FontInfos property is set to true.
  /// The default value is false.
  bool? _allowEmbeddingPostScriptFonts;

  bool? get allowEmbeddingPostScriptFonts => _allowEmbeddingPostScriptFonts;
  set allowEmbeddingPostScriptFonts(bool? val) => _allowEmbeddingPostScriptFonts = val;


  /// Gets or sets CustomTimeZoneInfo.
  TimeZoneInfoData? _customTimeZoneInfoData;

  TimeZoneInfoData? get customTimeZoneInfoData => _customTimeZoneInfoData;
  set customTimeZoneInfoData(TimeZoneInfoData? val) => _customTimeZoneInfoData = val;


  /// Gets or sets the value determining how 3D effects are rendered.
  /// The default value is Aspose.Words.Saving.Dml3DEffectsRenderingMode.Basic.
  SaveOptionsData_Dml3DEffectsRenderingModeEnum? _dml3DEffectsRenderingMode;

  SaveOptionsData_Dml3DEffectsRenderingModeEnum? get dml3DEffectsRenderingMode => _dml3DEffectsRenderingMode;
  set dml3DEffectsRenderingMode(SaveOptionsData_Dml3DEffectsRenderingModeEnum? val) => _dml3DEffectsRenderingMode = val;


  /// Gets or sets the value determining how DrawingML effects are rendered.
  /// { Simplified | None | Fine }.
  /// The default value is Simplified.
  /// This property is used when the document is exported to fixed page formats.
  SaveOptionsData_DmlEffectsRenderingModeEnum? _dmlEffectsRenderingMode;

  SaveOptionsData_DmlEffectsRenderingModeEnum? get dmlEffectsRenderingMode => _dmlEffectsRenderingMode;
  set dmlEffectsRenderingMode(SaveOptionsData_DmlEffectsRenderingModeEnum? val) => _dmlEffectsRenderingMode = val;


  /// Gets or sets the option that controls how DrawingML shapes are rendered.
  /// { Fallback | DrawingML }. The default value is Fallback.
  /// This property is used when the document is exported to fixed page formats.
  SaveOptionsData_DmlRenderingModeEnum? _dmlRenderingMode;

  SaveOptionsData_DmlRenderingModeEnum? get dmlRenderingMode => _dmlRenderingMode;
  set dmlRenderingMode(SaveOptionsData_DmlRenderingModeEnum? val) => _dmlRenderingMode = val;


  /// Gets or sets the name of destination file.
  String? _fileName;

  String? get fileName => _fileName;
  set fileName(String? val) => _fileName = val;


  /// Gets or sets the value determining how ink (InkML) objects are rendered.
  /// The default value is Aspose.Words.Saving.ImlRenderingMode.InkML.
  SaveOptionsData_ImlRenderingModeEnum? _imlRenderingMode;

  SaveOptionsData_ImlRenderingModeEnum? get imlRenderingMode => _imlRenderingMode;
  set imlRenderingMode(SaveOptionsData_ImlRenderingModeEnum? val) => _imlRenderingMode = val;


  /// Gets or sets a value indicating whether the font attributes will be changed according to the character code being used.
  bool? _updateAmbiguousTextFont;

  bool? get updateAmbiguousTextFont => _updateAmbiguousTextFont;
  set updateAmbiguousTextFont(bool? val) => _updateAmbiguousTextFont = val;


  /// Gets or sets a value determining whether the Aspose.Words.Properties.BuiltInDocumentProperties.CreatedTime property is updated before saving.
  /// The default value is false.
  bool? _updateCreatedTimeProperty;

  bool? get updateCreatedTimeProperty => _updateCreatedTimeProperty;
  set updateCreatedTimeProperty(bool? val) => _updateCreatedTimeProperty = val;


  /// Gets or sets a value indicating whether fields should be updated before saving the document to a fixed page format. The default value is true.
  bool? _updateFields;

  bool? get updateFields => _updateFields;
  set updateFields(bool? val) => _updateFields = val;


  /// Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastPrinted property is updated before saving.
  bool? _updateLastPrintedProperty;

  bool? get updateLastPrintedProperty => _updateLastPrintedProperty;
  set updateLastPrintedProperty(bool? val) => _updateLastPrintedProperty = val;


  /// Gets or sets a value indicating whether the Aspose.Words.Properties.BuiltInDocumentProperties.LastSavedTime property is updated before saving.
  /// The default value is false.
  bool? _updateLastSavedTimeProperty;

  bool? get updateLastSavedTimeProperty => _updateLastSavedTimeProperty;
  set updateLastSavedTimeProperty(bool? val) => _updateLastSavedTimeProperty = val;


  /// Gets or sets a value indicating whether to zip output or not.
  /// The default value is false.
  /// When set to true, output files will be zipped.
  bool? _zipOutput;

  bool? get zipOutput => _zipOutput;
  set zipOutput(bool? val) => _zipOutput = val;


  /// Gets the format of save.
  String? _saveFormat;

  String? get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SaveOptionsData data model.');
    }

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
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (allowEmbeddingPostScriptFonts != null) {
      _result['AllowEmbeddingPostScriptFonts'] = allowEmbeddingPostScriptFonts!;
    }

    if (customTimeZoneInfoData != null) {
      _result['CustomTimeZoneInfoData'] = customTimeZoneInfoData!.serialize();
    }

    if (dml3DEffectsRenderingMode != null) {
      switch (dml3DEffectsRenderingMode!) {
        case SaveOptionsData_Dml3DEffectsRenderingModeEnum.basic: _result['Dml3DEffectsRenderingMode'] = 'Basic'; break;
        case SaveOptionsData_Dml3DEffectsRenderingModeEnum.advanced: _result['Dml3DEffectsRenderingMode'] = 'Advanced'; break;
        default: break;
      }
    }

    if (dmlEffectsRenderingMode != null) {
      switch (dmlEffectsRenderingMode!) {
        case SaveOptionsData_DmlEffectsRenderingModeEnum.simplified: _result['DmlEffectsRenderingMode'] = 'Simplified'; break;
        case SaveOptionsData_DmlEffectsRenderingModeEnum.none: _result['DmlEffectsRenderingMode'] = 'None'; break;
        case SaveOptionsData_DmlEffectsRenderingModeEnum.fine: _result['DmlEffectsRenderingMode'] = 'Fine'; break;
        default: break;
      }
    }

    if (dmlRenderingMode != null) {
      switch (dmlRenderingMode!) {
        case SaveOptionsData_DmlRenderingModeEnum.fallback: _result['DmlRenderingMode'] = 'Fallback'; break;
        case SaveOptionsData_DmlRenderingModeEnum.drawingML: _result['DmlRenderingMode'] = 'DrawingML'; break;
        default: break;
      }
    }

    if (fileName != null) {
      _result['FileName'] = fileName!;
    }

    if (imlRenderingMode != null) {
      switch (imlRenderingMode!) {
        case SaveOptionsData_ImlRenderingModeEnum.fallback: _result['ImlRenderingMode'] = 'Fallback'; break;
        case SaveOptionsData_ImlRenderingModeEnum.inkML: _result['ImlRenderingMode'] = 'InkML'; break;
        default: break;
      }
    }

    if (updateAmbiguousTextFont != null) {
      _result['UpdateAmbiguousTextFont'] = updateAmbiguousTextFont!;
    }

    if (updateCreatedTimeProperty != null) {
      _result['UpdateCreatedTimeProperty'] = updateCreatedTimeProperty!;
    }

    if (updateFields != null) {
      _result['UpdateFields'] = updateFields!;
    }

    if (updateLastPrintedProperty != null) {
      _result['UpdateLastPrintedProperty'] = updateLastPrintedProperty!;
    }

    if (updateLastSavedTimeProperty != null) {
      _result['UpdateLastSavedTimeProperty'] = updateLastSavedTimeProperty!;
    }

    if (zipOutput != null) {
      _result['ZipOutput'] = zipOutput!;
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
    if (fileName == null)
    {
        throw new ApiException(400, 'Property FileName in SaveOptionsData is required.');
    }

    customTimeZoneInfoData?.validate();













  }
}

/// Gets or sets the value determining how 3D effects are rendered.
/// The default value is Aspose.Words.Saving.Dml3DEffectsRenderingMode.Basic.
enum SaveOptionsData_Dml3DEffectsRenderingModeEnum
{ 
  basic,
  advanced
}

/// Gets or sets the value determining how DrawingML effects are rendered.
/// { Simplified | None | Fine }.
/// The default value is Simplified.
/// This property is used when the document is exported to fixed page formats.
enum SaveOptionsData_DmlEffectsRenderingModeEnum
{ 
  simplified,
  none,
  fine
}

/// Gets or sets the option that controls how DrawingML shapes are rendered.
/// { Fallback | DrawingML }. The default value is Fallback.
/// This property is used when the document is exported to fixed page formats.
enum SaveOptionsData_DmlRenderingModeEnum
{ 
  fallback,
  drawingML
}

/// Gets or sets the value determining how ink (InkML) objects are rendered.
/// The default value is Aspose.Words.Saving.ImlRenderingMode.InkML.
enum SaveOptionsData_ImlRenderingModeEnum
{ 
  fallback,
  inkML
}

