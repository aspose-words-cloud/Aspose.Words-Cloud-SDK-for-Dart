/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="field_tests.dart">
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

/// Example of how to work with field.
class FieldTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String textFolder;
  late String fieldFolder;

  FieldTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Fields';
    textFolder = 'DocumentElements/Text';
    fieldFolder = 'DocumentElements/Fields';
  }

  /// Test for getting fields.
  Future<void> testGetFields() async
  {
    final localFileName = 'GetField.docx';
    final remoteFileName = 'TestGetFields.docx';
    await context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = GetFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFields(request);
    expect(result.fields, isNotNull);
    expect(result.fields?.list, isNotNull);
    expect(result.fields?.list?.length, 1);
    expect(result.fields?.list?[0]?.result, '1');
  }

  /// Test for getting fields online.
  Future<void> testGetFieldsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(fieldFolder + '/GetField.docx');

    final request = GetFieldsOnlineRequest(
      requestDocument,
      nodePath: 'sections/0'
    );

    await context.getApi().getFieldsOnline(request);
  }

  /// Test for getting fields without node path.
  Future<void> testGetFieldsWithoutNodePath() async
  {
    final localFileName = 'GetField.docx';
    final remoteFileName = 'TestGetFieldsWithoutNodePath.docx';
    await context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = GetFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getFields(request);
    expect(result.fields, isNotNull);
    expect(result.fields?.list, isNotNull);
    expect(result.fields?.list?.length, 1);
    expect(result.fields?.list?[0]?.result, '1');
  }

  /// Test for getting field by index.
  Future<void> testGetField() async
  {
    final localFileName = 'GetField.docx';
    final remoteFileName = 'TestGetField.docx';
    await context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = GetFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getField(request);
    expect(result.field, isNotNull);
    expect(result.field?.result, '1');
  }

  /// Test for getting field by index online.
  Future<void> testGetFieldOnline() async
  {
    final requestDocument = await context.loadBinaryFile(fieldFolder + '/GetField.docx');

    final request = GetFieldOnlineRequest(
      requestDocument,
      0,
      nodePath: 'sections/0/paragraphs/0'
    );

    await context.getApi().getFieldOnline(request);
  }

  /// Test for getting field by index without node path.
  Future<void> testGetFieldWithoutNodePath() async
  {
    final localFileName = 'GetField.docx';
    final remoteFileName = 'TestGetFieldWithoutNodePath.docx';
    await context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = GetFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getField(request);
    expect(result.field, isNotNull);
    expect(result.field?.result, '1');
  }

  /// Test for putting field.
  Future<void> testInsertField() async
  {
    final localFileName = 'SampleWordDocument.docx';
    final remoteFileName = 'TestInsertField.docx';
    await context.uploadFile(textFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    final requestField = FieldInsert();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = InsertFieldRequest(
      remoteFileName,
      requestField,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertField(request);
    expect(result.field, isNotNull);
    expect(result.field?.fieldCode, '{ NUMPAGES }');
    expect(result.field?.nodeId, '0.0.0.1');
  }

  /// Test for putting field online.
  Future<void> testInsertFieldOnline() async
  {
    final requestDocument = await context.loadBinaryFile(fieldFolder + '/GetField.docx');

    final requestField = FieldInsert();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = InsertFieldOnlineRequest(
      requestDocument,
      requestField,
      nodePath: 'sections/0/paragraphs/0'
    );

    await context.getApi().insertFieldOnline(request);
  }

  /// Test for putting field without node path.
  Future<void> testInsertFieldWithoutNodePath() async
  {
    final localFileName = 'SampleWordDocument.docx';
    final remoteFileName = 'TestInsertFieldWithoutNodePath.docx';
    await context.uploadFile(textFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    final requestField = FieldInsert();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = InsertFieldRequest(
      remoteFileName,
      requestField,
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertField(request);
    expect(result.field, isNotNull);
    expect(result.field?.fieldCode, '{ NUMPAGES }');
    expect(result.field?.nodeId, '5.0.22.0');
  }

  /// Test for posting field.
  Future<void> testUpdateField() async
  {
    final localFileName = 'GetField.docx';
    final remoteFileName = 'TestUpdateField.docx';
    await context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    final requestField = FieldUpdate();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = UpdateFieldRequest(
      remoteFileName,
      0,
      requestField,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateField(request);
    expect(result.field, isNotNull);
    expect(result.field?.fieldCode, '{ NUMPAGES }');
    expect(result.field?.nodeId, '0.0.0.0');
  }

  /// Test for posting field online.
  Future<void> testUpdateFieldOnline() async
  {
    final requestDocument = await context.loadBinaryFile(fieldFolder + '/GetField.docx');

    final requestField = FieldUpdate();
    requestField.fieldCode = '{ NUMPAGES }';

    final request = UpdateFieldOnlineRequest(
      requestDocument,
      requestField,
      0,
      nodePath: 'sections/0/paragraphs/0'
    );

    await context.getApi().updateFieldOnline(request);
  }

  /// Test for inserting page numbers field.
  Future<void> testInsertPageNumbers() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestInsertPageNumbers.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);
    final requestPageNumber = PageNumber();
    requestPageNumber.alignment = 'center';
    requestPageNumber.format = '{PAGE} of {NUMPAGES}';
    requestPageNumber.isTop = true;
    requestPageNumber.setPageNumberOnFirstPage = true;

    final request = InsertPageNumbersRequest(
      remoteFileName,
      requestPageNumber,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().insertPageNumbers(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestInsertPageNumbers.docx');
  }

  /// Test for inserting page numbers field online.
  Future<void> testInsertPageNumbersOnline() async
  {
    final localFileName = 'test_multi_pages.docx';
    final requestDocument = await context.loadBinaryFile('Common/' + localFileName);

    final requestPageNumber = PageNumber();
    requestPageNumber.alignment = 'center';
    requestPageNumber.format = '{PAGE} of {NUMPAGES}';
    requestPageNumber.isTop = true;
    requestPageNumber.setPageNumberOnFirstPage = true;

    final request = InsertPageNumbersOnlineRequest(
      requestDocument,
      requestPageNumber
    );

    await context.getApi().insertPageNumbersOnline(request);
  }

  /// Test for deleting field.
  Future<void> testDeleteField() async
  {
    final localFileName = 'GetField.docx';
    final remoteFileName = 'TestDeleteField.docx';
    await context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldRequest(
      remoteFileName,
      0,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().deleteField(request);
  }

  /// Test for deleting field online.
  Future<void> testDeleteFieldOnline() async
  {
    final requestDocument = await context.loadBinaryFile(fieldFolder + '/GetField.docx');

    final request = DeleteFieldOnlineRequest(
      requestDocument,
      0,
      nodePath: 'sections/0/paragraphs/0'
    );

    await context.getApi().deleteFieldOnline(request);
  }

  /// Test for deleting field without node path.
  Future<void> testDeleteFieldWithoutNodePath() async
  {
    final localFileName = 'GetField.docx';
    final remoteFileName = 'TestDeleteFieldWithoutNodePath.docx';
    await context.uploadFile(fieldFolder + '/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteField(request);
  }

  /// Test for deleting paragraph fields.
  Future<void> testDeleteParagraphFields() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestDeleteParagraphFields.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldsRequest(
      remoteFileName,
      nodePath: 'paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().deleteFields(request);
  }

  /// Test for deleting paragraph fields without node path.
  Future<void> testDeleteParagraphFieldsWithoutNodePath() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestDeleteParagraphFieldsWithoutNodePath.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().deleteFields(request);
  }

  /// Test for deleting section fields.
  Future<void> testDeleteSectionFields() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestDeleteSectionFields.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0',
      folder: remoteDataFolder
    );

    await context.getApi().deleteFields(request);
  }

  /// Test for deleting section fields without node path.
  Future<void> testDeleteSectionFieldsWithoutNodePath() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestDeleteSectionFieldsWithoutNodePath.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().deleteFields(request);
  }

  /// Test for deleting paragraph fields in section.
  Future<void> testDeleteSectionParagraphFields() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestDeleteSectionParagraphFields.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldsRequest(
      remoteFileName,
      nodePath: 'sections/0/paragraphs/0',
      folder: remoteDataFolder
    );

    await context.getApi().deleteFields(request);
  }

  /// Test for deleting fields.
  Future<void> testDeleteDocumentFields() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestDeleteSectionParagraphFields.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFieldsRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteFields(request);
  }

  /// Test for deleting fields online.
  Future<void> testDeleteDocumentFieldsOnline() async
  {
    final localFileName = 'Common/test_multi_pages.docx';
    final requestDocument = await context.loadBinaryFile(localFileName);

    final request = DeleteFieldsOnlineRequest(
      requestDocument,
      nodePath: ''
    );

    await context.getApi().deleteFieldsOnline(request);
  }

  /// Test for posting updated fields.
  Future<void> testUpdateDocumentFields() async
  {
    final localFileName = 'test_multi_pages.docx';
    final remoteFileName = 'TestUpdateDocumentFields.docx';
    await context.uploadFile('Common/' + localFileName, remoteDataFolder + '/' + remoteFileName);

    final request = UpdateFieldsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateFields(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestUpdateDocumentFields.docx');
  }

  /// Test for posting updated fields online.
  Future<void> testUpdateDocumentFieldsOnline() async
  {
    final localFile = 'Common/test_multi_pages.docx';
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = UpdateFieldsOnlineRequest(
      requestDocument
    );

    await context.getApi().updateFieldsOnline(request);
  }
}
