/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="downsample_options_data.dart">
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

/// Container class for Downsample options.
class DownsampleOptionsData implements ModelBase {
  /// Gets or sets a value indicating whether images should be downsampled.
  /// The default value is true.
  bool? _downsampleImages;

  bool? get downsampleImages => _downsampleImages;
  set downsampleImages(bool? val) => _downsampleImages = val;


  /// Gets or sets the resolution in pixels per inch which the images should be downsampled to.
  /// The default value is 220 ppi.
  int? _resolution;

  int? get resolution => _resolution;
  set resolution(int? val) => _resolution = val;


  /// Gets or sets the threshold resolution in pixels per inch. If resolution of an image in the document is less than threshold value, the downsampling algorithm will not be applied. A value of 0 means the threshold check is not used and all images that can be reduced in size are downsampled.
  /// The default value is 0.
  int? _resolutionThreshold;

  int? get resolutionThreshold => _resolutionThreshold;
  set resolutionThreshold(int? val) => _resolutionThreshold = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DownsampleOptionsData data model.');
    }

    if (json.containsKey('DownsampleImages')) {
      downsampleImages = json['DownsampleImages'] as bool;
    } else {
      downsampleImages = null;
    }

    if (json.containsKey('Resolution')) {
      resolution = json['Resolution'] as int;
    } else {
      resolution = null;
    }

    if (json.containsKey('ResolutionThreshold')) {
      resolutionThreshold = json['ResolutionThreshold'] as int;
    } else {
      resolutionThreshold = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (downsampleImages != null) {
      _result['DownsampleImages'] = downsampleImages!;
    }

    if (resolution != null) {
      _result['Resolution'] = resolution!;
    }

    if (resolutionThreshold != null) {
      _result['ResolutionThreshold'] = resolutionThreshold!;
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


