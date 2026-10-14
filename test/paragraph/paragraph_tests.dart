/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="paragraph_tests.dart">
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

/// Example of how to work with paragraph.
class ParagraphTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;
  late String listFolder;
  late String tabStopFolder;

  ParagraphTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Paragraphs';
    localFile = 'Common/test_multi_pages.docx';
    listFolder = 'DocumentElements/ParagraphListFormat';
    tabStopFolder = 'DocumentElements/Paragraphs';
  }

  /// Test for getting paragraph.
  Future<void> testGetDocumentParagraphByIndex() async
  {
    final remoteFileName = 'TestGetDocumentParagraphByIndex.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraph(request);
    expect(result.paragraph, isNotNull);
    expect(result.paragraph?.nodeId, '0.0.0');
  }

  /// Test for getting paragraph online.
  Future<void> testGetDocumentParagraphOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetParagraphOnlineRequest(
      requestDocument,
      0,
      nodePath: 'sections/0'
    );

    await context.getApi().getParagraphOnline(request);
  }

  /// Test for getting paragraph without node path.
  Future<void> testGetDocumentParagraphByIndexWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentParagraphByIndexWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraph(request);
    expect(result.paragraph, isNotNull);
    expect(result.paragraph?.nodeId, '0.0.0');
  }

  /// Test for getting all paragraphs.
  Future<void> testGetDocumentParagraphs() async
  {
    final remoteFileName = 'TestGetDocumentParagraphs.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphs(request);
    expect(result.paragraphs, isNotNull);
    expect(result.paragraphs?.paragraphLinkList, isNotNull);
    expect(result.paragraphs?.paragraphLinkList?.length, 15);
    expect(result.paragraphs?.paragraphLinkList?[0]?.text, 'Page 1 of 3');
  }

  /// Test for getting all paragraphs online.
  Future<void> testGetDocumentParagraphsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetParagraphsOnlineRequest(
      requestDocument,
      nodePath: 'sections/0'
    );

    await context.getApi().getParagraphsOnline(request);
  }

  /// Test for getting all paragraphs without node path.
  Future<void> testGetDocumentParagraphsWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphs(request);
    expect(result.paragraphs, isNotNull);
    expect(result.paragraphs?.paragraphLinkList, isNotNull);
    expect(result.paragraphs?.paragraphLinkList?.length, 15);
    expect(result.paragraphs?.paragraphLinkList?[0]?.text, 'Page 1 of 3');
  }

  /// Test for getting paragraph run.
  Future<void> testGetDocumentParagraphRun() async
  {
    final remoteFileName = 'TestGetDocumentParagraphRun.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetRunRequest(
      remoteFileName,
      'paragraphs/0',
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getRun(request);
    expect(result.run, isNotNull);
    expect(result.run?.text, 'Page ');
  }

  /// Test for getting paragraph run online.
  Future<void> testGetDocumentParagraphRunOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetRunOnlineRequest(
      requestDocument,
      'paragraphs/0',
      0
    );

    await context.getApi().getRunOnline(request);
  }

  /// Test for getting paragraph run font.
  Future<void> testGetDocumentParagraphRunFont() async
  {
    final remoteFileName = 'TestGetDocumentParagraphRunFont.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetRunFontRequest(
      remoteFileName,
      'paragraphs/0',
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getRunFont(request);
    expect(result.font, isNotNull);
    expect(result.font?.name, 'Times New Roman');
  }

  /// Test for getting paragraph run font online.
  Future<void> testGetDocumentParagraphRunFontOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetRunFontOnlineRequest(
      requestDocument,
      'paragraphs/0',
      0
    );

    await context.getApi().getRunFontOnline(request);
  }

  /// Test for getting paragraph runs.
  Future<void> testGetParagraphRuns() async
  {
    final remoteFileName = 'TestGetParagraphRuns.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetRunsRequest(
      remoteFileName,
      'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getRuns(request);
    expect(result.runs, isNotNull);
    expect(result.runs?.list, isNotNull);
    expect(result.runs?.list?.length, 6);
    expect(result.runs?.list?[0]?.text, 'Page ');
  }

  /// Test for getting paragraph runs online.
  Future<void> testGetParagraphRunsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetRunsOnlineRequest(
      requestDocument,
      'sections/0/paragraphs/0'
    );

    await context.getApi().getRunsOnline(request);
  }

  /// Test for updating paragraph run font.
  Future<void> testUpdateRunFont() async
  {
    final remoteFileName = 'TestUpdateRunFont.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestFontDto = Font();
    requestFontDto.bold = true;

    final request = UpdateRunFontRequest(
      remoteFileName,
      'paragraphs/0',
      0,
      requestFontDto,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().updateRunFont(request);
    expect(result.font, isNotNull);
    expect(result.font?.bold, isTrue);
  }

  /// Test for updating paragraph run font online.
  Future<void> testUpdateRunFontOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestFontDto = Font();
    requestFontDto.bold = true;

    final request = UpdateRunFontOnlineRequest(
      requestDocument,
      'paragraphs/0',
      requestFontDto,
      0
    );

    await context.getApi().updateRunFontOnline(request);
  }

  /// Test for adding paragraph.
  Future<void> testInsertParagraph() async
  {
    final remoteFileName = 'TestInsertParagraph.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestParagraph = ParagraphInsert();
    requestParagraph.text = 'This is a new paragraph for your document';

    final request = InsertParagraphRequest(
      remoteFileName,
      requestParagraph,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertParagraph(request);
    expect(result.paragraph, isNotNull);
    expect(result.paragraph?.nodeId, '0.3.8');
  }

  /// Test for adding paragraph online.
  Future<void> testInsertParagraphOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestParagraph = ParagraphInsert();
    requestParagraph.text = 'This is a new paragraph for your document';

    final request = InsertParagraphOnlineRequest(
      requestDocument,
      requestParagraph,
      nodePath: 'sections/0'
    );

    await context.getApi().insertParagraphOnline(request);
  }

  /// Test for adding paragraph without node path.
  Future<void> testInsertParagraphWithoutNodePath() async
  {
    final remoteFileName = 'TestInsertParagraphWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestParagraph = ParagraphInsert();
    requestParagraph.text = 'This is a new paragraph for your document';

    final request = InsertParagraphRequest(
      remoteFileName,
      requestParagraph,
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertParagraph(request);
    expect(result.paragraph, isNotNull);
    expect(result.paragraph?.nodeId, '0.3.8');
  }

  /// Test for paragraph rendering.
  Future<void> testRenderParagraph() async
  {
    final remoteFileName = 'TestRenderParagraph.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderParagraphRequest(
      remoteFileName,
      'png',
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().renderParagraph(request);
  }

  /// Test for paragraph rendering.
  Future<void> testRenderParagraphOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = RenderParagraphOnlineRequest(
      requestDocument,
      'png',
      0,
      nodePath: ''
    );

    await context.getApi().renderParagraphOnline(request);
  }

  /// Test for paragraph rendering without node path.
  Future<void> testRenderParagraphWithoutNodePath() async
  {
    final remoteFileName = 'TestRenderParagraphWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderParagraphRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().renderParagraph(request);
  }

  /// Test for getting paragraph format settings.
  Future<void> testGetParagraphFormat() async
  {
    final remoteFileName = 'TestGetDocumentParagraphs.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphFormat(request);
    expect(result.paragraphFormat, isNotNull);
    expect(result.paragraphFormat?.styleName, 'Normal');
  }

  /// Test for getting paragraph format settings online.
  Future<void> testGetParagraphFormatOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetParagraphFormatOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().getParagraphFormatOnline(request);
  }

  /// Test for getting paragraph format settings without node path.
  Future<void> testGetParagraphFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestGetDocumentParagraphsWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphFormat(request);
    expect(result.paragraphFormat, isNotNull);
    expect(result.paragraphFormat?.styleName, 'Normal');
  }

  /// Test for updating  paragraph format settings.
  Future<void> testUpdateParagraphFormat() async
  {
    final remoteFileName = 'TestGetDocumentParagraphs.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestParagraphFormatDto = ParagraphFormatUpdate();
    requestParagraphFormatDto.alignment = ParagraphFormatBase_AlignmentEnum.right;

    final request = UpdateParagraphFormatRequest(
      remoteFileName,
      0,
      requestParagraphFormatDto,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateParagraphFormat(request);
    expect(result.paragraphFormat, isNotNull);

  }

  /// Test for updating  paragraph format settings online.
  Future<void> testUpdateParagraphFormatOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestParagraphFormatDto = ParagraphFormatUpdate();
    requestParagraphFormatDto.alignment = ParagraphFormatBase_AlignmentEnum.right;

    final request = UpdateParagraphFormatOnlineRequest(
      requestDocument,
      requestParagraphFormatDto,
      0,
      nodePath: ''
    );

    await context.getApi().updateParagraphFormatOnline(request);
  }

  /// Test for deleting  a paragraph.
  Future<void> testDeleteParagraph() async
  {
    final remoteFileName = 'TestDeleteParagraph.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraph(request);
  }

  /// Test for deleting  a paragraph online.
  Future<void> testDeleteParagraphOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteParagraphOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().deleteParagraphOnline(request);
  }

  /// Test for deleting  a paragraph without node path.
  Future<void> testDeleteParagraphWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteParagraphWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraph(request);
  }

  /// Test for getting paragraph list format.
  Future<void> testGetParagraphListFormat() async
  {
    final remoteFileName = 'TestParagraphGetListFormat.docx';
    await context.uploadFile(listFolder + '/ParagraphGetListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphListFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphListFormat(request);
    expect(result.listFormat, isNotNull);
    expect(result.listFormat?.listId, 1);
  }

  /// Test for getting paragraph list format online.
  Future<void> testGetParagraphListFormatOnline() async
  {
    final requestDocument = await context.loadBinaryFile(listFolder + '/ParagraphGetListFormat.doc');

    final request = GetParagraphListFormatOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().getParagraphListFormatOnline(request);
  }

  /// Test for getting paragraph list format without node path.
  Future<void> testGetParagraphListFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestParagraphGetListFormatWithoutNodePath.docx';
    await context.uploadFile(listFolder + '/ParagraphGetListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphListFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphListFormat(request);
    expect(result.listFormat, isNotNull);
    expect(result.listFormat?.listId, 1);
  }

  /// Test for updating paragraph list format.
  Future<void> testUpdateParagraphListFormat() async
  {
    final remoteFileName = 'TestUpdateParagraphListFormat.docx';
    await context.uploadFile(listFolder + '/ParagraphUpdateListFormat.doc', remoteDataFolder + '/' + remoteFileName);
    final requestListFormatDto = ListFormatUpdate();
    requestListFormatDto.listId = 2;

    final request = UpdateParagraphListFormatRequest(
      remoteFileName,
      0,
      requestListFormatDto,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateParagraphListFormat(request);
    expect(result.listFormat, isNotNull);
    expect(result.listFormat?.listId, 2);
  }

  /// Test for updating paragraph list format online.
  Future<void> testUpdateParagraphListFormatOnline() async
  {
    final requestDocument = await context.loadBinaryFile(listFolder + '/ParagraphUpdateListFormat.doc');

    final requestListFormatDto = ListFormatUpdate();
    requestListFormatDto.listId = 2;

    final request = UpdateParagraphListFormatOnlineRequest(
      requestDocument,
      requestListFormatDto,
      0,
      nodePath: ''
    );

    await context.getApi().updateParagraphListFormatOnline(request);
  }

  /// Test for updating paragraph list format without node path.
  Future<void> testUpdateParagraphListFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestUpdateParagraphListFormatWithoutNodePath.docx';
    await context.uploadFile(listFolder + '/ParagraphUpdateListFormat.doc', remoteDataFolder + '/' + remoteFileName);
    final requestListFormatDto = ListFormatUpdate();
    requestListFormatDto.listId = 2;

    final request = UpdateParagraphListFormatRequest(
      remoteFileName,
      0,
      requestListFormatDto,
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateParagraphListFormat(request);
    expect(result.listFormat, isNotNull);
    expect(result.listFormat?.listId, 2);
  }

  /// Test for deleting paragraph list format.
  Future<void> testDeleteParagraphListFormat() async
  {
    final remoteFileName = 'TestDeleteParagraphListFormat.docx';
    await context.uploadFile(listFolder + '/ParagraphDeleteListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphListFormatRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraphListFormat(request);
  }

  /// Test for deleting paragraph list format online.
  Future<void> testDeleteParagraphListFormatOnline() async
  {
    final requestDocument = await context.loadBinaryFile(listFolder + '/ParagraphDeleteListFormat.doc');

    final request = DeleteParagraphListFormatOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().deleteParagraphListFormatOnline(request);
  }

  /// Test for deleting paragraph list format without node path.
  Future<void> testDeleteParagraphListFormatWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteParagraphListFormatWithoutNodePath.docx';
    await context.uploadFile(listFolder + '/ParagraphDeleteListFormat.doc', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphListFormatRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteParagraphListFormat(request);
  }

  /// Test for getting paragraph tab stops.
  Future<void> testGetParagraphTabStops() async
  {
    final remoteFileName = 'TestGetParagraphTabStops.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphTabStopsRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphTabStops(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 2);
    expect(result.tabStops?[0]?.position, 72.0);
  }

  /// Test for getting paragraph tab stops online.
  Future<void> testGetParagraphTabStopsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(tabStopFolder + '/ParagraphTabStops.docx');

    final request = GetParagraphTabStopsOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().getParagraphTabStopsOnline(request);
  }

  /// Test for getting paragraph tab stops without node path.
  Future<void> testGetParagraphTabStopsWithoutNodePath() async
  {
    final remoteFileName = 'TestGetParagraphTabStopsWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = GetParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getParagraphTabStops(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 2);
    expect(result.tabStops?[0]?.position, 72.0);
  }

  /// Test for inserting paragraph tab stop.
  Future<void> testInsertParagraphTabStops() async
  {
    final remoteFileName = 'TestInsertOrUpdateParagraphTabStop.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    final requestTabStopInsertDto = TabStopInsert();
    requestTabStopInsertDto.alignment = TabStopBase_AlignmentEnum.left;
    requestTabStopInsertDto.leader = TabStopBase_LeaderEnum.none;
    requestTabStopInsertDto.position = 100.0;

    final request = InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      0,
      requestTabStopInsertDto,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertOrUpdateParagraphTabStop(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 3);
    expect(result.tabStops?[1]?.position, 100.0);


  }

  /// Test for inserting paragraph tab stop online.
  Future<void> testInsertParagraphTabStopsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(tabStopFolder + '/ParagraphTabStops.docx');

    final requestTabStopInsertDto = TabStopInsert();
    requestTabStopInsertDto.alignment = TabStopBase_AlignmentEnum.left;
    requestTabStopInsertDto.leader = TabStopBase_LeaderEnum.none;
    requestTabStopInsertDto.position = 72;

    final request = InsertOrUpdateParagraphTabStopOnlineRequest(
      requestDocument,
      requestTabStopInsertDto,
      0,
      nodePath: ''
    );

    await context.getApi().insertOrUpdateParagraphTabStopOnline(request);
  }

  /// Test for inserting paragraph tab stop without node path.
  Future<void> testInsertParagraphTabStopsWithoutNodePath() async
  {
    final remoteFileName = 'TestInsertOrUpdateParagraphTabStopWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);
    final requestTabStopInsertDto = TabStopInsert();
    requestTabStopInsertDto.alignment = TabStopBase_AlignmentEnum.left;
    requestTabStopInsertDto.leader = TabStopBase_LeaderEnum.none;
    requestTabStopInsertDto.position = 100.0;

    final request = InsertOrUpdateParagraphTabStopRequest(
      remoteFileName,
      0,
      requestTabStopInsertDto,
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertOrUpdateParagraphTabStop(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 3);
    expect(result.tabStops?[1]?.position, 100.0);


  }

  /// Test for deleting all paragraph tab stops.
  Future<void> testDeleteAllParagraphTabStops() async
  {
    final remoteFileName = 'TestDeleteAllParagraphTabStops.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteAllParagraphTabStopsRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().deleteAllParagraphTabStops(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 0);
  }

  /// Test for deleting all paragraph tab stops online.
  Future<void> testDeleteAllParagraphTabStopsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(tabStopFolder + '/ParagraphTabStops.docx');

    final request = DeleteAllParagraphTabStopsOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().deleteAllParagraphTabStopsOnline(request);
  }

  /// Test for deleting all paragraph tab stops without node path.
  Future<void> testDeleteAllParagraphTabStopsWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteAllParagraphTabStopsWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteAllParagraphTabStopsRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().deleteAllParagraphTabStops(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 0);
  }

  /// Test for deleting a tab stops.
  Future<void> testDeleteParagraphTabStop() async
  {
    final remoteFileName = 'TestDeleteParagraphTabStop.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphTabStopRequest(
      remoteFileName,
      72.0,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().deleteParagraphTabStop(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 1);
  }

  /// Test for deleting a tab stops online.
  Future<void> testDeleteParagraphTabStopOnline() async
  {
    final requestDocument = await context.loadBinaryFile(tabStopFolder + '/ParagraphTabStops.docx');

    final request = DeleteParagraphTabStopOnlineRequest(
      requestDocument,
      72.0,
      0,
      nodePath: ''
    );

    await context.getApi().deleteParagraphTabStopOnline(request);
  }

  /// Test for deleting a tab stops without node path.
  Future<void> testDeleteParagraphTabStopWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteParagraphTabStopWithoutNodePath.docx';
    await context.uploadFile(tabStopFolder + '/ParagraphTabStops.docx', remoteDataFolder + '/' + remoteFileName);

    final request = DeleteParagraphTabStopRequest(
      remoteFileName,
      72.0,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().deleteParagraphTabStop(request);
    expect(result.tabStops, isNotNull);
    expect(result.tabStops?.length, 1);
  }
}
