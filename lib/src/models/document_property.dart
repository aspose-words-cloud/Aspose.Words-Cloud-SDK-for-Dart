/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_property.dart">
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

/// Words document property DTO.
class DocumentProperty extends LinkElement {
  /// Gets or sets the name of the document property.
  String? _name;

  String? get name => _name;
  set name(String? val) => _name = val;


  /// Gets or sets the value of the document property.
  String? _value;

  String? get value => _value;
  set value(String? val) => _value = val;


  /// Gets or sets a value indicating whether the property is built-in or not.
  /// If true the property is built-in, if false the property is custom.
  bool? _builtIn;

  bool? get builtIn => _builtIn;
  set builtIn(bool? val) => _builtIn = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocumentProperty data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('Value')) {
      value = json['Value'] as String;
    } else {
      value = null;
    }

    if (json.containsKey('BuiltIn')) {
      builtIn = json['BuiltIn'] as bool;
    } else {
      builtIn = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (name != null) {
      _result['Name'] = name!;
    }

    if (value != null) {
      _result['Value'] = value!;
    }

    if (builtIn != null) {
      _result['BuiltIn'] = builtIn!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (builtIn == null)
    {
        throw new ApiException(400, 'Property BuiltIn in DocumentProperty is required.');
    }
  }
}


