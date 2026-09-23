/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="comment_base.dart">
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

/// Comment.
abstract class CommentBase implements ModelBase {
  /// Gets or sets the link to comment range start node.
  PositionInsideNode? _rangeStart;

  PositionInsideNode? get rangeStart => _rangeStart;
  set rangeStart(PositionInsideNode? val) => _rangeStart = val;


  /// Gets or sets the link to comment range end node.
  PositionInsideNode? _rangeEnd;

  PositionInsideNode? get rangeEnd => _rangeEnd;
  set rangeEnd(PositionInsideNode? val) => _rangeEnd = val;


  /// Gets or sets the author name for a comment.
  /// Cannot be null.Default is an empty string.
  String? _author;

  String? get author => _author;
  set author(String? val) => _author = val;


  /// Gets or sets the initials of the user associated with a specific comment.
  /// Cannot be null.Default is an empty string.
  String? _initial;

  String? get initial => _initial;
  set initial(String? val) => _initial = val;


  /// Gets or sets the date and time that the comment was made.
  /// Default is MinValue03.01.0001.
  DateTime? _dateTime;

  DateTime? get dateTime => _dateTime;
  set dateTime(DateTime? val) => _dateTime = val;


  /// Gets or sets text of the comment.
  /// This method allows to quickly set text of a comment from a string. The string can contain paragraph breaks, this will create paragraphs of text in the comment accordingly.
  String? _text;

  String? get text => _text;
  set text(String? val) => _text = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CommentBase data model.');
    }

    if (json.containsKey('RangeStart')) {
      rangeStart = ModelBase.createInstance< PositionInsideNode >(json['RangeStart'] as Map<String, dynamic>);
    } else {
      rangeStart = null;
    }

    if (json.containsKey('RangeEnd')) {
      rangeEnd = ModelBase.createInstance< PositionInsideNode >(json['RangeEnd'] as Map<String, dynamic>);
    } else {
      rangeEnd = null;
    }

    if (json.containsKey('Author')) {
      author = json['Author'] as String;
    } else {
      author = null;
    }

    if (json.containsKey('Initial')) {
      initial = json['Initial'] as String;
    } else {
      initial = null;
    }

    if (json.containsKey('DateTime')) {
      dateTime = DateTime.parse(json['DateTime'] as String);
    } else {
      dateTime = null;
    }

    if (json.containsKey('Text')) {
      text = json['Text'] as String;
    } else {
      text = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (rangeStart != null) {
      _result['RangeStart'] = rangeStart!.serialize();
    }

    if (rangeEnd != null) {
      _result['RangeEnd'] = rangeEnd!.serialize();
    }

    if (author != null) {
      _result['Author'] = author!;
    }

    if (initial != null) {
      _result['Initial'] = initial!;
    }

    if (dateTime != null) {
      _result['DateTime'] = dateTime!.toIso8601String();
    }

    if (text != null) {
      _result['Text'] = text!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (rangeStart == null)
    {
        throw new ApiException(400, 'Property RangeStart in CommentBase is required.');
    }
    if (rangeEnd == null)
    {
        throw new ApiException(400, 'Property RangeEnd in CommentBase is required.');
    }
    if (author == null)
    {
        throw new ApiException(400, 'Property Author in CommentBase is required.');
    }
    if (initial == null)
    {
        throw new ApiException(400, 'Property Initial in CommentBase is required.');
    }
    if (text == null)
    {
        throw new ApiException(400, 'Property Text in CommentBase is required.');
    }

    rangeStart?.validate();



    rangeEnd?.validate();





  }
}


