/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="csv_data_load_options.dart">
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

/// Represents options for parsing CSV data.
/// To learn more, visit the LINQ Reporting Engine documentation article.
/// An instance of this class can be passed into constructors of CsvDataSource.
class CsvDataLoadOptions implements ModelBase {
  /// Gets or sets the character that is used to comment lines of CSV data.
  /// The default value is '#' (number sign).
  String? _commentChar;

  String? get commentChar => _commentChar;
  set commentChar(String? val) => _commentChar = val;


  /// Gets or sets the character to be used as a column delimiter.
  /// The default value is ',' (comma).
  String? _delimiter;

  String? get delimiter => _delimiter;
  set delimiter(String? val) => _delimiter = val;


  /// Gets or sets a value indicating whether the first record of CSV data contains column names.
  /// The default value is false.
  bool? _hasHeaders;

  bool? get hasHeaders => _hasHeaders;
  set hasHeaders(bool? val) => _hasHeaders = val;


  /// Gets or sets the character that is used to quote field values.
  /// The default value is '"' (quotation mark).Double the character to place it into quoted text.
  String? _quoteChar;

  String? get quoteChar => _quoteChar;
  set quoteChar(String? val) => _quoteChar = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CsvDataLoadOptions data model.');
    }

    if (json.containsKey('CommentChar')) {
      commentChar = json['CommentChar'] as String;
    } else {
      commentChar = null;
    }

    if (json.containsKey('Delimiter')) {
      delimiter = json['Delimiter'] as String;
    } else {
      delimiter = null;
    }

    if (json.containsKey('HasHeaders')) {
      hasHeaders = json['HasHeaders'] as bool;
    } else {
      hasHeaders = null;
    }

    if (json.containsKey('QuoteChar')) {
      quoteChar = json['QuoteChar'] as String;
    } else {
      quoteChar = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (commentChar != null) {
      _result['CommentChar'] = commentChar!;
    }

    if (delimiter != null) {
      _result['Delimiter'] = delimiter!;
    }

    if (hasHeaders != null) {
      _result['HasHeaders'] = hasHeaders!;
    }

    if (quoteChar != null) {
      _result['QuoteChar'] = quoteChar!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (commentChar == null)
    {
        throw new ApiException(400, 'Property CommentChar in CsvDataLoadOptions is required.');
    }
    if (delimiter == null)
    {
        throw new ApiException(400, 'Property Delimiter in CsvDataLoadOptions is required.');
    }
    if (hasHeaders == null)
    {
        throw new ApiException(400, 'Property HasHeaders in CsvDataLoadOptions is required.');
    }
    if (quoteChar == null)
    {
        throw new ApiException(400, 'Property QuoteChar in CsvDataLoadOptions is required.');
    }
  }
}


