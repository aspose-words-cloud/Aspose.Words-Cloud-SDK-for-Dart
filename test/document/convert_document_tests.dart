/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="convert_document_tests.dart">
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

/// Example of how to convert document to one of the available formats.
class ConvertDocumentTests
{
  final TestContext context;
  late String remoteFolder;
  late String localFolder;

  ConvertDocumentTests(this.context) {
    remoteFolder = context.remoteBaseTestDataFolder + '/DocumentActions/ConvertDocument';
    localFolder = 'DocumentActions/ConvertDocument';
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAs() async
  {
    final localName = 'test_multi_pages.docx';
    final remoteName = 'TestSaveAs.docx';
    await context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName);
    final requestSaveOptionsData = PdfSaveOptionsData();
    requestSaveOptionsData.fileName = context.baseTestOutPath + '/TestSaveAs.pdf';

    final request = SaveAsRequest(
      remoteName,
      requestSaveOptionsData,
      folder: remoteFolder
    );

    final result = await context.getApi().saveAs(request);
    expect(result.saveResult, isNotNull);
    expect(result.saveResult?.destDocument, isNotNull);
  }

  /// Test for converting document online to one of the available formats.
  Future<void> testSaveAsOnline() async
  {
    final localName = 'test_multi_pages.docx';
    final requestDocument = await context.loadBinaryFile('Common/' + localName);

    final requestSaveOptionsData = PdfSaveOptionsData();
    requestSaveOptionsData.fileName = context.baseTestOutPath + '/TestSaveAs.pdf';

    final request = SaveAsOnlineRequest(
      requestDocument,
      requestSaveOptionsData
    );

    await context.getApi().saveAsOnline(request);
  }

  /// Test for converting document online to html with additional files like css and images.
  Future<void> testSaveAsOnlineHtmlMultifile() async
  {
    final localName = 'test_multi_pages.docx';
    final requestDocument = await context.loadBinaryFile('Common/' + localName);

    final requestSaveOptionsData = HtmlSaveOptionsData();
    requestSaveOptionsData.fileName = context.baseTestOutPath + '/TestSaveAsHtml.html';
    requestSaveOptionsData.cssStyleSheetType = HtmlSaveOptionsData_CssStyleSheetTypeEnum.external;
    requestSaveOptionsData.cssStyleSheetFileName = context.baseTestOutPath + '/TestSaveAsHtml.css';

    final request = SaveAsOnlineRequest(
      requestDocument,
      requestSaveOptionsData
    );

    await context.getApi().saveAsOnline(request);
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAsDocx() async
  {
    final localName = '45.pdf';
    final remoteName = 'TestSaveAsFromPdfToDoc.pdf';
    await context.uploadFile(localFolder + '/' + localName, remoteFolder + '/' + remoteName);
    final requestSaveOptionsData = DocxSaveOptionsData();
    requestSaveOptionsData.fileName = context.baseTestOutPath + '/TestSaveAsFromPdfToDoc.docx';

    final request = SaveAsRequest(
      remoteName,
      requestSaveOptionsData,
      folder: remoteFolder
    );

    final result = await context.getApi().saveAs(request);
    expect(result.saveResult, isNotNull);
    expect(result.saveResult?.destDocument, isNotNull);
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAsTiff() async
  {
    final localName = 'test_multi_pages.docx';
    final remoteName = 'TestSaveAsTiff.pdf';
    await context.uploadFile('Common/' + localName, remoteFolder + '/' + remoteName);
    final requestSaveOptions = TiffSaveOptionsData();
    requestSaveOptions.fileName = context.baseTestOutPath + '/abc.tiff';

    final request = SaveAsTiffRequest(
      remoteName,
      requestSaveOptions,
      folder: remoteFolder
    );

    final result = await context.getApi().saveAsTiff(request);
    expect(result.saveResult, isNotNull);
    expect(result.saveResult?.destDocument, isNotNull);
  }

  /// Test for converting document to one of the available formats.
  Future<void> testSaveAsTiffOnline() async
  {
    final localName = 'test_multi_pages.docx';
    final requestDocument = await context.loadBinaryFile('Common/' + localName);

    final requestSaveOptions = TiffSaveOptionsData();
    requestSaveOptions.fileName = context.baseTestOutPath + '/abc.tiff';

    final request = SaveAsTiffOnlineRequest(
      requestDocument,
      requestSaveOptions
    );

    await context.getApi().saveAsTiffOnline(request);
  }

  /// A test for ConvertDocument.
  Future<void> testConvertDocument() async
  {
    final requestDocument = await context.loadBinaryFile(localFolder + '/test_uploadfile.docx');

    final request = ConvertDocumentRequest(
      requestDocument,
      'pdf'
    );

    await context.getApi().convertDocument(request);
  }

  /// A test for ConvertDocument as a job.
  Future<void> testConvertDocumentJob() async
  {
    final requestDocument = await context.loadBinaryFile(localFolder + '/test_uploadfile.docx');

    final request = ConvertDocumentJobRequest(
      requestDocument,
      'pdf'
    );

    final jobHandler = await context.getApi().convertDocumentJob(request);
    await jobHandler.waitResult(const Duration(seconds: 3));
  }
}
