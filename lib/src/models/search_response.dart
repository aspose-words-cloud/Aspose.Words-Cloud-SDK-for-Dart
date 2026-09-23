/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="search_response.dart">
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

/// The REST response with a regular expression pattern and a collection of search results.
/// This response is returned by the Service when handling "GET https://api.aspose.cloud/v4.0/words/Test.doc/search" REST API requests.
class SearchResponse extends WordsResponse {
  /// Gets or sets the regular expression pattern used to find matches.
  String? _searchingPattern;

  String? get searchingPattern => _searchingPattern;
  set searchingPattern(String? val) => _searchingPattern = val;


  /// Gets or sets the collection of search results.
  SearchResultsCollection? _searchResults;

  SearchResultsCollection? get searchResults => _searchResults;
  set searchResults(SearchResultsCollection? val) => _searchResults = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize SearchResponse data model.');
    }

    super.deserialize(json);
    if (json.containsKey('RequestId')) {
      requestId = json['RequestId'] as String;
    } else {
      requestId = null;
    }

    if (json.containsKey('SearchingPattern')) {
      searchingPattern = json['SearchingPattern'] as String;
    } else {
      searchingPattern = null;
    }

    if (json.containsKey('SearchResults')) {
      searchResults = ModelBase.createInstance< SearchResultsCollection >(json['SearchResults'] as Map<String, dynamic>);
    } else {
      searchResults = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (searchingPattern != null) {
      _result['SearchingPattern'] = searchingPattern!;
    }

    if (searchResults != null) {
      _result['SearchResults'] = searchResults!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    searchResults?.validate();

  }
}


