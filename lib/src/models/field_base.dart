/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="field_base.dart">
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

/// Field.
abstract class FieldBase implements ModelBase {
  /// Gets or sets the LCID of the field.
  String? _localeId;

  String? get localeId => _localeId;
  set localeId(String? val) => _localeId = val;


  /// Gets or sets the field code.
  String? _fieldCode;

  String? get fieldCode => _fieldCode;
  set fieldCode(String? val) => _fieldCode = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize FieldBase data model.');
    }

    if (json.containsKey('LocaleId')) {
      localeId = json['LocaleId'] as String;
    } else {
      localeId = null;
    }

    if (json.containsKey('FieldCode')) {
      fieldCode = json['FieldCode'] as String;
    } else {
      fieldCode = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (localeId != null) {
      _result['LocaleId'] = localeId!;
    }

    if (fieldCode != null) {
      _result['FieldCode'] = fieldCode!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (fieldCode == null)
    {
        throw new ApiException(400, 'Property FieldCode in FieldBase is required.');
    }
  }
}


