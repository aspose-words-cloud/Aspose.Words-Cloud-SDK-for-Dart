/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="revisions_tests.dart">
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

/// Example of how to accept all revisions in document.
class RevisionsTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  RevisionsTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/Revisions';
    localFile = 'DocumentElements/Revisions/TestRevisions.doc';
  }

  /// Test for accepting revisions in document.
  Future<void> testAcceptAllRevisions() async
  {
    final remoteFileName = 'TestAcceptAllRevisions.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = AcceptAllRevisionsRequest(
      remoteFileName,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().acceptAllRevisions(request);
    expect(result.result, isNotNull);
    expect(result.result?.dest, isNotNull);
  }

  /// Test for accepting revisions in document online.
  Future<void> testAcceptAllRevisionsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = AcceptAllRevisionsOnlineRequest(
      requestDocument
    );

    final result = await context.getApi().acceptAllRevisionsOnline(request);
    expect(result.document, isNotNull);
    expect(result.model, isNotNull);
    expect(result.model?.result, isNotNull);
    expect(result.model?.result?.dest, isNotNull);
  }

  /// Test for rejecting revisions in document.
  Future<void> testRejectAllRevisions() async
  {
    final remoteFileName = 'TestRejectAllRevisions.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RejectAllRevisionsRequest(
      remoteFileName,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().rejectAllRevisions(request);
    expect(result.result, isNotNull);
    expect(result.result?.dest, isNotNull);
  }

  /// Test for rejecting revisions in document online.
  Future<void> testRejectAllRevisionsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = RejectAllRevisionsOnlineRequest(
      requestDocument
    );

    final result = await context.getApi().rejectAllRevisionsOnline(request);
    expect(result.document, isNotNull);
    expect(result.model, isNotNull);
    expect(result.model?.result, isNotNull);
    expect(result.model?.result?.dest, isNotNull);
  }

  /// Test for getting revisions from document.
  Future<void> testGetAllRevisions() async
  {
    final remoteFileName = 'TestAcceptAllRevisions.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetAllRevisionsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getAllRevisions(request);
    expect(result.revisions, isNotNull);
    expect(result.revisions?.revisions?.length, 6);
  }

  /// Test for getting revisions online from document.
  Future<void> testGetAllRevisionsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetAllRevisionsOnlineRequest(
      requestDocument
    );

    final result = await context.getApi().getAllRevisionsOnline(request);
    expect(result.revisions, isNotNull);
    expect(result.revisions?.revisions?.length, 6);
  }
}
