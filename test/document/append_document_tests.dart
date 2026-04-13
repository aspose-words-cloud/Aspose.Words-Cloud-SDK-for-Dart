/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="append_document_tests.dart">
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

/// Example of how to append document.
class AppendDocumentTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  AppendDocumentTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/AppendDocument';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for appending document.
  Future<void> testAppendDocument() async
  {
    final remoteFileName = 'TestAppendDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestDocumentListDocumentEntries0FileReference = FileReference.fromRemoteFile(remoteDataFolder + '/' + remoteFileName);

    final requestDocumentListDocumentEntries0 = DocumentEntry();
    requestDocumentListDocumentEntries0.fileReference = requestDocumentListDocumentEntries0FileReference;
    requestDocumentListDocumentEntries0.importFormatMode = DocumentEntry_ImportFormatModeEnum.keepSourceFormatting;

    final requestDocumentListDocumentEntries = [
      requestDocumentListDocumentEntries0];

    final requestDocumentList = DocumentEntryList();
    requestDocumentList.documentEntries = requestDocumentListDocumentEntries;

    final request = AppendDocumentRequest(
      remoteFileName,
      requestDocumentList,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().appendDocument(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestAppendDocument.docx');
  }

  /// Test for appending document job.
  Future<void> testAppendDocumentJob() async
  {
    final remoteFileName = 'TestAppendDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestDocumentListDocumentEntries0FileReference = FileReference.fromRemoteFile(remoteDataFolder + '/' + remoteFileName);

    final requestDocumentListDocumentEntries0 = DocumentEntry();
    requestDocumentListDocumentEntries0.fileReference = requestDocumentListDocumentEntries0FileReference;
    requestDocumentListDocumentEntries0.importFormatMode = DocumentEntry_ImportFormatModeEnum.keepSourceFormatting;

    final requestDocumentListDocumentEntries = [
      requestDocumentListDocumentEntries0];

    final requestDocumentList = DocumentEntryList();
    requestDocumentList.documentEntries = requestDocumentListDocumentEntries;

    final request = AppendDocumentJobRequest(
      remoteFileName,
      requestDocumentList,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final jobHandler = await context.getApi().appendDocumentJob(request);
    final result = await jobHandler.waitResult(const Duration(seconds: 3));
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestAppendDocument.docx');
  }

  /// Test for appending document online.
  Future<void> testAppendDocumentOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestDocumentListDocumentEntries0FileReferenceStream = await context.loadBinaryFile(localFile);
    final requestDocumentListDocumentEntries0FileReference = FileReference.fromLocalFile(requestDocumentListDocumentEntries0FileReferenceStream);

    final requestDocumentListDocumentEntries0 = DocumentEntry();
    requestDocumentListDocumentEntries0.fileReference = requestDocumentListDocumentEntries0FileReference;
    requestDocumentListDocumentEntries0.importFormatMode = DocumentEntry_ImportFormatModeEnum.keepSourceFormatting;

    final requestDocumentListDocumentEntries = [
      requestDocumentListDocumentEntries0];

    final requestDocumentList = DocumentEntryList();
    requestDocumentList.documentEntries = requestDocumentListDocumentEntries;

    final request = AppendDocumentOnlineRequest(
      requestDocument,
      requestDocumentList
    );

    await context.getApi().appendDocumentOnline(request);
  }

  /// Test for appending document online job.
  Future<void> testAppendDocumentOnlineJob() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestDocumentListDocumentEntries0FileReferenceStream = await context.loadBinaryFile(localFile);
    final requestDocumentListDocumentEntries0FileReference = FileReference.fromLocalFile(requestDocumentListDocumentEntries0FileReferenceStream);

    final requestDocumentListDocumentEntries0 = DocumentEntry();
    requestDocumentListDocumentEntries0.fileReference = requestDocumentListDocumentEntries0FileReference;
    requestDocumentListDocumentEntries0.importFormatMode = DocumentEntry_ImportFormatModeEnum.keepSourceFormatting;

    final requestDocumentListDocumentEntries = [
      requestDocumentListDocumentEntries0];

    final requestDocumentList = DocumentEntryList();
    requestDocumentList.documentEntries = requestDocumentListDocumentEntries;

    final request = AppendDocumentOnlineJobRequest(
      requestDocument,
      requestDocumentList
    );

    final jobHandler = await context.getApi().appendDocumentOnlineJob(request);
    await jobHandler.waitResult(const Duration(seconds: 3));
  }
}
