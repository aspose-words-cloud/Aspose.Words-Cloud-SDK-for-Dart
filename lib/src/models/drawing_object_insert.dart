/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_object_insert.dart">
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

/// Drawing object element for insert.
class DrawingObjectInsert implements ModelBase {
  /// Gets or sets the position, where the DrawingObject will be inserted.
  Position? _position;

  Position? get position => _position;
  set position(Position? val) => _position = val;


  /// Gets or sets the relative horizontal position, from which the distance to the image is measured.
  DrawingObjectInsert_RelativeHorizontalPositionEnum? _relativeHorizontalPosition;

  DrawingObjectInsert_RelativeHorizontalPositionEnum? get relativeHorizontalPosition => _relativeHorizontalPosition;
  set relativeHorizontalPosition(DrawingObjectInsert_RelativeHorizontalPositionEnum? val) => _relativeHorizontalPosition = val;


  /// Gets or sets the distance in points from the origin to the left side of the image.
  double? _left;

  double? get left => _left;
  set left(double? val) => _left = val;


  /// Gets or sets the relative vertical position, from which the distance to the image is measured.
  DrawingObjectInsert_RelativeVerticalPositionEnum? _relativeVerticalPosition;

  DrawingObjectInsert_RelativeVerticalPositionEnum? get relativeVerticalPosition => _relativeVerticalPosition;
  set relativeVerticalPosition(DrawingObjectInsert_RelativeVerticalPositionEnum? val) => _relativeVerticalPosition = val;


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


  /// Gets or sets the option indicating how to wrap text around the image.
  DrawingObjectInsert_WrapTypeEnum? _wrapType;

  DrawingObjectInsert_WrapTypeEnum? get wrapType => _wrapType;
  set wrapType(DrawingObjectInsert_WrapTypeEnum? val) => _wrapType = val;


  /// Gets or sets a value indicating whether AspectRatioLocked option on or off.
  bool? _aspectRatioLocked;

