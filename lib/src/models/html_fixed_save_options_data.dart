/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="html_fixed_save_options_data.dart">
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

/// Container class for fixed html save options.
class HtmlFixedSaveOptionsData extends FixedPageSaveOptionsData {
  /// Gets or sets the prefix which is added to all class names in style.css file.
  /// The default value is "aw".
  String? _cssClassNamesPrefix;

  String? get cssClassNamesPrefix => _cssClassNamesPrefix;
  set cssClassNamesPrefix(String? val) => _cssClassNamesPrefix = val;


  /// Gets or sets the character encoding.
  String? _encoding;

  String? get encoding => _encoding;
  set encoding(String? val) => _encoding = val;


  /// Gets or sets a value indicating whether the CSS (Cascading Style Sheet) should be embedded into the Html document.
  bool? _exportEmbeddedCss;

  bool? get exportEmbeddedCss => _exportEmbeddedCss;
  set exportEmbeddedCss(bool? val) => _exportEmbeddedCss = val;


  /// Gets or sets a value indicating whether fonts should be embedded into the Html document in Base64 format.
  bool? _exportEmbeddedFonts;

  bool? get exportEmbeddedFonts => _exportEmbeddedFonts;
  set exportEmbeddedFonts(bool? val) => _exportEmbeddedFonts = val;


  /// Gets or sets a value indicating whether images should be embedded into the Html document in Base64 format.
  bool? _exportEmbeddedImages;

  bool? get exportEmbeddedImages => _exportEmbeddedImages;
  set exportEmbeddedImages(bool? val) => _exportEmbeddedImages = val;


  /// Gets or sets a value indicating whether form fields are exported as interactive items (as 'input' tag) rather than converted to text or graphics.
  bool? _exportFormFields;

  bool? get exportFormFields => _exportFormFields;
  set exportFormFields(bool? val) => _exportFormFields = val;


  /// Gets or sets the export format of fonts.
  HtmlFixedSaveOptionsData_FontFormatEnum? _fontFormat;

  HtmlFixedSaveOptionsData_FontFormatEnum? get fontFormat => _fontFormat;
  set fontFormat(HtmlFixedSaveOptionsData_FontFormatEnum? val) => _fontFormat = val;


  /// Gets or sets a prefix that is prepended to all generated element IDs in the output document.
  /// The default value is null and no prefix is prepended.
  /// If the prefix is specified, it can contain only letters, digits, underscores, and hyphens,
  /// and must start with a letter.
  String? _idPrefix;

  String? get idPrefix => _idPrefix;
  set idPrefix(String? val) => _idPrefix = val;


  /// Gets or sets the horizontal alignment of pages in the HTML document.
  /// The default value is HtmlFixedHorizontalPageAlignment.Center.
  HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum? _pageHorizontalAlignment;

  HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum? get pageHorizontalAlignment => _pageHorizontalAlignment;
  set pageHorizontalAlignment(HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum? val) => _pageHorizontalAlignment = val;


  /// Gets or sets the margin around pages in HTML document.
  /// The margins value is measured in points and should be equal to or greater than 0.
  /// The default value is 10 points.
  /// Depends on the value of PageHorizontalAlignment property:
  /// Defines top, bottom and left page margins if the value is Left.
  /// Defines top, bottom and right page margins if the value is Right.
  /// Defines top and bottom page margins if the value is Center.
  double? _pageMargins;

  double? get pageMargins => _pageMargins;
  set pageMargins(double? val) => _pageMargins = val;


  /// Gets or sets the physical folder where resources are saved when exporting the document.
  String? _resourcesFolder;

  String? get resourcesFolder => _resourcesFolder;
  set resourcesFolder(String? val) => _resourcesFolder = val;


  /// Gets or sets the name of the folder used to construct resource URIs.
  String? _resourcesFolderAlias;

  String? get resourcesFolderAlias => _resourcesFolderAlias;
  set resourcesFolderAlias(String? val) => _resourcesFolderAlias = val;


  /// Gets or sets a value indicating whether "@font-face" CSS rules should be placed into a separate file "fontFaces.css" when a document is being saved with external stylesheet (that is, when Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedCss is false). The default value is false, all CSS rules are written into single file "styles.css".
  /// Setting this property to true restores the old behavior (separate files) for compatibility with legacy code.
  bool? _saveFontFaceCssSeparately;

  bool? get saveFontFaceCssSeparately => _saveFontFaceCssSeparately;
  set saveFontFaceCssSeparately(bool? val) => _saveFontFaceCssSeparately = val;


  /// Gets or sets a value indicating whether to show border around pages.
  bool? _showPageBorder;

  bool? get showPageBorder => _showPageBorder;
  set showPageBorder(bool? val) => _showPageBorder = val;


  /// Gets or sets a value indicating whether fonts from target machine must be used to display the document. If this flag is set to true, Aspose.Words.Saving.HtmlFixedSaveOptions.FontFormat and Aspose.Words.Saving.HtmlFixedSaveOptions.ExportEmbeddedFonts properties do not have effect, also Aspose.Words.Saving.HtmlFixedSaveOptions.ResourceSavingCallback is not fired for fonts. The default value is false.
  bool? _useTargetMachineFonts;

  bool? get useTargetMachineFonts => _useTargetMachineFonts;
  set useTargetMachineFonts(bool? val) => _useTargetMachineFonts = val;


  /// Gets the format of save.
  String? _saveFormat = 'htmlfixed';

  @override
  String? get saveFormat => _saveFormat;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize HtmlFixedSaveOptionsData data model.');
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

    if (json.containsKey('CssClassNamesPrefix')) {
      cssClassNamesPrefix = json['CssClassNamesPrefix'] as String;
    } else {
      cssClassNamesPrefix = null;
    }

