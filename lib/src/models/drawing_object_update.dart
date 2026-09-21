/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_object_update.dart">
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

/// Drawing object element for update.
class DrawingObjectUpdate implements ModelBase {
  /// Gets or sets the relative horizontal position, from which the distance to the image is measured.
  DrawingObjectUpdate_RelativeHorizontalPositionEnum? _relativeHorizontalPosition;

  DrawingObjectUpdate_RelativeHorizontalPositionEnum? get relativeHorizontalPosition => _relativeHorizontalPosition;
  set relativeHorizontalPosition(DrawingObjectUpdate_RelativeHorizontalPositionEnum? val) => _relativeHorizontalPosition = val;


  /// Gets or sets the distance in points from the origin to the left side of the image.
  double? _left;

  double? get left => _left;
  set left(double? val) => _left = val;


  /// Gets or sets the relative vertical position, from which the distance to the image measured.
  DrawingObjectUpdate_RelativeVerticalPositionEnum? _relativeVerticalPosition;

  DrawingObjectUpdate_RelativeVerticalPositionEnum? get relativeVerticalPosition => _relativeVerticalPosition;
  set relativeVerticalPosition(DrawingObjectUpdate_RelativeVerticalPositionEnum? val) => _relativeVerticalPosition = val;


  /// Gets or sets the distance in points from the origin to the top side of the image.
  double? _top;

  double? get top => _top;
  set top(double? val) => _top = val;


  /// Gets or sets the width of the DrawingObjects in points.
  double? _width;

  double? get width => _width;
  set width(double? val) => _width = val;


  /// Gets or sets the height of the DrawingObject in points.
  double? _height;

  double? get height => _height;
  set height(double? val) => _height = val;


  /// Gets or sets the option that controls how to wrap text around the image.
  DrawingObjectUpdate_WrapTypeEnum? _wrapType;

  DrawingObjectUpdate_WrapTypeEnum? get wrapType => _wrapType;
  set wrapType(DrawingObjectUpdate_WrapTypeEnum? val) => _wrapType = val;


  /// Gets or sets a value indicating whether AspectRatioLocked option on or off.
  bool? _aspectRatioLocked;

