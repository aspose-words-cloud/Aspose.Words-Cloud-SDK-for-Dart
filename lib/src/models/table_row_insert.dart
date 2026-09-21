/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_row_insert.dart">
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

/// DTO container with a table row element.
class TableRowInsert implements ModelBase {
  /// Gets or sets the count of columns. The default value is 1.
  int? _columnsCount;

  int? get columnsCount => _columnsCount;
  set columnsCount(int? val) => _columnsCount = val;


  /// Gets or sets the position of the table row that will be used to determine the placement of a new row.
  Position? _existingRowPosition;

  Position? get existingRowPosition => _existingRowPosition;
  set existingRowPosition(Position? val) => _existingRowPosition = val;


  /// Gets or sets table row will be inserted after row with specified 0-based index.
  int? _insertAfter;

  @Deprecated("This property will be removed in the future.")
  int? get insertAfter => _insertAfter;
  @Deprecated("This property will be removed in the future.")
  set insertAfter(int? val) => _insertAfter = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableRowInsert data model.');
    }

    if (json.containsKey('ColumnsCount')) {
      columnsCount = json['ColumnsCount'] as int;
    } else {
      columnsCount = null;
    }

    if (json.containsKey('ExistingRowPosition')) {
      existingRowPosition = ModelBase.createInstance< Position >(json['ExistingRowPosition'] as Map<String, dynamic>);
    } else {
      existingRowPosition = null;
    }

    if (json.containsKey('InsertAfter')) {
      insertAfter = json['InsertAfter'] as int;
    } else {
      insertAfter = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (columnsCount != null) {
      _result['ColumnsCount'] = columnsCount!;
    }

    if (existingRowPosition != null) {
      _result['ExistingRowPosition'] = existingRowPosition!.serialize();
    }

    if (insertAfter != null) {
      _result['InsertAfter'] = insertAfter!;
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
        throw new ApiException(400, 'Property ColumnsCount in TableRowInsert is required.');
    }

    existingRowPosition?.validate();


  }
}


