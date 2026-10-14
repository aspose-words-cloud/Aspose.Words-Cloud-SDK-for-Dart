/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_row_format.dart">
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

/// DTO container with formatting for a table row.
class TableRowFormat extends LinkElement {
  /// Gets or sets the height of the table row in points.
  double? _height;

  double? get height => _height;
  set height(double? val) => _height = val;


  /// Gets or sets the rule for determining the height of the table row.
  TableRowFormat_HeightRuleEnum? _heightRule;

  TableRowFormat_HeightRuleEnum? get heightRule => _heightRule;
  set heightRule(TableRowFormat_HeightRuleEnum? val) => _heightRule = val;


  /// Gets or sets a value indicating whether the text in a table row is allowed to split across a page break.
  bool? _allowBreakAcrossPages;

  bool? get allowBreakAcrossPages => _allowBreakAcrossPages;
  set allowBreakAcrossPages(bool? val) => _allowBreakAcrossPages = val;


  /// Gets or sets a value indicating whether the row is repeated as a table heading on every page when the table spans more than one page.
  bool? _headingFormat;

  bool? get headingFormat => _headingFormat;
  set headingFormat(bool? val) => _headingFormat = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableRowFormat data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('Height')) {
      height = json['Height'] as double;
    } else {
      height = null;
    }

    if (json.containsKey('HeightRule')) {
      switch (json['HeightRule'] as String) {
        case 'AtLeast': heightRule = TableRowFormat_HeightRuleEnum.atLeast; break;
        case 'Exactly': heightRule = TableRowFormat_HeightRuleEnum.exactly; break;
        case 'Auto': heightRule = TableRowFormat_HeightRuleEnum.auto; break;
        default: heightRule = null; break;
      }
    } else {
      heightRule = null;
    }

    if (json.containsKey('AllowBreakAcrossPages')) {
      allowBreakAcrossPages = json['AllowBreakAcrossPages'] as bool;
    } else {
      allowBreakAcrossPages = null;
    }

    if (json.containsKey('HeadingFormat')) {
      headingFormat = json['HeadingFormat'] as bool;
    } else {
      headingFormat = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (height != null) {
      _result['Height'] = height!;
    }

    if (heightRule != null) {
      switch (heightRule!) {
        case TableRowFormat_HeightRuleEnum.atLeast: _result['HeightRule'] = 'AtLeast'; break;
        case TableRowFormat_HeightRuleEnum.exactly: _result['HeightRule'] = 'Exactly'; break;
        case TableRowFormat_HeightRuleEnum.auto: _result['HeightRule'] = 'Auto'; break;
        default: break;
      }
    }

    if (allowBreakAcrossPages != null) {
      _result['AllowBreakAcrossPages'] = allowBreakAcrossPages!;
    }

    if (headingFormat != null) {
      _result['HeadingFormat'] = headingFormat!;
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

/// Gets or sets the rule for determining the height of the table row.
enum TableRowFormat_HeightRuleEnum
{ 
  atLeast,
  exactly,
  auto
}

