/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compare_document_tests.dart">
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

/// Example of document comparison.
class CompareDocumentTests
{
  final TestContext context;
  late String remoteFolder;
  late String localFolder;

  CompareDocumentTests(this.context) {
    remoteFolder = context.remoteBaseTestDataFolder + '/DocumentActions/CompareDocument';
    localFolder = 'DocumentActions/CompareDocument';
  }

  /// Test for document comparison.
  Future<void> testCompareDocument() async
  {
    final localName1 = 'compareTestDoc1.doc';
    final localName2 = 'compareTestDoc2.doc';
    final remoteName1 = 'TestCompareDocument1.doc';
    final remoteName2 = 'TestCompareDocument2.doc';
    await context.uploadFile(localFolder + '/' + localName1, remoteFolder + '/' + remoteName1);

    await context.uploadFile(localFolder + '/' + localName2, remoteFolder + '/' + remoteName2);
    final requestCompareDataFileReference = FileReference.fromRemoteFile(remoteFolder + '/' + remoteName2);

    final requestCompareData = CompareData();
    requestCompareData.author = 'author';
    requestCompareData.dateTime = DateTime(2015, 10, 26, 0, 0, 0);
    requestCompareData.fileReference = requestCompareDataFileReference;

    final request = CompareDocumentRequest(
      remoteName1,
      requestCompareData,
      folder: remoteFolder,
      destFileName: context.baseTestOutPath + '/TestCompareDocumentOut.doc'
    );

    final result = await context.getApi().compareDocument(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestCompareDocumentOut.doc');
  }

  /// Test for document comparison online.
  Future<void> testCompareDocumentOnline() async
  {
    final localName1 = 'compareTestDoc1.doc';
    final localName2 = 'compareTestDoc2.doc';
    final remoteName2 = 'TestCompareDocument2.doc';
    await context.uploadFile(localFolder + '/' + localName2, remoteFolder + '/' + remoteName2);
    final requestDocument = await context.loadBinaryFile(localFolder + '/' + localName1);

    final requestCompareDataFileReference = FileReference.fromRemoteFile(remoteFolder + '/' + remoteName2);

    final requestCompareData = CompareData();
    requestCompareData.author = 'author';
    requestCompareData.dateTime = DateTime(2015, 10, 26, 0, 0, 0);
    requestCompareData.fileReference = requestCompareDataFileReference;

    final request = CompareDocumentOnlineRequest(
      requestDocument,
      requestCompareData,
      destFileName: context.baseTestOutPath + '/TestCompareDocumentOut.doc'
    );

    await context.getApi().compareDocumentOnline(request);
  }

  /// Test for document comparison online.
  Future<void> testCompareTwoDocumentOnline() async
  {
    final localName1 = 'compareTestDoc1.doc';
    final localName2 = 'compareTestDoc2.doc';
    final remoteName2 = 'TestCompareDocument2.doc';
    await context.uploadFile(localFolder + '/' + localName2, remoteFolder + '/' + remoteName2);
    final requestDocument = await context.loadBinaryFile(localFolder + '/' + localName1);

    final requestCompareDataFileReferenceStream = await context.loadBinaryFile(localFolder + '/' + localName2);
    final requestCompareDataFileReference = FileReference.fromLocalFile(requestCompareDataFileReferenceStream);

    final requestCompareData = CompareData();
    requestCompareData.author = 'author';
    requestCompareData.dateTime = DateTime(2015, 10, 26, 0, 0, 0);
    requestCompareData.fileReference = requestCompareDataFileReference;

    final request = CompareDocumentOnlineRequest(
      requestDocument,
      requestCompareData,
      destFileName: context.baseTestOutPath + '/TestCompareDocumentOut.doc'
    );

    await context.getApi().compareDocumentOnline(request);
  }

  /// Test for document comparison with password protection.
  Future<void> testCompareDocumentWithPassword() async
  {
    final localName = 'DocWithPassword.docx';
    final remoteName1 = 'TestCompareDocument1.docx';
    final remoteName2 = 'TestCompareDocument2.docx';
    await context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName1);

    await context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName2);
    final requestCompareDataFileReference = FileReference.fromRemoteFile(remoteFolder + '/' + remoteName2, "12345");

    final requestCompareData = CompareData();
    requestCompareData.author = 'author';
    requestCompareData.dateTime = DateTime(2015, 10, 26, 0, 0, 0);
    requestCompareData.fileReference = requestCompareDataFileReference;

    final request = CompareDocumentRequest(
      remoteName1,
      requestCompareData,
      folder: remoteFolder,
      password: '12345',
      destFileName: context.baseTestOutPath + '/TestCompareDocumentOut.docx'
    );

    final result = await context.getApi().compareDocument(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestCompareDocumentOut.docx');
  }
}
