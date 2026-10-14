/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="text_tests.dart">
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

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'package:test/test.dart';

import '../test_context.dart';

/// Example of how to work with macros.
class TextTests
{
  final TestContext context;
  late String remoteDataFolder;

  TextTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Text';
  }

  /// Test for replacing text.
  Future<void> testReplaceText() async
  {
    final remoteFileName = 'TestReplaceText.docx';
    final localFile = 'Common/test_multi_pages.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestReplaceText = ReplaceTextParameters();
    requestReplaceText.oldValue = 'Testing';
    requestReplaceText.newValue = 'Aspose testing';
    requestReplaceText.isMatchCase = true;
    requestReplaceText.isMatchWholeWord = false;
    requestReplaceText.isOldValueRegex = false;

    final request = ReplaceTextRequest(
      remoteFileName,
      requestReplaceText,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().replaceText(request);
    expect(result.matches, 3);
  }

  /// Test for replacing text online.
  Future<void> testReplaceTextOnline() async
  {
    final localFile = 'Common/test_multi_pages.docx';
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestReplaceText = ReplaceTextParameters();
    requestReplaceText.oldValue = 'aspose';
    requestReplaceText.newValue = 'aspose new';
    requestReplaceText.isMatchCase = true;
    requestReplaceText.isMatchWholeWord = false;
    requestReplaceText.isOldValueRegex = false;

    final request = ReplaceTextOnlineRequest(
      requestDocument,
      requestReplaceText
    );

    await context.getApi().replaceTextOnline(request);
  }

  /// Test for searching.
  Future<void> testSearch() async
  {
    final remoteFileName = 'TestSearch.docx';
    final localFile = 'DocumentElements/Text/SampleWordDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = SearchRequest(
      remoteFileName,
      'aspose',
      folder: remoteDataFolder
    );

    final result = await context.getApi().search(request);
    expect(result.searchResults, isNotNull);
    expect(result.searchResults?.resultsList, isNotNull);
    expect(result.searchResults?.resultsList?.length, 23);
    expect(result.searchResults?.resultsList?[0]?.rangeStart, isNotNull);
    expect(result.searchResults?.resultsList?[0]?.rangeStart?.offset, 65);
  }

  /// Test for searching online.
  Future<void> testSearchOnline() async
  {
    final localFile = 'DocumentElements/Text/SampleWordDocument.docx';
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = SearchOnlineRequest(
      requestDocument,
      'aspose'
    );

    await context.getApi().searchOnline(request);
  }
}
