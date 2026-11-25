/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="drawing_object_insert_data.dart">
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

/// Drawing object element for insert with the image passed by reference.
class DrawingObjectInsertData extends DrawingObjectInsert {
  /// Gets or sets the reference to the image file.
  /// Source "Storage": the reference is either a storage path to the image located in the folder of the document or in one of its subfolders,
  /// or an absolute HTTP(S) URL to download the image from. For online methods any storage path is allowed.
  /// Source "Request": the reference is the name of the multipart request part that contains the image.
  FileReference? _imageReference;

  FileReference? get imageReference => _imageReference;
  set imageReference(FileReference? val) => _imageReference = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DrawingObjectInsertData data model.');
    }

    super.deserialize(json);
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

    if (json.containsKey('ImageReference')) {
      throw ApiException(400, 'File content is not supported for deserialization.');
    } else {
      imageReference = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (imageReference != null) {
      _result['ImageReference'] = imageReference!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
    if (imageReference != null)
    {
        imageReference!.getFilesContent(resultFilesContent);
    }

  }

  @override
  void validate() {
    super.validate();
    if (imageReference == null)
    {
        throw new ApiException(400, 'Property ImageReference in DrawingObjectInsertData is required.');
    }

    imageReference?.validate();

  }
}


