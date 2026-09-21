/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="info_response.dart">
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

/// Response with API info.
class InfoResponse extends WordsResponse {
  /// Gets or sets AdditionalInfo.
  List<InfoAdditionalItem?>? _additionalInfo;

  List<InfoAdditionalItem?>? get additionalInfo => _additionalInfo;
  set additionalInfo(List<InfoAdditionalItem?>? val) => _additionalInfo = val;


  /// Gets or sets Name.
  String? _name;

  String? get name => _name;
  set name(String? val) => _name = val;


  /// Gets or sets Version.
  String? _version;

  String? get version => _version;
  set version(String? val) => _version = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize InfoResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }

    if (json.containsKey('AdditionalInfo')) {
      // Array processing
      additionalInfo = <InfoAdditionalItem>[];
      for(final _element in json['AdditionalInfo']) {
        additionalInfo!.add(ModelBase.createInstance< InfoAdditionalItem >(_element as Map<String, dynamic>));
      }
    } else {
      additionalInfo = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }

    if (json.containsKey('Version')) {
      version = json['Version'] as String;
    } else {
      version = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (additionalInfo != null) {
      _result['AdditionalInfo'] = additionalInfo!.map((_element) => _element?.serialize()).toList();
    }

    if (name != null) {
      _result['Name'] = name!;
    }

    if (version != null) {
      _result['Version'] = version!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    for (final elementAdditionalInfo in additionalInfo ?? [])
    {
        elementAdditionalInfo?.validate();
    }



  }
}


