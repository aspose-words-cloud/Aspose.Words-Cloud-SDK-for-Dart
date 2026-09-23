/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="header_footer_tests.dart">
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

/// Example of how to work with headers and footers.
class HeaderFooterTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  HeaderFooterTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/HeaderFooters';
    localFile = 'DocumentElements/HeaderFooters/HeadersFooters.doc';
  }

  /// Test for getting headers and footers.
  Future<void> testGetHeaderFooters() async
  {
    final remoteFileName = 'TestGetHeadersFooters.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetHeaderFootersRequest(
      remoteFileName,
      '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getHeaderFooters(request);
    expect(result.headerFooters, isNotNull);
    expect(result.headerFooters?.list, isNotNull);
    expect(result.headerFooters?.list?.length, 6);
  }

  /// Test for getting headers and footers online.
  Future<void> testGetHeaderFootersOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetHeaderFootersOnlineRequest(
      requestDocument,
      ''
    );

    await context.getApi().getHeaderFootersOnline(request);
  }

  /// Test for getting headerfooter.
  Future<void> testGetHeaderFooter() async
  {
    final remoteFileName = 'TestGetHeaderFooter.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetHeaderFooterRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getHeaderFooter(request);
    expect(result.headerFooter, isNotNull);
    expect(result.headerFooter?.childNodes, isNotNull);
    expect(result.headerFooter?.childNodes?.length, 1);
    expect(result.headerFooter?.childNodes?[0]?.nodeId, '0.0.0');
  }

  /// Test for getting headerfooter online.
  Future<void> testGetHeaderFooterOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetHeaderFooterOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().getHeaderFooterOnline(request);
  }

  /// Test for getting headerfooter of section.
  Future<void> testGetHeaderFooterOfSection() async
  {
    final remoteFileName = 'TestGetHeaderFooterOfSection.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetHeaderFooterOfSectionRequest(
      remoteFileName,
      0,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getHeaderFooterOfSection(request);
    expect(result.headerFooter, isNotNull);
    expect(result.headerFooter?.childNodes, isNotNull);
    expect(result.headerFooter?.childNodes?.length, 1);
    expect(result.headerFooter?.childNodes?[0]?.nodeId, '0.0.0');
  }

  /// Test for getting headerfooter of section online.
  Future<void> testGetHeaderFooterOfSectionOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetHeaderFooterOfSectionOnlineRequest(
      requestDocument,
      0,
      0
    );

    await context.getApi().getHeaderFooterOfSectionOnline(request);
  }

  /// Test for deleting headerfooter.
  Future<void> testDeleteHeaderFooter() async
  {
    final remoteFileName = 'TestDeleteHeaderFooter.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteHeaderFooterRequest(
      remoteFileName,
      '',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteHeaderFooter(request);
  }

  /// Test for deleting headerfooter online.
  Future<void> testDeleteHeaderFooterOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteHeaderFooterOnlineRequest(
      requestDocument,
      '',
      0
    );

    await context.getApi().deleteHeaderFooterOnline(request);
  }

  /// Test for deleting headerfooters.
  Future<void> testDeleteHeadersFooters() async
  {
    final remoteFileName = 'TestDeleteHeadersFooters.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteHeadersFootersRequest(
      remoteFileName,
      '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteHeadersFooters(request);
  }

  /// Test for deleting headerfooters online.
  Future<void> testDeleteHeadersFootersOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteHeadersFootersOnlineRequest(
      requestDocument,
      ''
    );

    await context.getApi().deleteHeadersFootersOnline(request);
  }

  /// Test for adding headerfooters.
  Future<void> testInsertHeaderFooter() async
  {
    final remoteFileName = 'TestInsertHeaderFooter.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = InsertHeaderFooterRequest(
      remoteFileName,
      '',
      'FooterEven',
      folder: remoteDataFolder
    );

    await context.getApi().insertHeaderFooter(request);
  }

  /// Test for adding headerfooters online.
  Future<void> testInsertHeaderFooterOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = InsertHeaderFooterOnlineRequest(
      requestDocument,
      '',
      'FooterEven'
    );

    final result = await context.getApi().insertHeaderFooterOnline(request);
    expect(result.model?.headerFooter, isNotNull);
    expect(result.model?.headerFooter?.childNodes, isNotNull);
    expect(result.model?.headerFooter?.childNodes?.length, 1);
    expect(result.model?.headerFooter?.childNodes?[0]?.nodeId, '0.2.0');
  }
}
