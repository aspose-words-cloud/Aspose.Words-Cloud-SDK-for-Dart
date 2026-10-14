/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_object.dart">
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

/// DTO container with a DrawingObject.
class DrawingObject extends DrawingObjectLink {
  /// Gets or sets the list of links that originate from this DrawingObjectDto.
  List<WordsApiLink?>? _renderLinks;

  List<WordsApiLink?>? get renderLinks => _renderLinks;
  set renderLinks(List<WordsApiLink?>? val) => _renderLinks = val;


  /// Gets or sets the width of the DrawingObjects in points.
  double? _width;

  double? get width => _width;
  set width(double? val) => _width = val;


  /// Gets or sets the height of the DrawingObject in points.
  double? _height;

  double? get height => _height;
  set height(double? val) => _height = val;


  /// Gets or sets the link to OLE object. Can be null if shape does not have OLE data.
  WordsApiLink? _oleDataLink;

  WordsApiLink? get oleDataLink => _oleDataLink;
  set oleDataLink(WordsApiLink? val) => _oleDataLink = val;


  /// Gets or sets the link to image data. Can be null if shape does not have an image.
  WordsApiLink? _imageDataLink;

  WordsApiLink? get imageDataLink => _imageDataLink;
  set imageDataLink(WordsApiLink? val) => _imageDataLink = val;


  /// Gets or sets the relative horizontal position, from which the distance to the image is measured.
  DrawingObject_RelativeHorizontalPositionEnum? _relativeHorizontalPosition;

  DrawingObject_RelativeHorizontalPositionEnum? get relativeHorizontalPosition => _relativeHorizontalPosition;
  set relativeHorizontalPosition(DrawingObject_RelativeHorizontalPositionEnum? val) => _relativeHorizontalPosition = val;


  /// Gets or sets the distance in points from the origin to the left side of the image.
  double? _left;

  double? get left => _left;
  set left(double? val) => _left = val;


  /// Gets or sets the relative vertical position, from which the distance to the image is measured.
  DrawingObject_RelativeVerticalPositionEnum? _relativeVerticalPosition;

  DrawingObject_RelativeVerticalPositionEnum? get relativeVerticalPosition => _relativeVerticalPosition;
  set relativeVerticalPosition(DrawingObject_RelativeVerticalPositionEnum? val) => _relativeVerticalPosition = val;


  /// Gets or sets the distance in points from the origin to the top side of the image.
  double? _top;

  double? get top => _top;
  set top(double? val) => _top = val;


  /// Gets or sets the option that controls how to wrap text around the image.
  DrawingObject_WrapTypeEnum? _wrapType;

