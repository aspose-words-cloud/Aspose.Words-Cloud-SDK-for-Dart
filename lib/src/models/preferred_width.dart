/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="preferred_width.dart">
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

/// DTO container with a preferred width value.
class PreferredWidth implements ModelBase {
  /// Gets or sets the unit of measure used for this preferred width value.
  PreferredWidth_TypeEnum? _type;

  PreferredWidth_TypeEnum? get type => _type;
  set type(PreferredWidth_TypeEnum? val) => _type = val;


  /// Gets or sets the preferred width value. The unit of measure is specified in the Type property.
  double? _value;

  double? get value => _value;
  set value(double? val) => _value = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PreferredWidth data model.');
    }

    if (json.containsKey('Type')) {
      switch (json['Type'] as String) {
        case 'Auto': type = PreferredWidth_TypeEnum.auto; break;
        case 'Percent': type = PreferredWidth_TypeEnum.percent; break;
        case 'Points': type = PreferredWidth_TypeEnum.points; break;
        default: type = null; break;
      }
    } else {
      type = null;
    }

    if (json.containsKey('Value')) {
      value = json['Value'] as double;
    } else {
      value = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (type != null) {
      switch (type!) {
        case PreferredWidth_TypeEnum.auto: _result['Type'] = 'Auto'; break;
        case PreferredWidth_TypeEnum.percent: _result['Type'] = 'Percent'; break;
        case PreferredWidth_TypeEnum.points: _result['Type'] = 'Points'; break;
        default: break;
      }
    }

    if (value != null) {
      _result['Value'] = value!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (type == null)
    {
        throw new ApiException(400, 'Property Type in PreferredWidth is required.');
    }
  }
}

/// Gets or sets the unit of measure used for this preferred width value.
enum PreferredWidth_TypeEnum
{ 
  auto,
  percent,
  points
}

