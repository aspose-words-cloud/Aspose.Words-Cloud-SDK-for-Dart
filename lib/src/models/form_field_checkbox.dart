/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_checkbox.dart">
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

/// FormField checkbox element.
class FormFieldCheckbox extends FormField {
  /// Gets or sets a value indicating whether the size of the textbox is automatic or specified explicitly.
  bool? _isCheckBoxExactSize;

  bool? get isCheckBoxExactSize => _isCheckBoxExactSize;
  set isCheckBoxExactSize(bool? val) => _isCheckBoxExactSize = val;


  /// Gets or sets the size of the checkbox in points. Has effect only when IsCheckBoxExactSize is true.
  double? _checkBoxSize;

  double? get checkBoxSize => _checkBoxSize;
  set checkBoxSize(double? val) => _checkBoxSize = val;


  /// Gets or sets the checked status of the check box form field.
  bool? _checked;

  bool? get checked => _checked;
  set checked(bool? val) => _checked = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FormFieldCheckbox data model.');
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

    if (json.containsKey('IsCheckBoxExactSize')) {
      isCheckBoxExactSize = json['IsCheckBoxExactSize'] as bool;
    } else {
      isCheckBoxExactSize = null;
    }

    if (json.containsKey('CheckBoxSize')) {
      checkBoxSize = json['CheckBoxSize'] as double;
    } else {
      checkBoxSize = null;
    }

    if (json.containsKey('Checked')) {
      checked = json['Checked'] as bool;
    } else {
      checked = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (isCheckBoxExactSize != null) {
      _result['IsCheckBoxExactSize'] = isCheckBoxExactSize!;
    }

    if (checkBoxSize != null) {
      _result['CheckBoxSize'] = checkBoxSize!;
    }

    if (checked != null) {
      _result['Checked'] = checked!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (checked == null)
    {
        throw new ApiException(400, 'Property Checked in FormFieldCheckbox is required.');
    }
  }
}


