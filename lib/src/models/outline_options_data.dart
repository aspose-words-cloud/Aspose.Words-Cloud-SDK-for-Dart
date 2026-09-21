/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="outline_options_data.dart">
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

/// Container class for outline options.
class OutlineOptionsData implements ModelBase {
  /// Gets or sets a value indicating whether to create missing outline levels when the document is exported. The default value is false.
  bool? _createMissingOutlineLevels;

  bool? get createMissingOutlineLevels => _createMissingOutlineLevels;
  set createMissingOutlineLevels(bool? val) => _createMissingOutlineLevels = val;


  /// Gets or sets a value indicating whether to create outlines for headings (paragraphs formatted with the Heading styles) inside tables.
  /// The default value is false.
  bool? _createOutlinesForHeadingsInTables;

  bool? get createOutlinesForHeadingsInTables => _createOutlinesForHeadingsInTables;
  set createOutlinesForHeadingsInTables(bool? val) => _createOutlinesForHeadingsInTables = val;


  /// Gets or sets the default level in the document outline at which to display Word bookmarks.
  int? _defaultBookmarksOutlineLevel;

  int? get defaultBookmarksOutlineLevel => _defaultBookmarksOutlineLevel;
  set defaultBookmarksOutlineLevel(int? val) => _defaultBookmarksOutlineLevel = val;


  /// Gets or sets the number of levels in the document outline to show expanded when the file is viewed.
  int? _expandedOutlineLevels;

  int? get expandedOutlineLevels => _expandedOutlineLevels;
  set expandedOutlineLevels(int? val) => _expandedOutlineLevels = val;


  /// Gets or sets the number of levels of headings (paragraphs formatted with the Heading styles) to include in the document outline.
  int? _headingsOutlineLevels;

  int? get headingsOutlineLevels => _headingsOutlineLevels;
  set headingsOutlineLevels(int? val) => _headingsOutlineLevels = val;


  /// Gets or sets the individual bookmarks outline level.
  List<BookmarksOutlineLevelData?>? _bookmarksOutlineLevels;

  List<BookmarksOutlineLevelData?>? get bookmarksOutlineLevels => _bookmarksOutlineLevels;
  set bookmarksOutlineLevels(List<BookmarksOutlineLevelData?>? val) => _bookmarksOutlineLevels = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize OutlineOptionsData data model.');
    }

    if (json.containsKey('CreateMissingOutlineLevels')) {
      createMissingOutlineLevels = json['CreateMissingOutlineLevels'] as bool;
    } else {
      createMissingOutlineLevels = null;
    }

    if (json.containsKey('CreateOutlinesForHeadingsInTables')) {
      createOutlinesForHeadingsInTables = json['CreateOutlinesForHeadingsInTables'] as bool;
    } else {
      createOutlinesForHeadingsInTables = null;
    }

    if (json.containsKey('DefaultBookmarksOutlineLevel')) {
      defaultBookmarksOutlineLevel = json['DefaultBookmarksOutlineLevel'] as int;
    } else {
      defaultBookmarksOutlineLevel = null;
    }

    if (json.containsKey('ExpandedOutlineLevels')) {
      expandedOutlineLevels = json['ExpandedOutlineLevels'] as int;
    } else {
      expandedOutlineLevels = null;
    }

    if (json.containsKey('HeadingsOutlineLevels')) {
      headingsOutlineLevels = json['HeadingsOutlineLevels'] as int;
    } else {
      headingsOutlineLevels = null;
    }

    if (json.containsKey('BookmarksOutlineLevels')) {
      // Array processing
      bookmarksOutlineLevels = <BookmarksOutlineLevelData>[];
      for(final _element in json['BookmarksOutlineLevels']) {
        bookmarksOutlineLevels!.add(ModelBase.createInstance< BookmarksOutlineLevelData >(_element as Map<String, dynamic>));
      }
    } else {
      bookmarksOutlineLevels = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (createMissingOutlineLevels != null) {
      _result['CreateMissingOutlineLevels'] = createMissingOutlineLevels!;
    }

    if (createOutlinesForHeadingsInTables != null) {
      _result['CreateOutlinesForHeadingsInTables'] = createOutlinesForHeadingsInTables!;
    }

    if (defaultBookmarksOutlineLevel != null) {
      _result['DefaultBookmarksOutlineLevel'] = defaultBookmarksOutlineLevel!;
    }

    if (expandedOutlineLevels != null) {
      _result['ExpandedOutlineLevels'] = expandedOutlineLevels!;
    }

    if (headingsOutlineLevels != null) {
      _result['HeadingsOutlineLevels'] = headingsOutlineLevels!;
    }

    if (bookmarksOutlineLevels != null) {
      _result['BookmarksOutlineLevels'] = bookmarksOutlineLevels!.map((_element) => _element?.serialize()).toList();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    for (final elementBookmarksOutlineLevels in bookmarksOutlineLevels ?? [])
    {
        elementBookmarksOutlineLevels?.validate();
    }

  }
}


