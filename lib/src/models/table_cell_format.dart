/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_cell_format.dart">
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

/// DTO container with all formatting for a table row.
class TableCellFormat extends LinkElement {
  /// Gets or sets the amount of space (in points) to add below the contents of the cell.
  double? _bottomPadding;

  double? get bottomPadding => _bottomPadding;
  set bottomPadding(double? val) => _bottomPadding = val;


  /// Gets or sets a value indicating whether to fit text in the cell, compress each paragraph to the width of the cell.
  bool? _fitText;

  bool? get fitText => _fitText;
  set fitText(bool? val) => _fitText = val;


  /// Gets or sets the option that controls how the cell is merged horizontally with other cells in the row.
  TableCellFormat_HorizontalMergeEnum? _horizontalMerge;

  TableCellFormat_HorizontalMergeEnum? get horizontalMerge => _horizontalMerge;
  set horizontalMerge(TableCellFormat_HorizontalMergeEnum? val) => _horizontalMerge = val;


  /// Gets or sets the amount of space (in points) to add to the left of the contents of the cell.
  double? _leftPadding;

  double? get leftPadding => _leftPadding;
  set leftPadding(double? val) => _leftPadding = val;


  /// Gets or sets the orientation of text in a table cell.
  TableCellFormat_OrientationEnum? _orientation;

  TableCellFormat_OrientationEnum? get orientation => _orientation;
  set orientation(TableCellFormat_OrientationEnum? val) => _orientation = val;


  /// Gets or sets the preferred width of the cell.
  /// The preferred width (along with the table's Auto Fit option) determines how the actual width of the cell is calculated by the table layout algorithm. Table layout can be performed by Aspose.Words when it saves the document or by Microsoft Word when it displays the document.The preferred width can be specified in points or in percent. The preferred width can also be specified as "auto", which means no preferred width is specified.The default value is Auto.
  PreferredWidth? _preferredWidth;

  PreferredWidth? get preferredWidth => _preferredWidth;
  set preferredWidth(PreferredWidth? val) => _preferredWidth = val;


  /// Gets or sets the amount of space (in points) to add to the right of the contents of the cell.
  double? _rightPadding;

  double? get rightPadding => _rightPadding;
  set rightPadding(double? val) => _rightPadding = val;


  /// Gets or sets the amount of space (in points) to add above the contents of the cell.
  double? _topPadding;

  double? get topPadding => _topPadding;
  set topPadding(double? val) => _topPadding = val;


  /// Gets or sets the vertical alignment of text in the cell.
  TableCellFormat_VerticalAlignmentEnum? _verticalAlignment;

  TableCellFormat_VerticalAlignmentEnum? get verticalAlignment => _verticalAlignment;
  set verticalAlignment(TableCellFormat_VerticalAlignmentEnum? val) => _verticalAlignment = val;


  /// Gets or sets the option that controls how the cell is merged with other cells vertically.
  /// Cells can only be merged vertically if their left and right boundaries are identical.When cells are vertically merged, the display areas of the merged cells are consolidated. The consolidated area is used to display the contents of the first vertically merged cell and all other vertically merged cells must be empty.
  TableCellFormat_VerticalMergeEnum? _verticalMerge;

  TableCellFormat_VerticalMergeEnum? get verticalMerge => _verticalMerge;
  set verticalMerge(TableCellFormat_VerticalMergeEnum? val) => _verticalMerge = val;


  /// Gets or sets the width of the cell in points.
  /// The width is calculated by Aspose.Words on document loading and saving. Currently, not every combination of table, cell and document properties is supported. The returned value may not be accurate for some documents. It may not exactly match the cell width as calculated by MS Word when the document is opened in MS Word.Setting this property is not recommended. There is no guarantee that the cell will actually have the set width. The width may be adjusted to accommodate cell contents in an auto-fit table layout. Cells in other rows may have conflicting width settings. The table may be resized to fit into the container or to meet table width settings. Consider using PreferredWidth for setting the cell width. Setting this property sets PreferredWidth implicitly since version 15.8.
  double? _width;

