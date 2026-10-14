/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_cell_insert.dart">
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

/// DTO container with a table cell.
class TableCellInsert implements ModelBase {
  /// Gets or sets the position of the table cell that will be used to determine the placement of a new cell.
  Position? _existingCellPosition;

  Position? get existingCellPosition => _existingCellPosition;
  set existingCellPosition(Position? val) => _existingCellPosition = val;


  /// Gets or sets the 0-based index, the table cell will be inserted after.
  int? _insertAfter;

  @Deprecated("This property will be removed in the future.")
  int? get insertAfter => _insertAfter;
  @Deprecated("This property will be removed in the future.")
  set insertAfter(int? val) => _insertAfter = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableCellInsert data model.');
    }

    if (json.containsKey('ExistingCellPosition')) {
      existingCellPosition = ModelBase.createInstance< Position >(json['ExistingCellPosition'] as Map<String, dynamic>);
    } else {
      existingCellPosition = null;
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
    if (existingCellPosition != null) {
      _result['ExistingCellPosition'] = existingCellPosition!.serialize();
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

    existingCellPosition?.validate();


  }
}


