/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compress_document_tests.dart">
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

/// Example of how to compress document for reduce document size.
class CompressDocumentTests
{
  final TestContext context;
  late String remoteFolder;
  late String localFolder;

  CompressDocumentTests(this.context) {
    remoteFolder = context.remoteBaseTestDataFolder + '/DocumentActions/CompressDocument';
    localFolder = 'DocumentActions/CompressDocument';
  }

  /// Test for compression document.
  Future<void> testCompressDocument() async
  {
    final localName = 'TestCompress.docx';
    final remoteName = 'TestCompress.docx';
    await context.uploadFile(localFolder + '/' + localName, remoteFolder + '/' + remoteName);
    final requestCompressOptions = CompressOptions();


    final request = CompressDocumentRequest(
      remoteName,
      requestCompressOptions,
      folder: remoteFolder
    );

    final result = await context.getApi().compressDocument(request);
    expect(result.document, isNotNull);
  }

  /// Test for compression document online.
  Future<void> testCompressDocumentOnline() async
  {
    final localName = 'TestCompress.docx';
    final requestDocument = await context.loadBinaryFile(localFolder + '/' + localName);

    final requestCompressOptions = CompressOptions();


    final request = CompressDocumentOnlineRequest(
      requestDocument,
      requestCompressOptions
    );

    await context.getApi().compressDocumentOnline(request);
  }
}
