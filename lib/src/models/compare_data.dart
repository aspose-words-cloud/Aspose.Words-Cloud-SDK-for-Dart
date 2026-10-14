/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compare_data.dart">
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

/// Container class for compare documents.
class CompareData implements ModelBase {
  /// Gets or sets advanced compare options that might help to produce more precise comparison output.
  AdvancedCompareOptions? _advancedOptions;

  AdvancedCompareOptions? get advancedOptions => _advancedOptions;
  set advancedOptions(AdvancedCompareOptions? val) => _advancedOptions = val;


  /// Gets or sets the initials of the author to use for revisions.
  String? _author;

  String? get author => _author;
  set author(String? val) => _author = val;


  /// Gets or sets the compare options.
  CompareOptions? _compareOptions;

  CompareOptions? get compareOptions => _compareOptions;
  set compareOptions(CompareOptions? val) => _compareOptions = val;


  /// Gets or sets the path to document to compare at the server.
  String? _comparingWithDocument;

  @Deprecated("This field is deprecated and used only for backward compatibility. Please use FileReference instead.")
  String? get comparingWithDocument => _comparingWithDocument;
  @Deprecated("This field is deprecated and used only for backward compatibility. Please use FileReference instead.")
  set comparingWithDocument(String? val) => _comparingWithDocument = val;


  /// Gets or sets the date and time to use for revisions.
  DateTime? _dateTime;

  DateTime? get dateTime => _dateTime;
  set dateTime(DateTime? val) => _dateTime = val;


  /// Gets or sets the file reference.
  FileReference? _fileReference;

  FileReference? get fileReference => _fileReference;
  set fileReference(FileReference? val) => _fileReference = val;


  /// Gets or sets the result document format.
  String? _resultDocumentFormat;

  String? get resultDocumentFormat => _resultDocumentFormat;
  set resultDocumentFormat(String? val) => _resultDocumentFormat = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CompareData data model.');
    }

    if (json.containsKey('AdvancedOptions')) {
      advancedOptions = ModelBase.createInstance< AdvancedCompareOptions >(json['AdvancedOptions'] as Map<String, dynamic>);
    } else {
      advancedOptions = null;
    }

    if (json.containsKey('Author')) {
      author = json['Author'] as String;
    } else {
      author = null;
    }

    if (json.containsKey('CompareOptions')) {
      compareOptions = ModelBase.createInstance< CompareOptions >(json['CompareOptions'] as Map<String, dynamic>);
    } else {
      compareOptions = null;
    }

    if (json.containsKey('ComparingWithDocument')) {
      comparingWithDocument = json['ComparingWithDocument'] as String;
    } else {
      comparingWithDocument = null;
    }

    if (json.containsKey('DateTime')) {
      dateTime = DateTime.parse(json['DateTime'] as String);
    } else {
      dateTime = null;
    }

    if (json.containsKey('FileReference')) {
      throw ApiException(400, 'File content is not supported for deserialization.');
    } else {
      fileReference = null;
    }

    if (json.containsKey('ResultDocumentFormat')) {
      resultDocumentFormat = json['ResultDocumentFormat'] as String;
    } else {
      resultDocumentFormat = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (advancedOptions != null) {
      _result['AdvancedOptions'] = advancedOptions!.serialize();
    }

    if (author != null) {
      _result['Author'] = author!;
    }

    if (compareOptions != null) {
      _result['CompareOptions'] = compareOptions!.serialize();
    }

    if (comparingWithDocument != null) {
      _result['ComparingWithDocument'] = comparingWithDocument!;
    }

    if (dateTime != null) {
      _result['DateTime'] = dateTime!.toIso8601String();
    }

    if (fileReference != null) {
      _result['FileReference'] = fileReference!.serialize();
    }

    if (resultDocumentFormat != null) {
      _result['ResultDocumentFormat'] = resultDocumentFormat!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
    if (fileReference != null)
    {
        fileReference!.getFilesContent(resultFilesContent);
    }


  }

  @override
  void validate() {
    if (author == null)
    {
        throw new ApiException(400, 'Property Author in CompareData is required.');
    }
    if (fileReference == null)
    {
        throw new ApiException(400, 'Property FileReference in CompareData is required.');
    }

    advancedOptions?.validate();




    compareOptions?.validate();





    fileReference?.validate();


  }
}


