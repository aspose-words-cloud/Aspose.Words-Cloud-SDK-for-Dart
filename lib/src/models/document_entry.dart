/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_entry.dart">
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

/// Represents a document which will be appended to the original resource document.
class DocumentEntry extends BaseEntry {
  /// Gets or sets document password encrypted on API public key. The default value is null (the document has no password).
  String? _encryptedPassword;

  @Deprecated("This field is deprecated and used only for backward compatibility. Please use 'Password' or 'EncryptedPassword' from 'FileReference' instead.")
  String? get encryptedPassword => _encryptedPassword;
  @Deprecated("This field is deprecated and used only for backward compatibility. Please use 'Password' or 'EncryptedPassword' from 'FileReference' instead.")
  set encryptedPassword(String? val) => _encryptedPassword = val;


  /// Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
  DocumentEntry_ImportFormatModeEnum? _importFormatMode;

  DocumentEntry_ImportFormatModeEnum? get importFormatMode => _importFormatMode;
  set importFormatMode(DocumentEntry_ImportFormatModeEnum? val) => _importFormatMode = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize DocumentEntry data model.');
    }

    super.deserialize(json);
    if (json.containsKey('FileReference')) {
      throw ApiException(400, 'File content is not supported for deserialization.');
    } else {
      fileReference = null;
    }

    if (json.containsKey('EncryptedPassword')) {
      encryptedPassword = json['EncryptedPassword'] as String;
    } else {
      encryptedPassword = null;
    }

    if (json.containsKey('ImportFormatMode')) {
      switch (json['ImportFormatMode'] as String) {
        case 'UseDestinationStyles': importFormatMode = DocumentEntry_ImportFormatModeEnum.useDestinationStyles; break;
        case 'KeepSourceFormatting': importFormatMode = DocumentEntry_ImportFormatModeEnum.keepSourceFormatting; break;
        case 'KeepDifferentStyles': importFormatMode = DocumentEntry_ImportFormatModeEnum.keepDifferentStyles; break;
        default: importFormatMode = null; break;
      }
    } else {
      importFormatMode = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (encryptedPassword != null) {
      _result['EncryptedPassword'] = encryptedPassword!;
    }

    if (importFormatMode != null) {
      switch (importFormatMode!) {
        case DocumentEntry_ImportFormatModeEnum.useDestinationStyles: _result['ImportFormatMode'] = 'UseDestinationStyles'; break;
        case DocumentEntry_ImportFormatModeEnum.keepSourceFormatting: _result['ImportFormatMode'] = 'KeepSourceFormatting'; break;
        case DocumentEntry_ImportFormatModeEnum.keepDifferentStyles: _result['ImportFormatMode'] = 'KeepDifferentStyles'; break;
        default: break;
      }
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    super.getFilesContent(resultFilesContent);
  }

  @override
  void validate() {
    super.validate();
    if (importFormatMode == null)
    {
        throw new ApiException(400, 'Property ImportFormatMode in DocumentEntry is required.');
    }
  }
}

/// Gets or sets the option that controls formatting will be used: appended or destination document. Can be KeepSourceFormatting or UseDestinationStyles.
enum DocumentEntry_ImportFormatModeEnum
{ 
  useDestinationStyles,
  keepSourceFormatting,
  keepDifferentStyles
}