  bool? get aspectRatioLocked => _aspectRatioLocked;
  set aspectRatioLocked(bool? val) => _aspectRatioLocked = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DrawingObjectUpdate data model.');
    }

    if (json.containsKey('RelativeHorizontalPosition')) {
      switch (json['RelativeHorizontalPosition'] as String) {
        case 'Margin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.margin; break;
        case 'Page': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.page; break;
        case 'Column': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.column; break;
        case 'Default': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.defaultValue; break;
        case 'Character': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.character; break;
        case 'LeftMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.leftMargin; break;
        case 'RightMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.rightMargin; break;
        case 'InsideMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeHorizontalPosition = DrawingObjectUpdate_RelativeHorizontalPositionEnum.outsideMargin; break;
        default: relativeHorizontalPosition = null; break;
      }
    } else {
      relativeHorizontalPosition = null;
    }

    if (json.containsKey('Left')) {
      left = json['Left'] as double;
    } else {
      left = null;
    }

    if (json.containsKey('RelativeVerticalPosition')) {
      switch (json['RelativeVerticalPosition'] as String) {
        case 'Margin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.margin; break;
        case 'TableDefault': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.tableDefault; break;
        case 'Page': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.page; break;
        case 'Paragraph': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.paragraph; break;
        case 'TextFrameDefault': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.textFrameDefault; break;
        case 'Line': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.line; break;
        case 'TopMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.topMargin; break;
        case 'BottomMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.bottomMargin; break;
        case 'InsideMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeVerticalPosition = DrawingObjectUpdate_RelativeVerticalPositionEnum.outsideMargin; break;
        default: relativeVerticalPosition = null; break;
      }
    } else {
      relativeVerticalPosition = null;
    }

    if (json.containsKey('Top')) {
      top = json['Top'] as double;
    } else {
      top = null;
    }

    if (json.containsKey('Width')) {
      width = json['Width'] as double;
    } else {
      width = null;
    }

    if (json.containsKey('Height')) {
      height = json['Height'] as double;
    } else {
      height = null;
    }

    if (json.containsKey('WrapType')) {
      switch (json['WrapType'] as String) {
        case 'Inline': wrapType = DrawingObjectUpdate_WrapTypeEnum.inline; break;
        case 'TopBottom': wrapType = DrawingObjectUpdate_WrapTypeEnum.topBottom; break;
        case 'Square': wrapType = DrawingObjectUpdate_WrapTypeEnum.square; break;
        case 'None': wrapType = DrawingObjectUpdate_WrapTypeEnum.none; break;
        case 'Tight': wrapType = DrawingObjectUpdate_WrapTypeEnum.tight; break;
        case 'Through': wrapType = DrawingObjectUpdate_WrapTypeEnum.through; break;
        default: wrapType = null; break;
      }
    } else {
      wrapType = null;
    }

    if (json.containsKey('AspectRatioLocked')) {
      aspectRatioLocked = json['AspectRatioLocked'] as bool;
    } else {
      aspectRatioLocked = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (relativeHorizontalPosition != null) {
      switch (relativeHorizontalPosition!) {
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.margin: _result['RelativeHorizontalPosition'] = 'Margin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.page: _result['RelativeHorizontalPosition'] = 'Page'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.column: _result['RelativeHorizontalPosition'] = 'Column'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.defaultValue: _result['RelativeHorizontalPosition'] = 'Default'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.character: _result['RelativeHorizontalPosition'] = 'Character'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.leftMargin: _result['RelativeHorizontalPosition'] = 'LeftMargin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.rightMargin: _result['RelativeHorizontalPosition'] = 'RightMargin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.insideMargin: _result['RelativeHorizontalPosition'] = 'InsideMargin'; break;
        case DrawingObjectUpdate_RelativeHorizontalPositionEnum.outsideMargin: _result['RelativeHorizontalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (left != null) {
      _result['Left'] = left!;
    }

    if (relativeVerticalPosition != null) {
      switch (relativeVerticalPosition!) {
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.margin: _result['RelativeVerticalPosition'] = 'Margin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.tableDefault: _result['RelativeVerticalPosition'] = 'TableDefault'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.page: _result['RelativeVerticalPosition'] = 'Page'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.paragraph: _result['RelativeVerticalPosition'] = 'Paragraph'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.textFrameDefault: _result['RelativeVerticalPosition'] = 'TextFrameDefault'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.line: _result['RelativeVerticalPosition'] = 'Line'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.topMargin: _result['RelativeVerticalPosition'] = 'TopMargin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.bottomMargin: _result['RelativeVerticalPosition'] = 'BottomMargin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.insideMargin: _result['RelativeVerticalPosition'] = 'InsideMargin'; break;
        case DrawingObjectUpdate_RelativeVerticalPositionEnum.outsideMargin: _result['RelativeVerticalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (top != null) {
      _result['Top'] = top!;
    }

    if (width != null) {
      _result['Width'] = width!;
    }

    if (height != null) {
      _result['Height'] = height!;
    }

    if (wrapType != null) {
      switch (wrapType!) {
        case DrawingObjectUpdate_WrapTypeEnum.inline: _result['WrapType'] = 'Inline'; break;
        case DrawingObjectUpdate_WrapTypeEnum.topBottom: _result['WrapType'] = 'TopBottom'; break;
        case DrawingObjectUpdate_WrapTypeEnum.square: _result['WrapType'] = 'Square'; break;
        case DrawingObjectUpdate_WrapTypeEnum.none: _result['WrapType'] = 'None'; break;
        case DrawingObjectUpdate_WrapTypeEnum.tight: _result['WrapType'] = 'Tight'; break;
        case DrawingObjectUpdate_WrapTypeEnum.through: _result['WrapType'] = 'Through'; break;
        default: break;
      }
    }

    if (aspectRatioLocked != null) {
      _result['AspectRatioLocked'] = aspectRatioLocked!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
  }
}

/// Gets or sets the relative horizontal position, from which the distance to the image is measured.
enum DrawingObjectUpdate_RelativeHorizontalPositionEnum
{ 
  margin,
  page,
  column,
  defaultValue,
  character,
  leftMargin,
  rightMargin,
  insideMargin,
  outsideMargin
}

/// Gets or sets the relative vertical position, from which the distance to the image measured.
enum DrawingObjectUpdate_RelativeVerticalPositionEnum
{ 
  margin,
  tableDefault,
  page,
  paragraph,
  textFrameDefault,
  line,
  topMargin,
  bottomMargin,
  insideMargin,
  outsideMargin
}

/// Gets or sets the option that controls how to wrap text around the image.
enum DrawingObjectUpdate_WrapTypeEnum
{ 
  inline,
  topBottom,
  square,
  none,
  tight,
  through
}

