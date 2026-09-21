/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="hyperlink_tests.dart">
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

/// Example of how to work with hyperlinks.
class HyperlinkTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  HyperlinkTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Hyperlink';
    localFile = 'Common/test_doc.docx';
  }

  /// Test for getting hyperlink by specified index.
  Future<void> testGetDocumentHyperlinkByIndex() async
  {
    final remoteFileName = 'TestGetDocumentHyperlinkByIndex.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentHyperlinkByIndexRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getDocumentHyperlinkByIndex(request);
    expect(result.hyperlink, isNotNull);
    expect(result.hyperlink?.displayText, 'Aspose');
  }

  /// Test for getting hyperlink by specified index online.
  Future<void> testGetDocumentHyperlinkByIndexOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetDocumentHyperlinkByIndexOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().getDocumentHyperlinkByIndexOnline(request);
  }

  /// Test for getting hyperlinks.
  Future<void> testGetDocumentHyperlinks() async
  {
    final remoteFileName = 'TestGetDocumentHyperlinks.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentHyperlinksRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getDocumentHyperlinks(request);
    expect(result.hyperlinks, isNotNull);
    expect(result.hyperlinks?.hyperlinkList, isNotNull);
    expect(result.hyperlinks?.hyperlinkList?.length, 2);
    expect(result.hyperlinks?.hyperlinkList?[0]?.displayText, 'Aspose');
  }

  /// Test for getting hyperlinks online.
  Future<void> testGetDocumentHyperlinksOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetDocumentHyperlinksOnlineRequest(
      requestDocument
    );

    await context.getApi().getDocumentHyperlinksOnline(request);
  }
}