  double? get width => _width;
  set width(double? val) => _width = val;


  /// Gets or sets a value indicating whether to wrap text in the cell.
  bool? _wrapText;

  bool? get wrapText => _wrapText;
  set wrapText(bool? val) => _wrapText = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableCellFormat data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('BottomPadding')) {
      bottomPadding = json['BottomPadding'] as double;
    } else {
      bottomPadding = null;
    }

    if (json.containsKey('FitText')) {
      fitText = json['FitText'] as bool;
    } else {
      fitText = null;
    }

    if (json.containsKey('HorizontalMerge')) {
      switch (json['HorizontalMerge'] as String) {
        case 'None': horizontalMerge = TableCellFormat_HorizontalMergeEnum.none; break;
        case 'First': horizontalMerge = TableCellFormat_HorizontalMergeEnum.first; break;
        case 'Previous': horizontalMerge = TableCellFormat_HorizontalMergeEnum.previous; break;
        default: horizontalMerge = null; break;
      }
    } else {
      horizontalMerge = null;
    }

    if (json.containsKey('LeftPadding')) {
      leftPadding = json['LeftPadding'] as double;
    } else {
      leftPadding = null;
    }

    if (json.containsKey('Orientation')) {
      switch (json['Orientation'] as String) {
        case 'Horizontal': orientation = TableCellFormat_OrientationEnum.horizontal; break;
        case 'Downward': orientation = TableCellFormat_OrientationEnum.downward; break;
        case 'Upward': orientation = TableCellFormat_OrientationEnum.upward; break;
        case 'HorizontalRotatedFarEast': orientation = TableCellFormat_OrientationEnum.horizontalRotatedFarEast; break;
        case 'VerticalFarEast': orientation = TableCellFormat_OrientationEnum.verticalFarEast; break;
        case 'VerticalRotatedFarEast': orientation = TableCellFormat_OrientationEnum.verticalRotatedFarEast; break;
        default: orientation = null; break;
      }
    } else {
      orientation = null;
    }

    if (json.containsKey('PreferredWidth')) {
      preferredWidth = ModelBase.createInstance< PreferredWidth >(json['PreferredWidth'] as Map<String, dynamic>);
    } else {
      preferredWidth = null;
    }

    if (json.containsKey('RightPadding')) {
      rightPadding = json['RightPadding'] as double;
    } else {
      rightPadding = null;
    }

    if (json.containsKey('TopPadding')) {
      topPadding = json['TopPadding'] as double;
    } else {
      topPadding = null;
    }

    if (json.containsKey('VerticalAlignment')) {
      switch (json['VerticalAlignment'] as String) {
        case 'Top': verticalAlignment = TableCellFormat_VerticalAlignmentEnum.top; break;
        case 'Center': verticalAlignment = TableCellFormat_VerticalAlignmentEnum.center; break;
        case 'Bottom': verticalAlignment = TableCellFormat_VerticalAlignmentEnum.bottom; break;
        default: verticalAlignment = null; break;
      }
    } else {
      verticalAlignment = null;
    }

    if (json.containsKey('VerticalMerge')) {
      switch (json['VerticalMerge'] as String) {
        case 'None': verticalMerge = TableCellFormat_VerticalMergeEnum.none; break;
        case 'First': verticalMerge = TableCellFormat_VerticalMergeEnum.first; break;
        case 'Previous': verticalMerge = TableCellFormat_VerticalMergeEnum.previous; break;
        default: verticalMerge = null; break;
      }
    } else {
      verticalMerge = null;
    }

    if (json.containsKey('Width')) {
      width = json['Width'] as double;
    } else {
      width = null;
    }

    if (json.containsKey('WrapText')) {
      wrapText = json['WrapText'] as bool;
    } else {
      wrapText = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (bottomPadding != null) {
      _result['BottomPadding'] = bottomPadding!;
    }

    if (fitText != null) {
      _result['FitText'] = fitText!;
    }

    if (horizontalMerge != null) {
      switch (horizontalMerge!) {
        case TableCellFormat_HorizontalMergeEnum.none: _result['HorizontalMerge'] = 'None'; break;
        case TableCellFormat_HorizontalMergeEnum.first: _result['HorizontalMerge'] = 'First'; break;
        case TableCellFormat_HorizontalMergeEnum.previous: _result['HorizontalMerge'] = 'Previous'; break;
        default: break;
      }
    }

    if (leftPadding != null) {
      _result['LeftPadding'] = leftPadding!;
    }

    if (orientation != null) {
      switch (orientation!) {
        case TableCellFormat_OrientationEnum.horizontal: _result['Orientation'] = 'Horizontal'; break;
        case TableCellFormat_OrientationEnum.downward: _result['Orientation'] = 'Downward'; break;
        case TableCellFormat_OrientationEnum.upward: _result['Orientation'] = 'Upward'; break;
        case TableCellFormat_OrientationEnum.horizontalRotatedFarEast: _result['Orientation'] = 'HorizontalRotatedFarEast'; break;
        case TableCellFormat_OrientationEnum.verticalFarEast: _result['Orientation'] = 'VerticalFarEast'; break;
        case TableCellFormat_OrientationEnum.verticalRotatedFarEast: _result['Orientation'] = 'VerticalRotatedFarEast'; break;
        default: break;
      }
    }

    if (preferredWidth != null) {
      _result['PreferredWidth'] = preferredWidth!.serialize();
    }

    if (rightPadding != null) {
      _result['RightPadding'] = rightPadding!;
    }

    if (topPadding != null) {
      _result['TopPadding'] = topPadding!;
    }

    if (verticalAlignment != null) {
      switch (verticalAlignment!) {
        case TableCellFormat_VerticalAlignmentEnum.top: _result['VerticalAlignment'] = 'Top'; break;
        case TableCellFormat_VerticalAlignmentEnum.center: _result['VerticalAlignment'] = 'Center'; break;
        case TableCellFormat_VerticalAlignmentEnum.bottom: _result['VerticalAlignment'] = 'Bottom'; break;
        default: break;
      }
    }

    if (verticalMerge != null) {
      switch (verticalMerge!) {
        case TableCellFormat_VerticalMergeEnum.none: _result['VerticalMerge'] = 'None'; break;
        case TableCellFormat_VerticalMergeEnum.first: _result['VerticalMerge'] = 'First'; break;
        case TableCellFormat_VerticalMergeEnum.previous: _result['VerticalMerge'] = 'Previous'; break;
        default: break;
      }
    }

    if (width != null) {
      _result['Width'] = width!;
    }

    if (wrapText != null) {
      _result['WrapText'] = wrapText!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    preferredWidth?.validate();







  }
}

/// Gets or sets the option that controls how the cell is merged horizontally with other cells in the row.
enum TableCellFormat_HorizontalMergeEnum
{ 
  none,
  first,
  previous
}

/// Gets or sets the orientation of text in a table cell.
enum TableCellFormat_OrientationEnum
{ 
  horizontal,
  downward,
  upward,
  horizontalRotatedFarEast,
  verticalFarEast,
  verticalRotatedFarEast
}

/// Gets or sets the vertical alignment of text in the cell.
enum TableCellFormat_VerticalAlignmentEnum
{ 
  top,
  center,
  bottom
}

/// Gets or sets the option that controls how the cell is merged with other cells vertically.
/// Cells can only be merged vertically if their left and right boundaries are identical.When cells are vertically merged, the display areas of the merged cells are consolidated. The consolidated area is used to display the contents of the first vertically merged cell and all other vertically merged cells must be empty.
enum TableCellFormat_VerticalMergeEnum
{ 
  none,
  first,
  previous
}

