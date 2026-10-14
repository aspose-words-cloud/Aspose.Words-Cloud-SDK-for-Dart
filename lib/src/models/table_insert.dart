/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_insert.dart">
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

/// DTO container with a table element.
class TableInsert implements ModelBase {
  /// Gets or sets the number of columns. The default value is 2.
  int? _columnsCount;

  int? get columnsCount => _columnsCount;
  set columnsCount(int? val) => _columnsCount = val;


  /// Gets or sets the position to insert the table. The table will be inserted using the specified position.
  Position? _position;

  Position? get position => _position;
  set position(Position? val) => _position = val;


  /// Gets or sets the number of rows. The default value is 2.
  int? _rowsCount;

  int? get rowsCount => _rowsCount;
  set rowsCount(int? val) => _rowsCount = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableInsert data model.');
    }

    if (json.containsKey('ColumnsCount')) {
      columnsCount = json['ColumnsCount'] as int;
    } else {
      columnsCount = null;
    }

    if (json.containsKey('Position')) {
      position = ModelBase.createInstance< Position >(json['Position'] as Map<String, dynamic>);
    } else {
      position = null;
    }

    if (json.containsKey('RowsCount')) {
      rowsCount = json['RowsCount'] as int;
    } else {
      rowsCount = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (columnsCount != null) {
      _result['ColumnsCount'] = columnsCount!;
    }

    if (position != null) {
      _result['Position'] = position!.serialize();
    }

    if (rowsCount != null) {
      _result['RowsCount'] = rowsCount!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (columnsCount == null)
    {
        throw new ApiException(400, 'Property ColumnsCount in TableInsert is required.');
    }
    if (rowsCount == null)
    {
        throw new ApiException(400, 'Property RowsCount in TableInsert is required.');
    }

    position?.validate();


  }
}


