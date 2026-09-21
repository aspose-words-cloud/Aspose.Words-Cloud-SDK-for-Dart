/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="border.dart">
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

/// Represents a border of an object.
/// Borders can be applied to various document elements including paragraph, run of text inside a paragraph or a table cell.
class Border extends LinkElement {
  /// Gets or sets the border type.
  Border_BorderTypeEnum? _borderType;

  Border_BorderTypeEnum? get borderType => _borderType;
  set borderType(Border_BorderTypeEnum? val) => _borderType = val;


  /// Gets or sets the border color.
  XmlColor? _color;

  XmlColor? get color => _color;
  set color(XmlColor? val) => _color = val;


  /// Gets or sets the distance of the border from text or from the page edge in points.
  /// Has no effect and will be automatically reset to zero for borders of table cells.
  double? _distanceFromText;

  double? get distanceFromText => _distanceFromText;
  set distanceFromText(double? val) => _distanceFromText = val;


  /// Gets or sets the border style.
  /// If you set line style to none, then line width is automatically changed to zero.
  Border_LineStyleEnum? _lineStyle;

  Border_LineStyleEnum? get lineStyle => _lineStyle;
  set lineStyle(Border_LineStyleEnum? val) => _lineStyle = val;


  /// Gets or sets the border width in points.
  /// If you set line width greater than zero when line style is none, the line style is automatically changed to single line.
  double? _lineWidth;

  double? get lineWidth => _lineWidth;
  set lineWidth(double? val) => _lineWidth = val;


  /// Gets or sets a value indicating whether the border has a shadow.
  /// In Microsoft Word, for a border to have a shadow, the borders on all four sides (left, top, right and bottom) should be of the same type, width, color and all should have the Shadow property set to true.
  bool? _shadow;

