/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="bookmark_insert.dart">
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

/// Represents a bookmark to insert.
class BookmarkInsert implements ModelBase {
  /// Gets or sets the name of the bookmark.
  String? _name;

  String? get name => _name;
  set name(String? val) => _name = val;


  /// Gets or sets text, enclosed in the bookmark.
  String? _text;

  String? get text => _text;
  set text(String? val) => _text = val;


  /// Gets or sets the link to start bookmark node.
  Position? _startRange;

  Position? get startRange => _startRange;
  set startRange(Position? val) => _startRange = val;


  /// Gets or sets the link to end bookmark node.
  Position? _endRange;

  Position? get endRange => _endRange;
  set endRange(Position? val) => _endRange = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize BookmarkInsert data model.');
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('Text')) {
      text = json['Text'] as String;
    } else {
      text = null;
    }

    if (json.containsKey('StartRange')) {
      startRange = ModelBase.createInstance< Position >(json['StartRange'] as Map<String, dynamic>);
    } else {
      startRange = null;
    }

    if (json.containsKey('EndRange')) {
      endRange = ModelBase.createInstance< Position >(json['EndRange'] as Map<String, dynamic>);
    } else {
      endRange = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (name != null) {
      _result['Name'] = name!;
    }

    if (text != null) {
      _result['Text'] = text!;
    }

    if (startRange != null) {
      _result['StartRange'] = startRange!.serialize();
    }

    if (endRange != null) {
      _result['EndRange'] = endRange!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (name == null)
    {
        throw new ApiException(400, 'Property Name in BookmarkInsert is required.');
    }
    if (text == null)
    {
        throw new ApiException(400, 'Property Text in BookmarkInsert is required.');
    }
    if (startRange == null)
    {
        throw new ApiException(400, 'Property StartRange in BookmarkInsert is required.');
    }
    if (endRange == null)
    {
        throw new ApiException(400, 'Property EndRange in BookmarkInsert is required.');
    }

    startRange?.validate();



    endRange?.validate();

  }
}


