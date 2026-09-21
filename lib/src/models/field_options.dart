/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="field_options.dart">
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

/// DTO for field options.
class FieldOptions implements ModelBase {
  /// Gets or sets Current User.
  UserInformation? _currentUser;

  UserInformation? get currentUser => _currentUser;
  set currentUser(UserInformation? val) => _currentUser = val;


  /// Gets or sets Custom Toc Style Separator.
  String? _customTocStyleSeparator;

  String? get customTocStyleSeparator => _customTocStyleSeparator;
  set customTocStyleSeparator(String? val) => _customTocStyleSeparator = val;


  /// Gets or sets Default Document Author.
  String? _defaultDocumentAuthor;

  String? get defaultDocumentAuthor => _defaultDocumentAuthor;
  set defaultDocumentAuthor(String? val) => _defaultDocumentAuthor = val;


  /// Gets or sets Field Index Format.
  FieldOptions_FieldIndexFormatEnum? _fieldIndexFormat;

  FieldOptions_FieldIndexFormatEnum? get fieldIndexFormat => _fieldIndexFormat;
  set fieldIndexFormat(FieldOptions_FieldIndexFormatEnum? val) => _fieldIndexFormat = val;


  /// Gets or sets Field Update Culture Name.
  /// It is used for all fields if FieldUpdateCultureSource is FieldCode.
  String? _fieldUpdateCultureName;

  String? get fieldUpdateCultureName => _fieldUpdateCultureName;
  set fieldUpdateCultureName(String? val) => _fieldUpdateCultureName = val;


  /// Gets or sets Field Update Culture Source.
  FieldOptions_FieldUpdateCultureSourceEnum? _fieldUpdateCultureSource;

  FieldOptions_FieldUpdateCultureSourceEnum? get fieldUpdateCultureSource => _fieldUpdateCultureSource;
  set fieldUpdateCultureSource(FieldOptions_FieldUpdateCultureSourceEnum? val) => _fieldUpdateCultureSource = val;


  /// Gets or sets File Name.
  String? _fileName;

  String? get fileName => _fileName;
  set fileName(String? val) => _fileName = val;


  /// Gets or sets if Bidi Text Supported OnUpdate.
  bool? _isBidiTextSupportedOnUpdate;

  bool? get isBidiTextSupportedOnUpdate => _isBidiTextSupportedOnUpdate;
  set isBidiTextSupportedOnUpdate(bool? val) => _isBidiTextSupportedOnUpdate = val;


  /// Gets or sets if Legacy Number Format.
  bool? _legacyNumberFormat;

  bool? get legacyNumberFormat => _legacyNumberFormat;
  set legacyNumberFormat(bool? val) => _legacyNumberFormat = val;


  /// Gets or sets PreProcess Culture Name.
  /// It is a culture code for DOC fields.
  String? _preProcessCultureName;

  String? get preProcessCultureName => _preProcessCultureName;
  set preProcessCultureName(String? val) => _preProcessCultureName = val;


  /// Gets or sets Template Name.
  String? _templateName;

  String? get templateName => _templateName;
  set templateName(String? val) => _templateName = val;


  /// Gets or sets if Use Invariant Culture Number Format.
  bool? _useInvariantCultureNumberFormat;

  bool? get useInvariantCultureNumberFormat => _useInvariantCultureNumberFormat;
  set useInvariantCultureNumberFormat(bool? val) => _useInvariantCultureNumberFormat = val;


  /// Gets or sets BuiltIn Templates Paths.
  List<String?>? _builtInTemplatesPaths;

