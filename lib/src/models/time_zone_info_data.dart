/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="time_zone_info_data.dart">
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

/// Class to specify TimeZoneInfo parameters.
class TimeZoneInfoData implements ModelBase {
  /// Gets or sets base utc offset in hh:mm:ss format.
  String? _baseUtcOffset;

  String? get baseUtcOffset => _baseUtcOffset;
  set baseUtcOffset(String? val) => _baseUtcOffset = val;


  /// Gets or sets display name.
  String? _displayName;

  String? get displayName => _displayName;
  set displayName(String? val) => _displayName = val;


  /// Gets or sets an Id string for CustomTimeZoneInfo.
  String? _id;

  String? get id => _id;
  set id(String? val) => _id = val;


  /// Gets or sets standard display name.
  String? _standardDisplayName;

  String? get standardDisplayName => _standardDisplayName;
  set standardDisplayName(String? val) => _standardDisplayName = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TimeZoneInfoData data model.');
    }

    if (json.containsKey('BaseUtcOffset')) {
      baseUtcOffset = json['BaseUtcOffset'] as String;
    } else {
      baseUtcOffset = null;
    }

    if (json.containsKey('DisplayName')) {
      displayName = json['DisplayName'] as String;
    } else {
      displayName = null;
    }

    if (json.containsKey('Id')) {
      id = json['Id'] as String;
    } else {
      id = null;
    }

    if (json.containsKey('StandardDisplayName')) {
      standardDisplayName = json['StandardDisplayName'] as String;
    } else {
      standardDisplayName = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (baseUtcOffset != null) {
      _result['BaseUtcOffset'] = baseUtcOffset!;
    }

    if (displayName != null) {
      _result['DisplayName'] = displayName!;
    }

    if (id != null) {
      _result['Id'] = id!;
    }

    if (standardDisplayName != null) {
      _result['StandardDisplayName'] = standardDisplayName!;
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


