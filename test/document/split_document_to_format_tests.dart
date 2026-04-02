/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="split_document_to_format_tests.dart">
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

/// Example of how to split document and return result with specified format and page range.
class SplitDocumentToFormatTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  SplitDocumentToFormatTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/SplitDocument';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for document splitting.
  Future<void> testSplitDocument() async
  {
    final remoteFileName = 'TestSplitDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = SplitDocumentRequest(
      remoteFileName,
      'text',
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/TestSplitDocument.text',
      from: 1,
      to: 2
    );

    final result = await context.getApi().splitDocument(request);
    expect(result.splitResult, isNotNull);
    expect(result.splitResult?.pages, isNotNull);
    expect(result.splitResult?.pages?.length, 2);
  }

  /// Test for document splitting job.
  Future<void> testSplitDocumentJob() async
  {
    final remoteFileName = 'TestSplitDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = SplitDocumentJobRequest(
      remoteFileName,
      'text',
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/TestSplitDocument.text',
      from: 1,
      to: 2
    );

    final jobHandler = await context.getApi().splitDocumentJob(request);
    final result = await jobHandler.waitResult(const Duration(seconds: 3));
    expect(result.splitResult, isNotNull);
    expect(result.splitResult?.pages, isNotNull);
    expect(result.splitResult?.pages?.length, 2);
  }

  /// Test for document splitting online.
  Future<void> testSplitDocumentOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = SplitDocumentOnlineRequest(
      requestDocument,
      'text',
      destFileName: context.baseTestOutPath + '/TestSplitDocument.text',
      from: 1,
      to: 2
    );

    await context.getApi().splitDocumentOnline(request);
  }

  /// Test for document splitting online job.
  Future<void> testSplitDocumentOnlineJob() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = SplitDocumentOnlineJobRequest(
      requestDocument,
      'text',
      destFileName: context.baseTestOutPath + '/TestSplitDocument.text',
      from: 1,
      to: 2
    );

    final jobHandler = await context.getApi().splitDocumentOnlineJob(request);
    await jobHandler.waitResult(const Duration(seconds: 3));
  }
}
