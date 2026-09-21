/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_border_tests.dart">
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

/// Example of how to work with table borders.
class TableBorderTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  TableBorderTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Tables';
    localFile = 'DocumentElements/Tables/TablesGet.docx';
  }

  /// Test for getting borders.
  Future<void> testGetBorders() async
  {
    final remoteFileName = 'TestGetBorders.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetBordersRequest(
      remoteFileName,
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getBorders(request);
    expect(result.borders, isNotNull);
    expect(result.borders?.list, isNotNull);
    expect(result.borders?.list?.length, 6);
    expect(result.borders?.list?[0]?.color, isNotNull);
    expect(result.borders?.list?[0]?.color?.web, '#000000');
  }

  /// Test for getting borders online.
  Future<void> testGetBordersOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetBordersOnlineRequest(
      requestDocument,
      nodePath: 'tables/1/rows/0/cells/0'
    );

    await context.getApi().getBordersOnline(request);
  }

  /// Test for getting border.
  Future<void> testGetBorder() async
  {
    final remoteFileName = 'TestGetBorder.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetBorderRequest(
      remoteFileName,
      'left',
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getBorder(request);
    expect(result.border, isNotNull);
    expect(result.border?.color, isNotNull);
    expect(result.border?.color?.web, '#000000');
  }

  /// Test for getting border online.
  Future<void> testGetBorderOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetBorderOnlineRequest(
      requestDocument,
      'left',
      nodePath: 'tables/1/rows/0/cells/0'
    );

    await context.getApi().getBorderOnline(request);
  }

  /// Test for deleting borders.
  Future<void> testDeleteBorders() async
  {
    final remoteFileName = 'TestDeleteBorders.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteBordersRequest(
      remoteFileName,
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    await context.getApi().deleteBorders(request);
  }

  /// Test for deleting borders online.
  Future<void> testDeleteBordersOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteBordersOnlineRequest(
      requestDocument,
      nodePath: 'tables/1/rows/0/cells/0'
    );

    await context.getApi().deleteBordersOnline(request);
  }

  /// Test for deleting border.
  Future<void> testDeleteBorder() async
  {
    final remoteFileName = 'TestDeleteBorder.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteBorderRequest(
      remoteFileName,
      'left',
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    await context.getApi().deleteBorder(request);
  }

  /// Test for deleting border online.
  Future<void> testDeleteBorderOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteBorderOnlineRequest(
      requestDocument,
      'left',
      nodePath: 'tables/1/rows/0/cells/0'
    );

    await context.getApi().deleteBorderOnline(request);
  }

  /// Test for updating border.
  Future<void> testUpdateBorder() async
  {
    final remoteFileName = 'TestUpdateBorder.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestBorderPropertiesColor = XmlColor();
    requestBorderPropertiesColor.web = '#AABBCC';

    final requestBorderProperties = Border();
    requestBorderProperties.borderType = Border_BorderTypeEnum.left;
    requestBorderProperties.color = requestBorderPropertiesColor;
    requestBorderProperties.distanceFromText = 6.0;
    requestBorderProperties.lineStyle = Border_LineStyleEnum.dashDotStroker;
    requestBorderProperties.lineWidth = 2.0;
    requestBorderProperties.shadow = true;

    final request = UpdateBorderRequest(
      remoteFileName,
      'left',
      requestBorderProperties,
      nodePath: 'tables/1/rows/0/cells/0',
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateBorder(request);
    expect(result.border, isNotNull);
    expect(result.border?.color, isNotNull);
    expect(result.border?.color?.web, '#AABBCC');
    expect(result.border?.distanceFromText, 6.0);
    expect(result.border?.lineWidth, 2.0);
    expect(result.border?.shadow, isTrue);
  }

  /// Test for updating border online.
  Future<void> testUpdateBorderOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestBorderPropertiesColor = XmlColor();
    requestBorderPropertiesColor.web = '#AABBCC';

    final requestBorderProperties = Border();
    requestBorderProperties.borderType = Border_BorderTypeEnum.left;
    requestBorderProperties.color = requestBorderPropertiesColor;
    requestBorderProperties.distanceFromText = 6;
    requestBorderProperties.lineStyle = Border_LineStyleEnum.dashDotStroker;
    requestBorderProperties.lineWidth = 2;
    requestBorderProperties.shadow = true;

    final request = UpdateBorderOnlineRequest(
      requestDocument,
      requestBorderProperties,
      'left',
      nodePath: 'tables/1/rows/0/cells/0'
    );

    await context.getApi().updateBorderOnline(request);
  }
}
