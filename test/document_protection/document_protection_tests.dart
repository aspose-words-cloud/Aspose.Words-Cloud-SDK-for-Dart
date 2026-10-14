/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document_protection_tests.dart">
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

/// Example of how to set document protection.
class DocumentProtectionTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  DocumentProtectionTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/DocumentProtection';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for setting document protection.
  Future<void> testProtectDocument() async
  {
    final remoteFileName = 'TestProtectDocument.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestProtectionRequest = ProtectionRequestV2();
    requestProtectionRequest.protectionPassword = '123';
    requestProtectionRequest.protectionType = ProtectionRequestV2_ProtectionTypeEnum.readOnly;

    final request = ProtectDocumentRequest(
      remoteFileName,
      requestProtectionRequest,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().protectDocument(request);
    expect(result.protectionData, isNotNull);

  }

  /// Test for setting document protection.
  Future<void> testProtectDocumentOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestProtectionRequest = ProtectionRequestV2();
    requestProtectionRequest.protectionPassword = '123';
    requestProtectionRequest.protectionType = ProtectionRequestV2_ProtectionTypeEnum.readOnly;

    final request = ProtectDocumentOnlineRequest(
      requestDocument,
      requestProtectionRequest
    );

    await context.getApi().protectDocumentOnline(request);
  }

  /// Test for getting document protection.
  Future<void> testGetDocumentProtection() async
  {
    final localFilePath = 'DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx';
    final remoteFileName = 'TestGetDocumentProtection.docx';
    await context.uploadFile(localFilePath, remoteDataFolder + '/' + remoteFileName);

    final request = GetDocumentProtectionRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().getDocumentProtection(request);
  }

  /// Test for getting document protection.
  Future<void> testGetDocumentProtectionOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetDocumentProtectionOnlineRequest(
      requestDocument
    );

    await context.getApi().getDocumentProtectionOnline(request);
  }

  /// Test for deleting unprotect document.
  Future<void> testDeleteUnprotectDocument() async
  {
    final localFilePath = 'DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx';
    final remoteFileName = 'TestDeleteUnprotectDocument.docx';
    await context.uploadFile(localFilePath, remoteDataFolder + '/' + remoteFileName);

    final request = UnprotectDocumentRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().unprotectDocument(request);
    expect(result.protectionData, isNotNull);

  }

  /// Test for deleting unprotect document.
  Future<void> testDeleteUnprotectDocumentOnline() async
  {
    final localFilePath = 'DocumentActions/DocumentProtection/SampleProtectedBlankWordDocument.docx';
    final requestDocument = await context.loadBinaryFile(localFilePath);

    final request = UnprotectDocumentOnlineRequest(
      requestDocument
    );

    await context.getApi().unprotectDocumentOnline(request);
  }
}
