/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="advanced_compare_options.dart">
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

/// Allows to set advanced compare options.
class AdvancedCompareOptions implements ModelBase {
  /// Gets or sets the value indicating whether list definition contents are compared instead of list definition Ids.
  /// Default value is false.
  bool? _compareListDefinitions;

  bool? get compareListDefinitions => _compareListDefinitions;
  set compareListDefinitions(bool? val) => _compareListDefinitions = val;


  /// Gets or sets the value indicating whether to ignore difference in DrawingML unique Id.
  /// Default value is false.
  bool? _ignoreDmlUniqueId;

  bool? get ignoreDmlUniqueId => _ignoreDmlUniqueId;
  set ignoreDmlUniqueId(bool? val) => _ignoreDmlUniqueId = val;


  /// Gets or sets the value indicating whether to ignore difference in StructuredDocumentTag store item Id.
  /// Default value is false.
  bool? _ignoreStoreItemId;

  bool? get ignoreStoreItemId => _ignoreStoreItemId;
  set ignoreStoreItemId(bool? val) => _ignoreStoreItemId = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize AdvancedCompareOptions data model.');
    }

    if (json.containsKey('CompareListDefinitions')) {
      compareListDefinitions = json['CompareListDefinitions'] as bool;
    } else {
      compareListDefinitions = null;
    }

    if (json.containsKey('IgnoreDmlUniqueId')) {
      ignoreDmlUniqueId = json['IgnoreDmlUniqueId'] as bool;
    } else {
      ignoreDmlUniqueId = null;
    }

    if (json.containsKey('IgnoreStoreItemId')) {
      ignoreStoreItemId = json['IgnoreStoreItemId'] as bool;
    } else {
      ignoreStoreItemId = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (compareListDefinitions != null) {
      _result['CompareListDefinitions'] = compareListDefinitions!;
    }

    if (ignoreDmlUniqueId != null) {
      _result['IgnoreDmlUniqueId'] = ignoreDmlUniqueId!;
    }

    if (ignoreStoreItemId != null) {
      _result['IgnoreStoreItemId'] = ignoreStoreItemId!;
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