  List<String?>? get builtInTemplatesPaths => _builtInTemplatesPaths;
  set builtInTemplatesPaths(List<String?>? val) => _builtInTemplatesPaths = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FieldOptions data model.');
    }

    if (json.containsKey('CurrentUser')) {
      currentUser = ModelBase.createInstance< UserInformation >(json['CurrentUser'] as Map<String, dynamic>);
    } else {
      currentUser = null;
    }

    if (json.containsKey('CustomTocStyleSeparator')) {
      customTocStyleSeparator = json['CustomTocStyleSeparator'] as String;
    } else {
      customTocStyleSeparator = null;
    }

    if (json.containsKey('DefaultDocumentAuthor')) {
      defaultDocumentAuthor = json['DefaultDocumentAuthor'] as String;
    } else {
      defaultDocumentAuthor = null;
    }

    if (json.containsKey('FieldIndexFormat')) {
      switch (json['FieldIndexFormat'] as String) {
        case 'Template': fieldIndexFormat = FieldOptions_FieldIndexFormatEnum.template; break;
        case 'Classic': fieldIndexFormat = FieldOptions_FieldIndexFormatEnum.classic; break;
        case 'Fancy': fieldIndexFormat = FieldOptions_FieldIndexFormatEnum.fancy; break;
        case 'Modern': fieldIndexFormat = FieldOptions_FieldIndexFormatEnum.modern; break;
        case 'Bulleted': fieldIndexFormat = FieldOptions_FieldIndexFormatEnum.bulleted; break;
        case 'Formal': fieldIndexFormat = FieldOptions_FieldIndexFormatEnum.formal; break;
        case 'Simple': fieldIndexFormat = FieldOptions_FieldIndexFormatEnum.simple; break;
        default: fieldIndexFormat = null; break;
      }
    } else {
      fieldIndexFormat = null;
    }

    if (json.containsKey('FieldUpdateCultureName')) {
      fieldUpdateCultureName = json['FieldUpdateCultureName'] as String;
    } else {
      fieldUpdateCultureName = null;
    }

    if (json.containsKey('FieldUpdateCultureSource')) {
      switch (json['FieldUpdateCultureSource'] as String) {
        case 'CurrentThread': fieldUpdateCultureSource = FieldOptions_FieldUpdateCultureSourceEnum.currentThread; break;
        case 'FieldCode': fieldUpdateCultureSource = FieldOptions_FieldUpdateCultureSourceEnum.fieldCode; break;
        default: fieldUpdateCultureSource = null; break;
      }
    } else {
      fieldUpdateCultureSource = null;
    }

    if (json.containsKey('FileName')) {
      fileName = json['FileName'] as String;
    } else {
      fileName = null;
    }

    if (json.containsKey('IsBidiTextSupportedOnUpdate')) {
      isBidiTextSupportedOnUpdate = json['IsBidiTextSupportedOnUpdate'] as bool;
    } else {
      isBidiTextSupportedOnUpdate = null;
    }

    if (json.containsKey('LegacyNumberFormat')) {
      legacyNumberFormat = json['LegacyNumberFormat'] as bool;
    } else {
      legacyNumberFormat = null;
    }

    if (json.containsKey('PreProcessCultureName')) {
      preProcessCultureName = json['PreProcessCultureName'] as String;
    } else {
      preProcessCultureName = null;
    }

    if (json.containsKey('TemplateName')) {
      templateName = json['TemplateName'] as String;
    } else {
      templateName = null;
    }

    if (json.containsKey('UseInvariantCultureNumberFormat')) {
      useInvariantCultureNumberFormat = json['UseInvariantCultureNumberFormat'] as bool;
    } else {
      useInvariantCultureNumberFormat = null;
    }

    if (json.containsKey('BuiltInTemplatesPaths')) {
      // Array processing
      builtInTemplatesPaths = <String>[];
      for(final _element in json['BuiltInTemplatesPaths']) {
        builtInTemplatesPaths!.add(_element as String);
      }
    } else {
      builtInTemplatesPaths = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (currentUser != null) {
      _result['CurrentUser'] = currentUser!.serialize();
    }

    if (customTocStyleSeparator != null) {
      _result['CustomTocStyleSeparator'] = customTocStyleSeparator!;
    }

    if (defaultDocumentAuthor != null) {
      _result['DefaultDocumentAuthor'] = defaultDocumentAuthor!;
    }

    if (fieldIndexFormat != null) {
      switch (fieldIndexFormat!) {
        case FieldOptions_FieldIndexFormatEnum.template: _result['FieldIndexFormat'] = 'Template'; break;
        case FieldOptions_FieldIndexFormatEnum.classic: _result['FieldIndexFormat'] = 'Classic'; break;
        case FieldOptions_FieldIndexFormatEnum.fancy: _result['FieldIndexFormat'] = 'Fancy'; break;
        case FieldOptions_FieldIndexFormatEnum.modern: _result['FieldIndexFormat'] = 'Modern'; break;
        case FieldOptions_FieldIndexFormatEnum.bulleted: _result['FieldIndexFormat'] = 'Bulleted'; break;
        case FieldOptions_FieldIndexFormatEnum.formal: _result['FieldIndexFormat'] = 'Formal'; break;
        case FieldOptions_FieldIndexFormatEnum.simple: _result['FieldIndexFormat'] = 'Simple'; break;
        default: break;
      }
    }

    if (fieldUpdateCultureName != null) {
      _result['FieldUpdateCultureName'] = fieldUpdateCultureName!;
    }

    if (fieldUpdateCultureSource != null) {
      switch (fieldUpdateCultureSource!) {
        case FieldOptions_FieldUpdateCultureSourceEnum.currentThread: _result['FieldUpdateCultureSource'] = 'CurrentThread'; break;
        case FieldOptions_FieldUpdateCultureSourceEnum.fieldCode: _result['FieldUpdateCultureSource'] = 'FieldCode'; break;
        default: break;
      }
    }

    if (fileName != null) {
      _result['FileName'] = fileName!;
    }

    if (isBidiTextSupportedOnUpdate != null) {
      _result['IsBidiTextSupportedOnUpdate'] = isBidiTextSupportedOnUpdate!;
    }

    if (legacyNumberFormat != null) {
      _result['LegacyNumberFormat'] = legacyNumberFormat!;
    }

    if (preProcessCultureName != null) {
      _result['PreProcessCultureName'] = preProcessCultureName!;
    }

    if (templateName != null) {
      _result['TemplateName'] = templateName!;
    }

    if (useInvariantCultureNumberFormat != null) {
      _result['UseInvariantCultureNumberFormat'] = useInvariantCultureNumberFormat!;
    }

    if (builtInTemplatesPaths != null) {
      _result['BuiltInTemplatesPaths'] = builtInTemplatesPaths!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    currentUser?.validate();













  }
}

/// Gets or sets Field Index Format.
enum FieldOptions_FieldIndexFormatEnum
{ 
  template,
  classic,
  fancy,
  modern,
  bulleted,
  formal,
  simple
}

/// Gets or sets Field Update Culture Source.
enum FieldOptions_FieldUpdateCultureSourceEnum
{ 
  currentThread,
  fieldCode
}