    if (json.containsKey('Encoding')) {
      encoding = json['Encoding'] as String;
    } else {
      encoding = null;
    }

    if (json.containsKey('ExportEmbeddedCss')) {
      exportEmbeddedCss = json['ExportEmbeddedCss'] as bool;
    } else {
      exportEmbeddedCss = null;
    }

    if (json.containsKey('ExportEmbeddedFonts')) {
      exportEmbeddedFonts = json['ExportEmbeddedFonts'] as bool;
    } else {
      exportEmbeddedFonts = null;
    }

    if (json.containsKey('ExportEmbeddedImages')) {
      exportEmbeddedImages = json['ExportEmbeddedImages'] as bool;
    } else {
      exportEmbeddedImages = null;
    }

    if (json.containsKey('ExportFormFields')) {
      exportFormFields = json['ExportFormFields'] as bool;
    } else {
      exportFormFields = null;
    }

    if (json.containsKey('FontFormat')) {
      switch (json['FontFormat'] as String) {
        case 'Woff': fontFormat = HtmlFixedSaveOptionsData_FontFormatEnum.woff; break;
        case 'Ttf': fontFormat = HtmlFixedSaveOptionsData_FontFormatEnum.ttf; break;
        default: fontFormat = null; break;
      }
    } else {
      fontFormat = null;
    }

    if (json.containsKey('IdPrefix')) {
      idPrefix = json['IdPrefix'] as String;
    } else {
      idPrefix = null;
    }

    if (json.containsKey('PageHorizontalAlignment')) {
      switch (json['PageHorizontalAlignment'] as String) {
        case 'Left': pageHorizontalAlignment = HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum.left; break;
        case 'Center': pageHorizontalAlignment = HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum.center; break;
        case 'Right': pageHorizontalAlignment = HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum.right; break;
        default: pageHorizontalAlignment = null; break;
      }
    } else {
      pageHorizontalAlignment = null;
    }

    if (json.containsKey('PageMargins')) {
      pageMargins = json['PageMargins'] as double;
    } else {
      pageMargins = null;
    }

    if (json.containsKey('ResourcesFolder')) {
      resourcesFolder = json['ResourcesFolder'] as String;
    } else {
      resourcesFolder = null;
    }

    if (json.containsKey('ResourcesFolderAlias')) {
      resourcesFolderAlias = json['ResourcesFolderAlias'] as String;
    } else {
      resourcesFolderAlias = null;
    }

    if (json.containsKey('SaveFontFaceCssSeparately')) {
      saveFontFaceCssSeparately = json['SaveFontFaceCssSeparately'] as bool;
    } else {
      saveFontFaceCssSeparately = null;
    }

    if (json.containsKey('ShowPageBorder')) {
      showPageBorder = json['ShowPageBorder'] as bool;
    } else {
      showPageBorder = null;
    }

    if (json.containsKey('UseTargetMachineFonts')) {
      useTargetMachineFonts = json['UseTargetMachineFonts'] as bool;
    } else {
      useTargetMachineFonts = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (cssClassNamesPrefix != null) {
      _result['CssClassNamesPrefix'] = cssClassNamesPrefix!;
    }

    if (encoding != null) {
      _result['Encoding'] = encoding!;
    }

    if (exportEmbeddedCss != null) {
      _result['ExportEmbeddedCss'] = exportEmbeddedCss!;
    }

    if (exportEmbeddedFonts != null) {
      _result['ExportEmbeddedFonts'] = exportEmbeddedFonts!;
    }

    if (exportEmbeddedImages != null) {
      _result['ExportEmbeddedImages'] = exportEmbeddedImages!;
    }

    if (exportFormFields != null) {
      _result['ExportFormFields'] = exportFormFields!;
    }

    if (fontFormat != null) {
      switch (fontFormat!) {
        case HtmlFixedSaveOptionsData_FontFormatEnum.woff: _result['FontFormat'] = 'Woff'; break;
        case HtmlFixedSaveOptionsData_FontFormatEnum.ttf: _result['FontFormat'] = 'Ttf'; break;
        default: break;
      }
    }

    if (idPrefix != null) {
      _result['IdPrefix'] = idPrefix!;
    }

    if (pageHorizontalAlignment != null) {
      switch (pageHorizontalAlignment!) {
        case HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum.left: _result['PageHorizontalAlignment'] = 'Left'; break;
        case HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum.center: _result['PageHorizontalAlignment'] = 'Center'; break;
        case HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum.right: _result['PageHorizontalAlignment'] = 'Right'; break;
        default: break;
      }
    }

    if (pageMargins != null) {
      _result['PageMargins'] = pageMargins!;
    }

    if (resourcesFolder != null) {
      _result['ResourcesFolder'] = resourcesFolder!;
    }

    if (resourcesFolderAlias != null) {
      _result['ResourcesFolderAlias'] = resourcesFolderAlias!;
    }

    if (saveFontFaceCssSeparately != null) {
      _result['SaveFontFaceCssSeparately'] = saveFontFaceCssSeparately!;
    }

    if (showPageBorder != null) {
      _result['ShowPageBorder'] = showPageBorder!;
    }

    if (useTargetMachineFonts != null) {
      _result['UseTargetMachineFonts'] = useTargetMachineFonts!;
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

/// Gets or sets the export format of fonts.
enum HtmlFixedSaveOptionsData_FontFormatEnum
{ 
  woff,
  ttf
}

/// Gets or sets the horizontal alignment of pages in the HTML document.
/// The default value is HtmlFixedHorizontalPageAlignment.Center.
enum HtmlFixedSaveOptionsData_PageHorizontalAlignmentEnum
{ 
  left,
  center,
  right
}

