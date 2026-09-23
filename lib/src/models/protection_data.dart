/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="protection_data.dart">
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

/// Container for the data about protection of the document.
class ProtectionData implements ModelBase {
  /// Gets or sets type of the protection.
  ProtectionData_ProtectionTypeEnum? _protectionType;

  ProtectionData_ProtectionTypeEnum? get protectionType => _protectionType;
  set protectionType(ProtectionData_ProtectionTypeEnum? val) => _protectionType = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ProtectionData data model.');
    }

    if (json.containsKey('ProtectionType')) {
      switch (json['ProtectionType'] as String) {
        case 'AllowOnlyRevisions': protectionType = ProtectionData_ProtectionTypeEnum.allowOnlyRevisions; break;
        case 'AllowOnlyComments': protectionType = ProtectionData_ProtectionTypeEnum.allowOnlyComments; break;
        case 'AllowOnlyFormFields': protectionType = ProtectionData_ProtectionTypeEnum.allowOnlyFormFields; break;
        case 'ReadOnly': protectionType = ProtectionData_ProtectionTypeEnum.readOnly; break;
        case 'NoProtection': protectionType = ProtectionData_ProtectionTypeEnum.noProtection; break;
        default: protectionType = null; break;
      }
    } else {
      protectionType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (protectionType != null) {
      switch (protectionType!) {
        case ProtectionData_ProtectionTypeEnum.allowOnlyRevisions: _result['ProtectionType'] = 'AllowOnlyRevisions'; break;
        case ProtectionData_ProtectionTypeEnum.allowOnlyComments: _result['ProtectionType'] = 'AllowOnlyComments'; break;
        case ProtectionData_ProtectionTypeEnum.allowOnlyFormFields: _result['ProtectionType'] = 'AllowOnlyFormFields'; break;
        case ProtectionData_ProtectionTypeEnum.readOnly: _result['ProtectionType'] = 'ReadOnly'; break;
        case ProtectionData_ProtectionTypeEnum.noProtection: _result['ProtectionType'] = 'NoProtection'; break;
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
    if (protectionType == null)
    {
        throw new ApiException(400, 'Property ProtectionType in ProtectionData is required.');
    }
  }
}

/// Gets or sets type of the protection.
enum ProtectionData_ProtectionTypeEnum
{ 
  allowOnlyRevisions,
  allowOnlyComments,
  allowOnlyFormFields,
  readOnly,
  noProtection
}

