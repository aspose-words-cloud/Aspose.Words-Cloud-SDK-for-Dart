/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="page_stat_data.dart">
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

/// Container for the page's statistical data.
class PageStatData implements ModelBase {
  /// Gets or sets the detailed statistics on the footnotes.
  FootnotesStatData? _footnotesStatData;

  FootnotesStatData? get footnotesStatData => _footnotesStatData;
  set footnotesStatData(FootnotesStatData? val) => _footnotesStatData = val;


  /// Gets or sets the total count of paragraphs in the page.
  int? _paragraphCount;

  int? get paragraphCount => _paragraphCount;
  set paragraphCount(int? val) => _paragraphCount = val;


  /// Gets or sets the total count of words in the page.
  int? _wordCount;

  int? get wordCount => _wordCount;
  set wordCount(int? val) => _wordCount = val;


  /// Gets or sets the page number.
  int? _pageNumber;

  int? get pageNumber => _pageNumber;
  set pageNumber(int? val) => _pageNumber = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PageStatData data model.');
    }

    if (json.containsKey('FootnotesStatData')) {
      footnotesStatData = ModelBase.createInstance< FootnotesStatData >(json['FootnotesStatData'] as Map<String, dynamic>);
    } else {
      footnotesStatData = null;
    }

    if (json.containsKey('ParagraphCount')) {
      paragraphCount = json['ParagraphCount'] as int;
    } else {
      paragraphCount = null;
    }

    if (json.containsKey('WordCount')) {
      wordCount = json['WordCount'] as int;
    } else {
      wordCount = null;
    }

    if (json.containsKey('PageNumber')) {
      pageNumber = json['PageNumber'] as int;
    } else {
      pageNumber = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (footnotesStatData != null) {
      _result['FootnotesStatData'] = footnotesStatData!.serialize();
    }

    if (paragraphCount != null) {
      _result['ParagraphCount'] = paragraphCount!;
    }

    if (wordCount != null) {
      _result['WordCount'] = wordCount!;
    }

    if (pageNumber != null) {
      _result['PageNumber'] = pageNumber!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (paragraphCount == null)
    {
        throw new ApiException(400, 'Property ParagraphCount in PageStatData is required.');
    }
    if (wordCount == null)
    {
        throw new ApiException(400, 'Property WordCount in PageStatData is required.');
    }
    if (pageNumber == null)
    {
        throw new ApiException(400, 'Property PageNumber in PageStatData is required.');
    }

    footnotesStatData?.validate();




  }
}


