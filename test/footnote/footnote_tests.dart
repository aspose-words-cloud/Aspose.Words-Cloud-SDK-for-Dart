/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="footnote_tests.dart">
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

/// Example of how to work with footnotes.
class FootnoteTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String footnoteFolder;

  FootnoteTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Footnotes';
    footnoteFolder = 'DocumentElements/Footnotes';
  }

  /// Test for adding footnote.
  Future<void> testInsertFootnote() async
  {
    final remoteFileName = 'TestInsertFootnote.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    final requestFootnoteDto = FootnoteInsert();
    requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
    requestFootnoteDto.text = 'test endnote';

    final request = InsertFootnoteRequest(
      remoteFileName,
      requestFootnoteDto,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertFootnote(request);
    expect(result.footnote, isNotNull);
    expect(result.footnote?.nodeId, '0.1.7.1');
    expect(result.footnote?.text, ' test endnote' + '\r\n');
  }

  /// Test for adding footnote online.
  Future<void> testInsertFootnoteOnline() async
  {
    final requestDocument = await context.loadBinaryFile(footnoteFolder + '/Footnote.doc');

    final requestFootnoteDto = FootnoteInsert();
    requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
    requestFootnoteDto.text = 'test endnote';

    final request = InsertFootnoteOnlineRequest(
      requestDocument,
      requestFootnoteDto,
      nodePath: ''
    );

    await context.getApi().insertFootnoteOnline(request);
  }

  /// Test for adding footnote without node path.
  Future<void> testInsertFootnoteWithoutNodePath() async
  {
    final remoteFileName = 'TestInsertFootnoteWithoutNodePath.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    final requestFootnoteDto = FootnoteInsert();
    requestFootnoteDto.footnoteType = FootnoteBase_FootnoteTypeEnum.endnote;
    requestFootnoteDto.text = 'test endnote';

    final request = InsertFootnoteRequest(
      remoteFileName,
      requestFootnoteDto,
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertFootnote(request);
    expect(result.footnote, isNotNull);
    expect(result.footnote?.nodeId, '0.1.7.1');
    expect(result.footnote?.text, ' test endnote' + '\r\n');
  }

  /// Test for deleting footnote.
  Future<void> testDeleteFootnote() async
  {
    final remoteFileName = 'TestDeleteFootnote.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFootnoteRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteFootnote(request);
  }

  /// Test for deleting footnote online.
  Future<void> testDeleteFootnoteOnline() async
  {
    final requestDocument = await context.loadBinaryFile(footnoteFolder + '/Footnote.doc');

    final request = DeleteFootnoteOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().deleteFootnoteOnline(request);
  }

  /// Test for deleting footnote without node path.
  Future<void> testDeleteFootnoteWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteFootnoteWithoutNodePath.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFootnoteRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteFootnote(request);
  }

  /// Test for getting footnotes.
  Future<void> testGetFootnotes() async
  {
    final remoteFileName = 'TestGetFootnotes.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetFootnotesRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFootnotes(request);
    expect(result.footnotes, isNotNull);
    expect(result.footnotes?.list, isNotNull);
    expect(result.footnotes?.list?.length, 6);
    expect(result.footnotes?.list?[0]?.text, ' Footnote 1.' + '\r\n');
  }

  /// Test for getting footnotes online.
  Future<void> testGetFootnotesOnline() async
  {
    final requestDocument = await context.loadBinaryFile(footnoteFolder + '/Footnote.doc');

    final request = GetFootnotesOnlineRequest(
      requestDocument,
      nodePath: ''
    );

    await context.getApi().getFootnotesOnline(request);
  }

  /// Test for getting footnotes without node path.
  Future<void> testGetFootnotesWithoutNodePath() async
  {
    final remoteFileName = 'TestGetFootnotesWithoutNodePath.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetFootnotesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFootnotes(request);
    expect(result.footnotes, isNotNull);
    expect(result.footnotes?.list, isNotNull);
    expect(result.footnotes?.list?.length, 6);
    expect(result.footnotes?.list?[0]?.text, ' Footnote 1.' + '\r\n');
  }

  /// Test for getting footnote.
  Future<void> testGetFootnote() async
  {
    final remoteFileName = 'TestGetFootnote.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetFootnoteRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFootnote(request);
    expect(result.footnote, isNotNull);
    expect(result.footnote?.text, ' Footnote 1.' + '\r\n');
  }

  /// Test for getting footnote online.
  Future<void> testGetFootnoteOnline() async
  {
    final requestDocument = await context.loadBinaryFile(footnoteFolder + '/Footnote.doc');

    final request = GetFootnoteOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().getFootnoteOnline(request);
  }

  /// Test for getting footnote without node path.
  Future<void> testGetFootnoteWithoutNodePath() async
  {
    final remoteFileName = 'TestGetFootnoteWithoutNodePath.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetFootnoteRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFootnote(request);
    expect(result.footnote, isNotNull);
    expect(result.footnote?.text, ' Footnote 1.' + '\r\n');
  }

  /// Test for updating footnote.
  Future<void> testUpdateFootnote() async
  {
    final remoteFileName = 'TestUpdateFootnote.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    final requestFootnoteDto = FootnoteUpdate();
    requestFootnoteDto.text = 'new text is here';

    final request = UpdateFootnoteRequest(
      remoteFileName,
      0,
      requestFootnoteDto,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateFootnote(request);
    expect(result.footnote, isNotNull);
    expect(result.footnote?.text, ' new text is here' + '\r\n');
  }

  /// Test for updating footnote online.
  Future<void> testUpdateFootnoteOnline() async
  {
    final requestDocument = await context.loadBinaryFile(footnoteFolder + '/Footnote.doc');

    final requestFootnoteDto = FootnoteUpdate();
    requestFootnoteDto.text = 'new text is here';

    final request = UpdateFootnoteOnlineRequest(
      requestDocument,
      requestFootnoteDto,
      0,
      nodePath: ''
    );

    await context.getApi().updateFootnoteOnline(request);
  }

  /// Test for updating footnote without node path.
  Future<void> testUpdateFootnoteWithoutNodePath() async
  {
    final remoteFileName = 'TestUpdateFootnoteWithoutNodePath.docx';
    await context.uploadFile(footnoteFolder + '/Footnote.doc', remoteDataFolder + '/' + remoteFileName);
    final requestFootnoteDto = FootnoteUpdate();
    requestFootnoteDto.text = 'new text is here';

    final request = UpdateFootnoteRequest(
      remoteFileName,
      0,
      requestFootnoteDto,
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateFootnote(request);
    expect(result.footnote, isNotNull);
    expect(result.footnote?.text, ' new text is here' + '\r\n');
  }
}