  DrawingObject_WrapTypeEnum? get wrapType => _wrapType;
  set wrapType(DrawingObject_WrapTypeEnum? val) => _wrapType = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DrawingObject data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('NodeId')) {
      nodeId = json['NodeId'] as String;
    } else {
      nodeId = null;
    }

    if (json.containsKey('RenderLinks')) {
      // Array processing
      renderLinks = <WordsApiLink>[];
      for(final _element in json['RenderLinks']) {
        renderLinks!.add(ModelBase.createInstance< WordsApiLink >(_element as Map<String, dynamic>));
      }
    } else {
      renderLinks = null;
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

    if (json.containsKey('OleDataLink')) {
      oleDataLink = ModelBase.createInstance< WordsApiLink >(json['OleDataLink'] as Map<String, dynamic>);
    } else {
      oleDataLink = null;
    }

    if (json.containsKey('ImageDataLink')) {
      imageDataLink = ModelBase.createInstance< WordsApiLink >(json['ImageDataLink'] as Map<String, dynamic>);
    } else {
      imageDataLink = null;
    }

    if (json.containsKey('RelativeHorizontalPosition')) {
      switch (json['RelativeHorizontalPosition'] as String) {
        case 'Margin': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.margin; break;
        case 'Page': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.page; break;
        case 'Column': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.column; break;
        case 'Default': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.defaultValue; break;
        case 'Character': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.character; break;
        case 'LeftMargin': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.leftMargin; break;
        case 'RightMargin': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.rightMargin; break;
        case 'InsideMargin': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeHorizontalPosition = DrawingObject_RelativeHorizontalPositionEnum.outsideMargin; break;
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
        case 'Margin': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.margin; break;
        case 'TableDefault': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.tableDefault; break;
        case 'Page': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.page; break;
        case 'Paragraph': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.paragraph; break;
        case 'TextFrameDefault': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.textFrameDefault; break;
        case 'Line': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.line; break;
        case 'TopMargin': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.topMargin; break;
        case 'BottomMargin': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.bottomMargin; break;
        case 'InsideMargin': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.insideMargin; break;
        case 'OutsideMargin': relativeVerticalPosition = DrawingObject_RelativeVerticalPositionEnum.outsideMargin; break;
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

    if (json.containsKey('WrapType')) {
      switch (json['WrapType'] as String) {
        case 'Inline': wrapType = DrawingObject_WrapTypeEnum.inline; break;
        case 'TopBottom': wrapType = DrawingObject_WrapTypeEnum.topBottom; break;
        case 'Square': wrapType = DrawingObject_WrapTypeEnum.square; break;
        case 'None': wrapType = DrawingObject_WrapTypeEnum.none; break;
        case 'Tight': wrapType = DrawingObject_WrapTypeEnum.tight; break;
        case 'Through': wrapType = DrawingObject_WrapTypeEnum.through; break;
        default: wrapType = null; break;
      }
    } else {
      wrapType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (renderLinks != null) {
      _result['RenderLinks'] = renderLinks!.map((_element) => _element?.serialize()).toList();
    }

    if (width != null) {
      _result['Width'] = width!;
    }

    if (height != null) {
      _result['Height'] = height!;
    }

    if (oleDataLink != null) {
      _result['OleDataLink'] = oleDataLink!.serialize();
    }

    if (imageDataLink != null) {
      _result['ImageDataLink'] = imageDataLink!.serialize();
    }

    if (relativeHorizontalPosition != null) {
      switch (relativeHorizontalPosition!) {
        case DrawingObject_RelativeHorizontalPositionEnum.margin: _result['RelativeHorizontalPosition'] = 'Margin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.page: _result['RelativeHorizontalPosition'] = 'Page'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.column: _result['RelativeHorizontalPosition'] = 'Column'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.defaultValue: _result['RelativeHorizontalPosition'] = 'Default'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.character: _result['RelativeHorizontalPosition'] = 'Character'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.leftMargin: _result['RelativeHorizontalPosition'] = 'LeftMargin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.rightMargin: _result['RelativeHorizontalPosition'] = 'RightMargin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.insideMargin: _result['RelativeHorizontalPosition'] = 'InsideMargin'; break;
        case DrawingObject_RelativeHorizontalPositionEnum.outsideMargin: _result['RelativeHorizontalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (left != null) {
      _result['Left'] = left!;
    }

    if (relativeVerticalPosition != null) {
      switch (relativeVerticalPosition!) {
        case DrawingObject_RelativeVerticalPositionEnum.margin: _result['RelativeVerticalPosition'] = 'Margin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.tableDefault: _result['RelativeVerticalPosition'] = 'TableDefault'; break;
        case DrawingObject_RelativeVerticalPositionEnum.page: _result['RelativeVerticalPosition'] = 'Page'; break;
        case DrawingObject_RelativeVerticalPositionEnum.paragraph: _result['RelativeVerticalPosition'] = 'Paragraph'; break;
        case DrawingObject_RelativeVerticalPositionEnum.textFrameDefault: _result['RelativeVerticalPosition'] = 'TextFrameDefault'; break;
        case DrawingObject_RelativeVerticalPositionEnum.line: _result['RelativeVerticalPosition'] = 'Line'; break;
        case DrawingObject_RelativeVerticalPositionEnum.topMargin: _result['RelativeVerticalPosition'] = 'TopMargin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.bottomMargin: _result['RelativeVerticalPosition'] = 'BottomMargin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.insideMargin: _result['RelativeVerticalPosition'] = 'InsideMargin'; break;
        case DrawingObject_RelativeVerticalPositionEnum.outsideMargin: _result['RelativeVerticalPosition'] = 'OutsideMargin'; break;
        default: break;
      }
    }

    if (top != null) {
      _result['Top'] = top!;
    }

    if (wrapType != null) {
      switch (wrapType!) {
        case DrawingObject_WrapTypeEnum.inline: _result['WrapType'] = 'Inline'; break;
        case DrawingObject_WrapTypeEnum.topBottom: _result['WrapType'] = 'TopBottom'; break;
        case DrawingObject_WrapTypeEnum.square: _result['WrapType'] = 'Square'; break;
        case DrawingObject_WrapTypeEnum.none: _result['WrapType'] = 'None'; break;
        case DrawingObject_WrapTypeEnum.tight: _result['WrapType'] = 'Tight'; break;
        case DrawingObject_WrapTypeEnum.through: _result['WrapType'] = 'Through'; break;
        default: break;
      }
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    for (final elementRenderLinks in renderLinks ?? [])
    {
        elementRenderLinks?.validate();
    }





    oleDataLink?.validate();



    imageDataLink?.validate();






  }
}

/// Gets or sets the relative horizontal position, from which the distance to the image is measured.
enum DrawingObject_RelativeHorizontalPositionEnum
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
enum DrawingObject_RelativeVerticalPositionEnum
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
enum DrawingObject_WrapTypeEnum
{ 
  inline,
  topBottom,
  square,
  none,
  tight,
  through
}

