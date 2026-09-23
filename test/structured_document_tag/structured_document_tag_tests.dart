/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="structured_document_tag_tests.dart">
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

import '../test_context.dart';

/// Example of how to use structured document tags.
class StructuredDocumentTagTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  StructuredDocumentTagTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/StructuredDocumentTag';
    localFile = 'DocumentElements/StructuredDocumentTag/StructuredDocumentTag.docx';
  }

  /// Test for getting SDT objects from document.
  Future<void> testGetStructuredDocumentTags() async
  {
    final remoteFileName = 'TestGetStructuredDocumentTags.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStructuredDocumentTagsRequest(
      remoteFileName,
      nodePath: 'sections/0/body/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().getStructuredDocumentTags(request);
  }

  /// Test for getting SDT objects from document online.
  Future<void> testGetStructuredDocumentTagsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetStructuredDocumentTagsOnlineRequest(
      requestDocument,
      nodePath: 'sections/0/body/paragraphs/0'
    );

    await context.getApi().getStructuredDocumentTagsOnline(request);
  }

  /// Test for getting SDT object from document.
  Future<void> testGetStructuredDocumentTag() async
  {
    final remoteFileName = 'TestGetStructuredDocumentTag.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStructuredDocumentTagRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0/body/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().getStructuredDocumentTag(request);
  }

  /// Test for getting SDT object from document online.
  Future<void> testGetStructuredDocumentTagOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetStructuredDocumentTagOnlineRequest(
      requestDocument,
      0,
      nodePath: 'sections/0/body/paragraphs/0'
    );

    await context.getApi().getStructuredDocumentTagOnline(request);
  }

  /// Test for adding SDT object.
  Future<void> testInsertStructuredDocumentTag() async
  {
    final remoteFileName = 'TestInsetStructuredDocumentTag.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestStructuredDocumentTag = StructuredDocumentTagInsert();
    requestStructuredDocumentTag.sdtType = StructuredDocumentTagInsert_SdtTypeEnum.comboBox;
    requestStructuredDocumentTag.level = StructuredDocumentTagInsert_LevelEnum.inline;

    final request = InsertStructuredDocumentTagRequest(
      remoteFileName,
      requestStructuredDocumentTag,
      nodePath: 'sections/0/body/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().insertStructuredDocumentTag(request);
  }

  /// Test for adding SDT object online.
  Future<void> testInsertStructuredDocumentTagOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestStructuredDocumentTag = StructuredDocumentTagInsert();
    requestStructuredDocumentTag.sdtType = StructuredDocumentTagInsert_SdtTypeEnum.comboBox;
    requestStructuredDocumentTag.level = StructuredDocumentTagInsert_LevelEnum.inline;

    final request = InsertStructuredDocumentTagOnlineRequest(
      requestDocument,
      requestStructuredDocumentTag,
      nodePath: 'sections/0/body/paragraphs/0'
    );

    await context.getApi().insertStructuredDocumentTagOnline(request);
  }

  /// Test for deleting SDT object.
  Future<void> testDeleteStructuredDocumentTag() async
  {
    final remoteFileName = 'TestDeleteStructuredDocumentTag.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteStructuredDocumentTagRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0/body/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().deleteStructuredDocumentTag(request);
  }

  /// Test for deleting SDT object online.
  Future<void> testDeleteStructuredDocumentTagOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteStructuredDocumentTagOnlineRequest(
      requestDocument,
      0,
      nodePath: 'sections/0/body/paragraphs/0'
    );

    await context.getApi().deleteStructuredDocumentTagOnline(request);
  }

  /// Test for updating SDT object.
  Future<void> testUpdateStructuredDocumentTag() async
  {
    final remoteFileName = 'TestUpdateStructuredDocumentTag.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestStructuredDocumentTagListItems0 = StructuredDocumentTagListItem();
    requestStructuredDocumentTagListItems0.displayText = 'Aspose Words';
    requestStructuredDocumentTagListItems0.value = '1';

    final requestStructuredDocumentTagListItems1 = StructuredDocumentTagListItem();
    requestStructuredDocumentTagListItems1.displayText = 'Hello world';
    requestStructuredDocumentTagListItems1.value = '2';

    final requestStructuredDocumentTagListItems = [
      requestStructuredDocumentTagListItems0,
    requestStructuredDocumentTagListItems1];

    final requestStructuredDocumentTag = StructuredDocumentTagUpdate();
    requestStructuredDocumentTag.listItems = requestStructuredDocumentTagListItems;

    final request = UpdateStructuredDocumentTagRequest(
      remoteFileName,
      0,
      requestStructuredDocumentTag,
      nodePath: 'sections/0/body/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().updateStructuredDocumentTag(request);
  }

  /// Test for updating SDT object online.
  Future<void> testUpdateStructuredDocumentTagOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestStructuredDocumentTagListItems0 = StructuredDocumentTagListItem();
    requestStructuredDocumentTagListItems0.displayText = 'Aspose Words';
    requestStructuredDocumentTagListItems0.value = '1';

    final requestStructuredDocumentTagListItems1 = StructuredDocumentTagListItem();
    requestStructuredDocumentTagListItems1.displayText = 'Hello world';
    requestStructuredDocumentTagListItems1.value = '2';

    final requestStructuredDocumentTagListItems = [
      requestStructuredDocumentTagListItems0,
    requestStructuredDocumentTagListItems1];

    final requestStructuredDocumentTag = StructuredDocumentTagUpdate();
    requestStructuredDocumentTag.listItems = requestStructuredDocumentTagListItems;

    final request = UpdateStructuredDocumentTagOnlineRequest(
      requestDocument,
      requestStructuredDocumentTag,
      0,
      nodePath: 'sections/0/body/paragraphs/0'
    );

    await context.getApi().updateStructuredDocumentTagOnline(request);
  }
}
