/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="bookmarks_outline_level_data.dart">
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

/// Container class for individual bookmarks outline level.
class BookmarksOutlineLevelData implements ModelBase {
  /// Gets or sets the bookmark's level.
  int? _bookmarksOutlineLevel;

  int? get bookmarksOutlineLevel => _bookmarksOutlineLevel;
  set bookmarksOutlineLevel(int? val) => _bookmarksOutlineLevel = val;


  /// Gets or sets the bookmark's name.
  String? _name;

  String? get name => _name;
  set name(String? val) => _name = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize BookmarksOutlineLevelData data model.');
    }

    if (json.containsKey('BookmarksOutlineLevel')) {
      bookmarksOutlineLevel = json['BookmarksOutlineLevel'] as int;
    } else {
      bookmarksOutlineLevel = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (bookmarksOutlineLevel != null) {
      _result['BookmarksOutlineLevel'] = bookmarksOutlineLevel!;
    }

    if (name != null) {
      _result['Name'] = name!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (bookmarksOutlineLevel == null)
    {
        throw new ApiException(400, 'Property BookmarksOutlineLevel in BookmarksOutlineLevelData is required.');
    }
  }
}


