/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="ooxml_save_options_data.dart">
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

/// Container class for docx/docm/dotx/dotm/flatopc save options.
abstract class OoxmlSaveOptionsData extends SaveOptionsData {
  /// Gets or sets the oOXML version for the output document.
  OoxmlSaveOptionsData_ComplianceEnum? _compliance;

  OoxmlSaveOptionsData_ComplianceEnum? get compliance => _compliance;
  set compliance(OoxmlSaveOptionsData_ComplianceEnum? val) => _compliance = val;


  /// Gets or sets the compression level.
  OoxmlSaveOptionsData_CompressionLevelEnum? _compressionLevel;

  OoxmlSaveOptionsData_CompressionLevelEnum? get compressionLevel => _compressionLevel;
  set compressionLevel(OoxmlSaveOptionsData_CompressionLevelEnum? val) => _compressionLevel = val;


  /// Gets or sets the password to encrypt document using ECMA376 Standard encryption algorithm.
  String? _password;

  String? get password => _password;
  set password(String? val) => _password = val;


  /// Gets or sets a value indicating whether to use pretty formats output.
  bool? _prettyFormat;

  bool? get prettyFormat => _prettyFormat;
  set prettyFormat(bool? val) => _prettyFormat = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize OoxmlSaveOptionsData data model.');
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

    if (json.containsKey('Compliance')) {
      switch (json['Compliance'] as String) {
        case 'Ecma376_2006': compliance = OoxmlSaveOptionsData_ComplianceEnum.ecma376_2006; break;
        case 'Iso29500_2008_Transitional': compliance = OoxmlSaveOptionsData_ComplianceEnum.iso29500_2008_Transitional; break;
        case 'Iso29500_2008_Strict': compliance = OoxmlSaveOptionsData_ComplianceEnum.iso29500_2008_Strict; break;
        default: compliance = null; break;
      }
    } else {
      compliance = null;
    }

    if (json.containsKey('CompressionLevel')) {
      switch (json['CompressionLevel'] as String) {
        case 'Normal': compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.normal; break;
        case 'Maximum': compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.maximum; break;
        case 'Fast': compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.fast; break;
        case 'SuperFast': compressionLevel = OoxmlSaveOptionsData_CompressionLevelEnum.superFast; break;
        default: compressionLevel = null; break;
      }
    } else {
      compressionLevel = null;
    }

    if (json.containsKey('Password')) {
      password = json['Password'] as String;
    } else {
      password = null;
    }

    if (json.containsKey('PrettyFormat')) {
      prettyFormat = json['PrettyFormat'] as bool;
    } else {
      prettyFormat = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (compliance != null) {
      switch (compliance!) {
        case OoxmlSaveOptionsData_ComplianceEnum.ecma376_2006: _result['Compliance'] = 'Ecma376_2006'; break;
        case OoxmlSaveOptionsData_ComplianceEnum.iso29500_2008_Transitional: _result['Compliance'] = 'Iso29500_2008_Transitional'; break;
        case OoxmlSaveOptionsData_ComplianceEnum.iso29500_2008_Strict: _result['Compliance'] = 'Iso29500_2008_Strict'; break;
        default: break;
      }
    }

    if (compressionLevel != null) {
      switch (compressionLevel!) {
        case OoxmlSaveOptionsData_CompressionLevelEnum.normal: _result['CompressionLevel'] = 'Normal'; break;
        case OoxmlSaveOptionsData_CompressionLevelEnum.maximum: _result['CompressionLevel'] = 'Maximum'; break;
        case OoxmlSaveOptionsData_CompressionLevelEnum.fast: _result['CompressionLevel'] = 'Fast'; break;
        case OoxmlSaveOptionsData_CompressionLevelEnum.superFast: _result['CompressionLevel'] = 'SuperFast'; break;
        default: break;
      }
    }

    if (password != null) {
      _result['Password'] = password!;
    }

    if (prettyFormat != null) {
      _result['PrettyFormat'] = prettyFormat!;
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

/// Gets or sets the oOXML version for the output document.
enum OoxmlSaveOptionsData_ComplianceEnum
{ 
  ecma376_2006,
  iso29500_2008_Transitional,
  iso29500_2008_Strict
}

/// Gets or sets the compression level.
enum OoxmlSaveOptionsData_CompressionLevelEnum
{ 
  normal,
  maximum,
  fast,
  superFast
}

