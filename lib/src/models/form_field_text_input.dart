/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_text_input.dart">
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

/// FormField text input element.
class FormFieldTextInput extends FormField {
  /// Gets or sets text formatting for the text form field.
  /// If the text form field contains regular text, then valid format strings are "", "UPPERCASE", "LOWERCASE", "FIRST CAPITAL" and "TITLE CASE". The strings are case-insensitive.If the text form field contains a number or a date/time value, then valid format strings are number or date and time format strings.
  String? _textInputFormat;

  String? get textInputFormat => _textInputFormat;
  set textInputFormat(String? val) => _textInputFormat = val;


  /// Gets or sets the type of the text form field.
  FormFieldTextInput_TextInputTypeEnum? _textInputType;

  FormFieldTextInput_TextInputTypeEnum? get textInputType => _textInputType;
  set textInputType(FormFieldTextInput_TextInputTypeEnum? val) => _textInputType = val;


  /// Gets or sets the default string or a calculation expression of the text form field.
  /// The meaning of this property depends on the value of the TextInputType property.When TextInputType is Regular or Number, this string specifies the default string for the text form field. This string is the content that Microsoft Word will display in the document when the form field is empty.When TextInputType is Calculated, then this string holds the expression to be calculated. The expression needs to be a formula valid according to Microsoft Word formula field requirements. When you set a new expression using this property, Aspose.Words calculates the formula result automatically and inserts it into the form field.
  String? _textInputDefault;

  String? get textInputDefault => _textInputDefault;
  set textInputDefault(String? val) => _textInputDefault = val;


  /// Gets or sets the maximum length for the text field. Zero when the length is not limited.
  int? _maxLength;

  int? get maxLength => _maxLength;
  set maxLength(int? val) => _maxLength = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FormFieldTextInput data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('NodeId')) {
      nodeId = json['NodeId'] as String;
    } else {
      nodeId = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('Enabled')) {
      enabled = json['Enabled'] as bool;
    } else {
      enabled = null;
    }

    if (json.containsKey('StatusText')) {
      statusText = json['StatusText'] as String;
    } else {
      statusText = null;
    }

    if (json.containsKey('OwnStatus')) {
      ownStatus = json['OwnStatus'] as bool;
    } else {
      ownStatus = null;
    }

    if (json.containsKey('HelpText')) {
      helpText = json['HelpText'] as String;
    } else {
      helpText = null;
    }

    if (json.containsKey('OwnHelp')) {
      ownHelp = json['OwnHelp'] as bool;
    } else {
      ownHelp = null;
    }

    if (json.containsKey('CalculateOnExit')) {
      calculateOnExit = json['CalculateOnExit'] as bool;
    } else {
      calculateOnExit = null;
    }

    if (json.containsKey('EntryMacro')) {
      entryMacro = json['EntryMacro'] as String;
    } else {
      entryMacro = null;
    }

    if (json.containsKey('ExitMacro')) {
      exitMacro = json['ExitMacro'] as String;
    } else {
      exitMacro = null;
    }

    if (json.containsKey('TextInputFormat')) {
      textInputFormat = json['TextInputFormat'] as String;
    } else {
      textInputFormat = null;
    }

    if (json.containsKey('TextInputType')) {
      switch (json['TextInputType'] as String) {
        case 'Regular': textInputType = FormFieldTextInput_TextInputTypeEnum.regular; break;
        case 'Number': textInputType = FormFieldTextInput_TextInputTypeEnum.number; break;
        case 'Date': textInputType = FormFieldTextInput_TextInputTypeEnum.date; break;
        case 'CurrentDate': textInputType = FormFieldTextInput_TextInputTypeEnum.currentDate; break;
        case 'CurrentTime': textInputType = FormFieldTextInput_TextInputTypeEnum.currentTime; break;
        case 'Calculated': textInputType = FormFieldTextInput_TextInputTypeEnum.calculated; break;
        default: textInputType = null; break;
      }
    } else {
      textInputType = null;
    }

    if (json.containsKey('TextInputDefault')) {
      textInputDefault = json['TextInputDefault'] as String;
    } else {
      textInputDefault = null;
    }

    if (json.containsKey('MaxLength')) {
      maxLength = json['MaxLength'] as int;
    } else {
      maxLength = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (textInputFormat != null) {
      _result['TextInputFormat'] = textInputFormat!;
    }

    if (textInputType != null) {
      switch (textInputType!) {
        case FormFieldTextInput_TextInputTypeEnum.regular: _result['TextInputType'] = 'Regular'; break;
        case FormFieldTextInput_TextInputTypeEnum.number: _result['TextInputType'] = 'Number'; break;
        case FormFieldTextInput_TextInputTypeEnum.date: _result['TextInputType'] = 'Date'; break;
        case FormFieldTextInput_TextInputTypeEnum.currentDate: _result['TextInputType'] = 'CurrentDate'; break;
        case FormFieldTextInput_TextInputTypeEnum.currentTime: _result['TextInputType'] = 'CurrentTime'; break;
        case FormFieldTextInput_TextInputTypeEnum.calculated: _result['TextInputType'] = 'Calculated'; break;
        default: break;
      }
    }

    if (textInputDefault != null) {
      _result['TextInputDefault'] = textInputDefault!;
    }

    if (maxLength != null) {
      _result['MaxLength'] = maxLength!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (textInputFormat == null)
    {
        throw new ApiException(400, 'Property TextInputFormat in FormFieldTextInput is required.');
    }
    if (textInputDefault == null)
    {
        throw new ApiException(400, 'Property TextInputDefault in FormFieldTextInput is required.');
    }
  }
}

/// Gets or sets the type of the text form field.
enum FormFieldTextInput_TextInputTypeEnum
{ 
  regular,
  number,
  date,
  currentDate,
  currentTime,
  calculated
}

