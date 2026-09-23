/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="structured_document_tag_list_item.dart">
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

/// DTO container with a SdtListItem for StructuredDocumentTag.
class StructuredDocumentTagListItem implements ModelBase {
  /// Gets or sets the text to display in the run content in place of the Aspose.Words.Markup.SdtListItem.Value attribute contents for this list item.
  /// Cannot be null and cannot be an empty string.
  String? _displayText;

  String? get displayText => _displayText;
  set displayText(String? val) => _displayText = val;


  /// Gets or sets the value of this list item.
  /// Cannot be null and cannot be an empty string.
  String? _value;

  String? get value => _value;
  set value(String? val) => _value = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize StructuredDocumentTagListItem data model.');
    }

    if (json.containsKey('DisplayText')) {
      displayText = json['DisplayText'] as String;
    } else {
      displayText = null;
    }

    if (json.containsKey('Value')) {
      value = json['Value'] as String;
    } else {
      value = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (displayText != null) {
      _result['DisplayText'] = displayText!;
    }

    if (value != null) {
      _result['Value'] = value!;
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