  bool? get shadow => _shadow;
  set shadow(bool? val) => _shadow = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Border data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('BorderType')) {
      switch (json['BorderType'] as String) {
        case 'Bottom': borderType = Border_BorderTypeEnum.bottom; break;
        case 'Left': borderType = Border_BorderTypeEnum.left; break;
        case 'Right': borderType = Border_BorderTypeEnum.right; break;
        case 'Top': borderType = Border_BorderTypeEnum.top; break;
        case 'Horizontal': borderType = Border_BorderTypeEnum.horizontal; break;
        case 'Vertical': borderType = Border_BorderTypeEnum.vertical; break;
        case 'DiagonalDown': borderType = Border_BorderTypeEnum.diagonalDown; break;
        case 'DiagonalUp': borderType = Border_BorderTypeEnum.diagonalUp; break;
        case 'None': borderType = Border_BorderTypeEnum.none; break;
        default: borderType = null; break;
      }
    } else {
      borderType = null;
    }

    if (json.containsKey('Color')) {
      color = ModelBase.createInstance< XmlColor >(json['Color'] as Map<String, dynamic>);
    } else {
      color = null;
    }

    if (json.containsKey('DistanceFromText')) {
      distanceFromText = json['DistanceFromText'] as double;
    } else {
      distanceFromText = null;
    }

    if (json.containsKey('LineStyle')) {
      switch (json['LineStyle'] as String) {
        case 'None': lineStyle = Border_LineStyleEnum.none; break;
        case 'Single': lineStyle = Border_LineStyleEnum.single; break;
        case 'Thick': lineStyle = Border_LineStyleEnum.thick; break;
        case 'Double': lineStyle = Border_LineStyleEnum.double; break;
        case 'Hairline': lineStyle = Border_LineStyleEnum.hairline; break;
        case 'Dot': lineStyle = Border_LineStyleEnum.dot; break;
        case 'DashLargeGap': lineStyle = Border_LineStyleEnum.dashLargeGap; break;
        case 'DotDash': lineStyle = Border_LineStyleEnum.dotDash; break;
        case 'DotDotDash': lineStyle = Border_LineStyleEnum.dotDotDash; break;
        case 'Triple': lineStyle = Border_LineStyleEnum.triple; break;
        case 'ThinThickSmallGap': lineStyle = Border_LineStyleEnum.thinThickSmallGap; break;
        case 'ThickThinSmallGap': lineStyle = Border_LineStyleEnum.thickThinSmallGap; break;
        case 'ThinThickThinSmallGap': lineStyle = Border_LineStyleEnum.thinThickThinSmallGap; break;
        case 'ThinThickMediumGap': lineStyle = Border_LineStyleEnum.thinThickMediumGap; break;
        case 'ThickThinMediumGap': lineStyle = Border_LineStyleEnum.thickThinMediumGap; break;
        case 'ThinThickThinMediumGap': lineStyle = Border_LineStyleEnum.thinThickThinMediumGap; break;
        case 'ThinThickLargeGap': lineStyle = Border_LineStyleEnum.thinThickLargeGap; break;
        case 'ThickThinLargeGap': lineStyle = Border_LineStyleEnum.thickThinLargeGap; break;
        case 'ThinThickThinLargeGap': lineStyle = Border_LineStyleEnum.thinThickThinLargeGap; break;
        case 'Wave': lineStyle = Border_LineStyleEnum.wave; break;
        case 'DoubleWave': lineStyle = Border_LineStyleEnum.doubleWave; break;
        case 'DashSmallGap': lineStyle = Border_LineStyleEnum.dashSmallGap; break;
        case 'DashDotStroker': lineStyle = Border_LineStyleEnum.dashDotStroker; break;
        case 'Emboss3D': lineStyle = Border_LineStyleEnum.emboss3D; break;
        case 'Engrave3D': lineStyle = Border_LineStyleEnum.engrave3D; break;
        case 'Outset': lineStyle = Border_LineStyleEnum.outset; break;
        case 'Inset': lineStyle = Border_LineStyleEnum.inset; break;
        default: lineStyle = null; break;
      }
    } else {
      lineStyle = null;
    }

    if (json.containsKey('LineWidth')) {
      lineWidth = json['LineWidth'] as double;
    } else {
      lineWidth = null;
    }

    if (json.containsKey('Shadow')) {
      shadow = json['Shadow'] as bool;
    } else {
      shadow = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (borderType != null) {
      switch (borderType!) {
        case Border_BorderTypeEnum.bottom: _result['BorderType'] = 'Bottom'; break;
        case Border_BorderTypeEnum.left: _result['BorderType'] = 'Left'; break;
        case Border_BorderTypeEnum.right: _result['BorderType'] = 'Right'; break;
        case Border_BorderTypeEnum.top: _result['BorderType'] = 'Top'; break;
        case Border_BorderTypeEnum.horizontal: _result['BorderType'] = 'Horizontal'; break;
        case Border_BorderTypeEnum.vertical: _result['BorderType'] = 'Vertical'; break;
        case Border_BorderTypeEnum.diagonalDown: _result['BorderType'] = 'DiagonalDown'; break;
        case Border_BorderTypeEnum.diagonalUp: _result['BorderType'] = 'DiagonalUp'; break;
        case Border_BorderTypeEnum.none: _result['BorderType'] = 'None'; break;
        default: break;
      }
    }

    if (color != null) {
      _result['Color'] = color!.serialize();
    }

    if (distanceFromText != null) {
      _result['DistanceFromText'] = distanceFromText!;
    }

    if (lineStyle != null) {
      switch (lineStyle!) {
        case Border_LineStyleEnum.none: _result['LineStyle'] = 'None'; break;
        case Border_LineStyleEnum.single: _result['LineStyle'] = 'Single'; break;
        case Border_LineStyleEnum.thick: _result['LineStyle'] = 'Thick'; break;
        case Border_LineStyleEnum.double: _result['LineStyle'] = 'Double'; break;
        case Border_LineStyleEnum.hairline: _result['LineStyle'] = 'Hairline'; break;
        case Border_LineStyleEnum.dot: _result['LineStyle'] = 'Dot'; break;
        case Border_LineStyleEnum.dashLargeGap: _result['LineStyle'] = 'DashLargeGap'; break;
        case Border_LineStyleEnum.dotDash: _result['LineStyle'] = 'DotDash'; break;
        case Border_LineStyleEnum.dotDotDash: _result['LineStyle'] = 'DotDotDash'; break;
        case Border_LineStyleEnum.triple: _result['LineStyle'] = 'Triple'; break;
        case Border_LineStyleEnum.thinThickSmallGap: _result['LineStyle'] = 'ThinThickSmallGap'; break;
        case Border_LineStyleEnum.thickThinSmallGap: _result['LineStyle'] = 'ThickThinSmallGap'; break;
        case Border_LineStyleEnum.thinThickThinSmallGap: _result['LineStyle'] = 'ThinThickThinSmallGap'; break;
        case Border_LineStyleEnum.thinThickMediumGap: _result['LineStyle'] = 'ThinThickMediumGap'; break;
        case Border_LineStyleEnum.thickThinMediumGap: _result['LineStyle'] = 'ThickThinMediumGap'; break;
        case Border_LineStyleEnum.thinThickThinMediumGap: _result['LineStyle'] = 'ThinThickThinMediumGap'; break;
        case Border_LineStyleEnum.thinThickLargeGap: _result['LineStyle'] = 'ThinThickLargeGap'; break;
        case Border_LineStyleEnum.thickThinLargeGap: _result['LineStyle'] = 'ThickThinLargeGap'; break;
        case Border_LineStyleEnum.thinThickThinLargeGap: _result['LineStyle'] = 'ThinThickThinLargeGap'; break;
        case Border_LineStyleEnum.wave: _result['LineStyle'] = 'Wave'; break;
        case Border_LineStyleEnum.doubleWave: _result['LineStyle'] = 'DoubleWave'; break;
        case Border_LineStyleEnum.dashSmallGap: _result['LineStyle'] = 'DashSmallGap'; break;
        case Border_LineStyleEnum.dashDotStroker: _result['LineStyle'] = 'DashDotStroker'; break;
        case Border_LineStyleEnum.emboss3D: _result['LineStyle'] = 'Emboss3D'; break;
        case Border_LineStyleEnum.engrave3D: _result['LineStyle'] = 'Engrave3D'; break;
        case Border_LineStyleEnum.outset: _result['LineStyle'] = 'Outset'; break;
        case Border_LineStyleEnum.inset: _result['LineStyle'] = 'Inset'; break;
        default: break;
      }
    }

    if (lineWidth != null) {
      _result['LineWidth'] = lineWidth!;
    }

    if (shadow != null) {
      _result['Shadow'] = shadow!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    color?.validate();





  }
}

/// Gets or sets the border type.
enum Border_BorderTypeEnum
{ 
  bottom,
  left,
  right,
  top,
  horizontal,
  vertical,
  diagonalDown,
  diagonalUp,
  none
}

/// Gets or sets the border style.
/// If you set line style to none, then line width is automatically changed to zero.
enum Border_LineStyleEnum
{ 
  none,
  single,
  thick,
  double,
  hairline,
  dot,
  dashLargeGap,
  dotDash,
  dotDotDash,
  triple,
  thinThickSmallGap,
  thickThinSmallGap,
  thinThickThinSmallGap,
  thinThickMediumGap,
  thickThinMediumGap,
  thinThickThinMediumGap,
  thinThickLargeGap,
  thickThinLargeGap,
  thinThickThinLargeGap,
  wave,
  doubleWave,
  dashSmallGap,
  dashDotStroker,
  emboss3D,
  engrave3D,
  outset,
  inset
}

