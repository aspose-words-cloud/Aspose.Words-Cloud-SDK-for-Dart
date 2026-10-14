/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="form_field_drop_down.dart">
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

/// FormField dropdownlist element.
class FormFieldDropDown extends FormField {
  /// Gets or sets the items array of a dropdown form field.
  /// Microsoft Word allows maximum 25 items in a dropdown form field.
  List<String?>? _dropDownItems;

  List<String?>? get dropDownItems => _dropDownItems;
  set dropDownItems(List<String?>? val) => _dropDownItems = val;


  /// Gets or sets the index specifying the currently selected item in a dropdown form field.
  int? _dropDownSelectedIndex;

  int? get dropDownSelectedIndex => _dropDownSelectedIndex;
  set dropDownSelectedIndex(int? val) => _dropDownSelectedIndex = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FormFieldDropDown data model.');
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

    if (json.containsKey('DropDownItems')) {
      // Array processing
      dropDownItems = <String>[];
      for(final _element in json['DropDownItems']) {
        dropDownItems!.add(_element as String);
      }
    } else {
      dropDownItems = null;
    }

    if (json.containsKey('DropDownSelectedIndex')) {
      dropDownSelectedIndex = json['DropDownSelectedIndex'] as int;
    } else {
      dropDownSelectedIndex = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (dropDownItems != null) {
      _result['DropDownItems'] = dropDownItems!;
    }

    if (dropDownSelectedIndex != null) {
      _result['DropDownSelectedIndex'] = dropDownSelectedIndex!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (dropDownItems == null)
    {
        throw new ApiException(400, 'Property DropDownItems in FormFieldDropDown is required.');
    }
  }
}