  bool? get aspectRatioLocked => _aspectRatioLocked;
  set aspectRatioLocked(bool? val) => _aspectRatioLocked = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DrawingObjectInsert data model.');
    }

    if (json.containsKey('Position')) {
      position = ModelBase.createInstance< Position >(json['Position'] as Map<String, dynamic>);
    } else {
      position = null;
    }

    if (json.containsKey('RelativeHorizontalPosition')) {
      switch (json['RelativeHorizontalPosition'] as String) {
        case 'Margin': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.margin; break;
        case 'Page': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.page; break;
        case 'Column': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.column; break;
        case 'Default': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.defaultValue; break;
        case 'Character': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.character; break;
        case 'LeftMargin': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.leftMargin; break;
        case 'RightMargin': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.rightMargin; break;
        case 'InsideMargin': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeHorizontalPosition = DrawingObjectInsert_RelativeHorizontalPositionEnum.outsideMargin; break;
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
        case 'Margin': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.margin; break;
        case 'TableDefault': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.tableDefault; break;
        case 'Page': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.page; break;
        case 'Paragraph': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.paragraph; break;
        case 'TextFrameDefault': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.textFrameDefault; break;
        case 'Line': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.line; break;
        case 'TopMargin': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.topMargin; break;
        case 'BottomMargin': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.bottomMargin; break;
        case 'InsideMargin': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeVerticalPosition = DrawingObjectInsert_RelativeVerticalPositionEnum.outsideMargin; break;
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
        case 'Inline': wrapType = DrawingObjectInsert_WrapTypeEnum.inline; break;
        case 'TopBottom': wrapType = DrawingObjectInsert_WrapTypeEnum.topBottom; break;
        case 'Square': wrapType = DrawingObjectInsert_WrapTypeEnum.square; break;
        case 'None': wrapType = DrawingObjectInsert_WrapTypeEnum.none; break;
        case 'Tight': wrapType = DrawingObjectInsert_WrapTypeEnum.tight; break;
        case 'Through': wrapType = DrawingObjectInsert_WrapTypeEnum.through; break;
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
    if (position != null) {
      _result['Position'] = position!.serialize();
    }

    if (relativeHorizontalPosition != null) {
      switch (relativeHorizontalPosition!) {
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.margin: _result['RelativeHorizontalPosition'] = 'Margin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.page: _result['RelativeHorizontalPosition'] = 'Page'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.column: _result['RelativeHorizontalPosition'] = 'Column'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.defaultValue: _result['RelativeHorizontalPosition'] = 'Default'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.character: _result['RelativeHorizontalPosition'] = 'Character'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.leftMargin: _result['RelativeHorizontalPosition'] = 'LeftMargin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.rightMargin: _result['RelativeHorizontalPosition'] = 'RightMargin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.insideMargin: _result['RelativeHorizontalPosition'] = 'InsideMargin'; break;
        case DrawingObjectInsert_RelativeHorizontalPositionEnum.outsideMargin: _result['RelativeHorizontalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (left != null) {
      _result['Left'] = left!;
    }

    if (relativeVerticalPosition != null) {
      switch (relativeVerticalPosition!) {
        case DrawingObjectInsert_RelativeVerticalPositionEnum.margin: _result['RelativeVerticalPosition'] = 'Margin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.tableDefault: _result['RelativeVerticalPosition'] = 'TableDefault'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.page: _result['RelativeVerticalPosition'] = 'Page'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.paragraph: _result['RelativeVerticalPosition'] = 'Paragraph'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.textFrameDefault: _result['RelativeVerticalPosition'] = 'TextFrameDefault'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.line: _result['RelativeVerticalPosition'] = 'Line'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.topMargin: _result['RelativeVerticalPosition'] = 'TopMargin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.bottomMargin: _result['RelativeVerticalPosition'] = 'BottomMargin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.insideMargin: _result['RelativeVerticalPosition'] = 'InsideMargin'; break;
        case DrawingObjectInsert_RelativeVerticalPositionEnum.outsideMargin: _result['RelativeVerticalPosition'] = 'OutsideMargin'; break;
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
        case DrawingObjectInsert_WrapTypeEnum.inline: _result['WrapType'] = 'Inline'; break;
        case DrawingObjectInsert_WrapTypeEnum.topBottom: _result['WrapType'] = 'TopBottom'; break;
        case DrawingObjectInsert_WrapTypeEnum.square: _result['WrapType'] = 'Square'; break;
        case DrawingObjectInsert_WrapTypeEnum.none: _result['WrapType'] = 'None'; break;
        case DrawingObjectInsert_WrapTypeEnum.tight: _result['WrapType'] = 'Tight'; break;
        case DrawingObjectInsert_WrapTypeEnum.through: _result['WrapType'] = 'Through'; break;
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
    if (relativeHorizontalPosition == null)
    {
        throw new ApiException(400, 'Property RelativeHorizontalPosition in DrawingObjectInsert is required.');
    }
    if (left == null)
    {
        throw new ApiException(400, 'Property Left in DrawingObjectInsert is required.');
    }
    if (relativeVerticalPosition == null)
    {
        throw new ApiException(400, 'Property RelativeVerticalPosition in DrawingObjectInsert is required.');
    }
    if (top == null)
    {
        throw new ApiException(400, 'Property Top in DrawingObjectInsert is required.');
    }
    if (width == null)
    {
        throw new ApiException(400, 'Property Width in DrawingObjectInsert is required.');
    }
    if (height == null)
    {
        throw new ApiException(400, 'Property Height in DrawingObjectInsert is required.');
    }
    if (wrapType == null)
    {
        throw new ApiException(400, 'Property WrapType in DrawingObjectInsert is required.');
    }

    position?.validate();









  }
}

/// Gets or sets the relative horizontal position, from which the distance to the image is measured.
enum DrawingObjectInsert_RelativeHorizontalPositionEnum
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

/// Gets or sets the relative vertical position, from which the distance to the image is measured.
enum DrawingObjectInsert_RelativeVerticalPositionEnum
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

/// Gets or sets the option indicating how to wrap text around the image.
enum DrawingObjectInsert_WrapTypeEnum
{ 
  inline,
  topBottom,
  square,
  none,
  tight,
  through
}

