/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compress_options.dart">
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

/// Options of document compress.
class CompressOptions implements ModelBase {
  /// Gets or sets the quality level of images from 0 to 100. The default value is 75.
  int? _imagesQuality;

  int? get imagesQuality => _imagesQuality;
  set imagesQuality(int? val) => _imagesQuality = val;


  /// Gets or sets the resize factor of images.
  /// This value determines how many times the size of the images in the document will be reduced.
  /// The parameter value must be greater than 1 for resizing. The default value is 1 and has no effect on images size.
  int? _imagesReduceSizeFactor;

  int? get imagesReduceSizeFactor => _imagesReduceSizeFactor;
  set imagesReduceSizeFactor(int? val) => _imagesReduceSizeFactor = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CompressOptions data model.');
    }

    if (json.containsKey('ImagesQuality')) {
      imagesQuality = json['ImagesQuality'] as int;
    } else {
      imagesQuality = null;
    }

    if (json.containsKey('ImagesReduceSizeFactor')) {
      imagesReduceSizeFactor = json['ImagesReduceSizeFactor'] as int;
    } else {
      imagesReduceSizeFactor = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (imagesQuality != null) {
      _result['ImagesQuality'] = imagesQuality!;
    }

    if (imagesReduceSizeFactor != null) {
      _result['ImagesReduceSizeFactor'] = imagesReduceSizeFactor!;
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


