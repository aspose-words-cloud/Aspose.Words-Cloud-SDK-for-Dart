/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="custom_xml_parts_tests.dart">
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

/// Example of how to use custom xml parts in documents.
class CustomXmlPartsTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  CustomXmlPartsTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/CustomXmlParts';
    localFile = 'DocumentElements/CustomXmlParts/MultipleCustomXmlParts.docx';
  }

  /// Test for getting custom xml part by specified index.
  Future<void> testGetCustomXmlPart() async
  {
    final remoteFileName = 'TestGetCustomXmlPart.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetCustomXmlPartRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getCustomXmlPart(request);
    expect(result.customXmlPart, isNotNull);
    expect(result.customXmlPart?.id, 'aspose');
    expect(result.customXmlPart?.data, '<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>');
  }

  /// Test for getting custom xml part by specified index online.
  Future<void> testGetCustomXmlPartOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetCustomXmlPartOnlineRequest(
      requestDocument,
      0
    );

    final result = await context.getApi().getCustomXmlPartOnline(request);
    expect(result.customXmlPart, isNotNull);
    expect(result.customXmlPart?.id, 'aspose');
    expect(result.customXmlPart?.data, '<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>');
  }

  /// Test for getting all custom xml parts from document.
  Future<void> testGetCustomXmlParts() async
  {
    final remoteFileName = 'TestGetCustomXmlParts.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetCustomXmlPartsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getCustomXmlParts(request);
    expect(result.customXmlParts, isNotNull);
    expect(result.customXmlParts?.customXmlPartsList, isNotNull);
    expect(result.customXmlParts?.customXmlPartsList?.length, 2);
    expect(result.customXmlParts?.customXmlPartsList?[0]?.id, 'aspose');
    expect(result.customXmlParts?.customXmlPartsList?[0]?.data, '<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>');
  }

  /// Test for getting all custom xml parts from document online.
  Future<void> testGetCustomXmlPartsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetCustomXmlPartsOnlineRequest(
      requestDocument
    );

    final result = await context.getApi().getCustomXmlPartsOnline(request);
    expect(result.customXmlParts, isNotNull);
    expect(result.customXmlParts?.customXmlPartsList, isNotNull);
    expect(result.customXmlParts?.customXmlPartsList?.length, 2);
    expect(result.customXmlParts?.customXmlPartsList?[0]?.id, 'aspose');
    expect(result.customXmlParts?.customXmlPartsList?[0]?.data, '<Metadata><Author>author1</Author><Initial>initial</Initial><DateTime>2015-01-22T00:00:00</DateTime><Text>text</Text></Metadata>');
  }

  /// Test for adding custom xml part.
  Future<void> testInsertCustomXmlPart() async
  {
    final remoteFileName = 'TestInsertCustomXmlPart.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestCustomXmlPart = CustomXmlPartInsert();
    requestCustomXmlPart.id = 'hello';
    requestCustomXmlPart.data = '<data>Hello world</data>';

    final request = InsertCustomXmlPartRequest(
      remoteFileName,
      requestCustomXmlPart,
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertCustomXmlPart(request);
    expect(result.customXmlPart, isNotNull);
    expect(result.customXmlPart?.id, 'hello');
    expect(result.customXmlPart?.data, '<data>Hello world</data>');
  }

  /// Test for adding custom xml part online.
  Future<void> testInsertCustomXmlPartOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestCustomXmlPart = CustomXmlPartInsert();
    requestCustomXmlPart.id = 'hello';
    requestCustomXmlPart.data = '<data>Hello world</data>';

    final request = InsertCustomXmlPartOnlineRequest(
      requestDocument,
      requestCustomXmlPart
    );

    final result = await context.getApi().insertCustomXmlPartOnline(request);
    expect(result.model?.customXmlPart, isNotNull);
    expect(result.model?.customXmlPart?.id, 'hello');
    expect(result.model?.customXmlPart?.data, '<data>Hello world</data>');
  }

  /// Test for updating custom xml part.
  Future<void> testUpdateCustomXmlPart() async
  {
    final remoteFileName = 'TestUpdateCustomXmlPart.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestCustomXmlPart = CustomXmlPartUpdate();
    requestCustomXmlPart.data = '<data>Hello world</data>';

    final request = UpdateCustomXmlPartRequest(
      remoteFileName,
      0,
      requestCustomXmlPart,
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateCustomXmlPart(request);
    expect(result.customXmlPart, isNotNull);
    expect(result.customXmlPart?.id, 'aspose');
    expect(result.customXmlPart?.data, '<data>Hello world</data>');
  }

  /// Test for updating custom xml part online.
  Future<void> testUpdateCustomXmlPartOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestCustomXmlPart = CustomXmlPartUpdate();
    requestCustomXmlPart.data = '<data>Hello world</data>';

    final request = UpdateCustomXmlPartOnlineRequest(
      requestDocument,
      0,
      requestCustomXmlPart
    );

    final result = await context.getApi().updateCustomXmlPartOnline(request);
    expect(result.model?.customXmlPart, isNotNull);
    expect(result.model?.customXmlPart?.id, 'aspose');
    expect(result.model?.customXmlPart?.data, '<data>Hello world</data>');
  }

  /// A test for DeleteCustomXmlPart.
  Future<void> testDeleteCustomXmlPart() async
  {
    final remoteFileName = 'TestDeleteCustomXmlPart.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteCustomXmlPartRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteCustomXmlPart(request);
  }

  /// A test for DeleteCustomXmlPart online.
  Future<void> testDeleteCustomXmlPartOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteCustomXmlPartOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().deleteCustomXmlPartOnline(request);
  }

  /// A test for DeleteCustomXmlParts.
  Future<void> testDeleteCustomXmlParts() async
  {
    final remoteFileName = 'TestDeleteCustomXmlPart.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteCustomXmlPartsRequest(
      remoteFileName,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteCustomXmlParts(request);
  }

  /// A test for DeleteCustomXmlParts online.
  Future<void> testDeleteCustomXmlPartsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteCustomXmlPartsOnlineRequest(
      requestDocument
    );

    await context.getApi().deleteCustomXmlPartsOnline(request);
  }
}
