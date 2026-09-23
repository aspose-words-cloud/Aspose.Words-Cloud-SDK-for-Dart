/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="modification_operation_result.dart">
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

/// result of the operation which modifies the original document and saves the result.
class ModificationOperationResult implements ModelBase {
  /// Gets or sets the link to the dest document (result of the modification operation).
  FileLink? _dest;

  FileLink? get dest => _dest;
  set dest(FileLink? val) => _dest = val;


  /// Gets or sets the link to the source document (source for the modification operation).
  FileLink? _source;

  FileLink? get source => _source;
  set source(FileLink? val) => _source = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ModificationOperationResult data model.');
    }

    if (json.containsKey('Dest')) {
      dest = ModelBase.createInstance< FileLink >(json['Dest'] as Map<String, dynamic>);
    } else {
      dest = null;
    }

    if (json.containsKey('Source')) {
      source = ModelBase.createInstance< FileLink >(json['Source'] as Map<String, dynamic>);
    } else {
      source = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (dest != null) {
      _result['Dest'] = dest!.serialize();
    }

    if (source != null) {
      _result['Source'] = source!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {

    dest?.validate();



    source?.validate();

  }
}


