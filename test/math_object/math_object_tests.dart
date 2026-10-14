/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="math_object_tests.dart">
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

/// Example of how to work with MathObjects.
class MathObjectTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  MathObjectTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/MathObjects';
    localFile = 'DocumentElements/MathObjects/MathObjects.docx';
  }

  /// Test for getting mathObjects.
  Future<void> testGetOfficeMathObjects() async
  {
    final remoteFileName = 'TestGetOfficeMathObjects.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetOfficeMathObjectsRequest(
      remoteFileName,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getOfficeMathObjects(request);
    expect(result.officeMathObjects, isNotNull);
    expect(result.officeMathObjects?.list, isNotNull);
    expect(result.officeMathObjects?.list?.length, 16);
    expect(result.officeMathObjects?.list?[0]?.nodeId, '0.0.0.0');
  }

  /// Test for getting mathObjects online.
  Future<void> testGetOfficeMathObjectsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetOfficeMathObjectsOnlineRequest(
      requestDocument,
      nodePath: ''
    );

    await context.getApi().getOfficeMathObjectsOnline(request);
  }

  /// Test for getting mathObjects without node path.
  Future<void> testGetOfficeMathObjectsWithoutNodePath() async
  {
    final remoteFileName = 'TestGetOfficeMathObjectsWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetOfficeMathObjectsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getOfficeMathObjects(request);
    expect(result.officeMathObjects, isNotNull);
    expect(result.officeMathObjects?.list, isNotNull);
    expect(result.officeMathObjects?.list?.length, 16);
    expect(result.officeMathObjects?.list?[0]?.nodeId, '0.0.0.0');
  }

  /// Test for getting mathObject.
  Future<void> testGetOfficeMathObject() async
  {
    final remoteFileName = 'TestGetOfficeMathObject.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetOfficeMathObjectRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getOfficeMathObject(request);
    expect(result.officeMathObject, isNotNull);
    expect(result.officeMathObject?.nodeId, '0.0.0.0');
  }

  /// Test for getting mathObject online.
  Future<void> testGetOfficeMathObjectOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetOfficeMathObjectOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().getOfficeMathObjectOnline(request);
  }

  /// Test for getting mathObject without node path.
  Future<void> testGetOfficeMathObjectWithoutNodePath() async
  {
    final remoteFileName = 'TestGetOfficeMathObjectWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetOfficeMathObjectRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getOfficeMathObject(request);
    expect(result.officeMathObject, isNotNull);
    expect(result.officeMathObject?.nodeId, '0.0.0.0');
  }

  /// Test for rendering mathObject.
  Future<void> testRenderMathObject() async
  {
    final remoteFileName = 'TestRenderMathObject.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderMathObjectRequest(
      remoteFileName,
      'png',
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().renderMathObject(request);
  }

  /// Test for rendering mathObject.
  Future<void> testRenderMathObjectOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = RenderMathObjectOnlineRequest(
      requestDocument,
      'png',
      0,
      nodePath: ''
    );

    await context.getApi().renderMathObjectOnline(request);
  }

  /// Test for rendering mathObject without node path.
  Future<void> testRenderMathObjectWithoutNodePath() async
  {
    final remoteFileName = 'TestRenderMathObjectWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = RenderMathObjectRequest(
      remoteFileName,
      'png',
      0,
      folder: remoteDataFolder
    );

    await context.getApi().renderMathObject(request);
  }

  /// Test for deleting mathObject.
  Future<void> testDeleteOfficeMathObject() async
  {
    final remoteFileName = 'TestDeleteOfficeMathObject.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteOfficeMathObjectRequest(
      remoteFileName,
      0,
      nodePath: '',
      folder: remoteDataFolder
    );

    await context.getApi().deleteOfficeMathObject(request);
  }

  /// Test for deleting mathObject online.
  Future<void> testDeleteOfficeMathObjectOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteOfficeMathObjectOnlineRequest(
      requestDocument,
      0,
      nodePath: ''
    );

    await context.getApi().deleteOfficeMathObjectOnline(request);
  }

  /// Test for deleting mathObject without node path.
  Future<void> testDeleteOfficeMathObjectWithoutNodePath() async
  {
    final remoteFileName = 'TestDeleteOfficeMathObjectWithoutNodePath.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteOfficeMathObjectRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteOfficeMathObject(request);
  }

  /// Test for deleting math objects.
  Future<void> testDeleteOfficeMathObjects() async
  {
    final remoteFileName = 'TestDeleteOfficeMathObject.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteOfficeMathObjectsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().deleteOfficeMathObjects(request);
  }

  /// Test for deleting math objects online.
  Future<void> testDeleteOfficeMathObjectsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteOfficeMathObjectsOnlineRequest(
      requestDocument
    );

    await context.getApi().deleteOfficeMathObjectsOnline(request);
  }
}
