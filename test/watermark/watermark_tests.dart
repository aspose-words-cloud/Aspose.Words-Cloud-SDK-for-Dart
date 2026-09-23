/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="watermark_tests.dart">
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

/// Example of how to work with watermarks.
class WatermarkTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  WatermarkTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/Watermark';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for adding watermark text.
  Future<void> testInsertWatermarkText() async
  {
    final remoteFileName = 'TestInsertWatermarkText.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestWatermarkData = WatermarkDataText();
    requestWatermarkData.text = 'watermark text';

    final request = InsertWatermarkRequest(
      remoteFileName,
      requestWatermarkData,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().insertWatermark(request);
    expect(result.document, isNotNull);
  }

  /// Test for adding watermark text online.
  Future<void> testInsertWatermarkTextOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestWatermarkData = WatermarkDataText();
    requestWatermarkData.text = 'watermark text';

    final request = InsertWatermarkOnlineRequest(
      requestDocument,
      requestWatermarkData
    );

    await context.getApi().insertWatermarkOnline(request);
  }

  /// Test for adding watermark text.
  Future<void> testInsertWatermarkImage() async
  {
    final remoteFileName = 'TestInsertWatermarkImage.docx';
    final remoteImagePath = remoteDataFolder + '/TestInsertWatermarkImage.png';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    await context.uploadFile('Common/aspose-cloud.png', remoteImagePath);
    final requestWatermarkDataImage = FileReference.fromRemoteFile(remoteImagePath);

    final requestWatermarkData = WatermarkDataImage();
    requestWatermarkData.image = requestWatermarkDataImage;

    final request = InsertWatermarkRequest(
      remoteFileName,
      requestWatermarkData,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().insertWatermark(request);
    expect(result.document, isNotNull);
  }

  /// Test for adding watermark text online.
  Future<void> testInsertWatermarkImageOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestWatermarkDataImageStream = await context.loadBinaryFile('Common/aspose-cloud.png');
    final requestWatermarkDataImage = FileReference.fromLocalFile(requestWatermarkDataImageStream);

    final requestWatermarkData = WatermarkDataImage();
    requestWatermarkData.image = requestWatermarkDataImage;

    final request = InsertWatermarkOnlineRequest(
      requestDocument,
      requestWatermarkData
    );

    await context.getApi().insertWatermarkOnline(request);
  }

  /// Test for adding watermark image.
  Future<void> testInsertWatermarkImageDeprecated() async
  {
    final remoteFileName = 'TestInsertWatermarkImage.docx';
    final remoteImagePath = remoteDataFolder + '/TestInsertWatermarkImage.png';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    await context.uploadFile('Common/aspose-cloud.png', remoteImagePath);

    final request = InsertWatermarkImageRequest(
      remoteFileName,
      imageFile: null,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName,
      image: remoteImagePath
    );

    final result = await context.getApi().insertWatermarkImage(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestInsertWatermarkImage.docx');
  }

  /// Test for adding watermark image online.
  Future<void> testInsertWatermarkImageDeprecatedOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestImageFile = await context.loadBinaryFile('Common/aspose-cloud.png');

    final request = InsertWatermarkImageOnlineRequest(
      requestDocument,
      imageFile: requestImageFile
    );

    await context.getApi().insertWatermarkImageOnline(request);
  }

  /// Test for adding watermark text.
  Future<void> testInsertWatermarkTextDeprecated() async
  {
    final remoteFileName = 'TestInsertWatermarkText.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestWatermarkText = WatermarkText();
    requestWatermarkText.text = 'This is the text';
    requestWatermarkText.rotationAngle = 90.0;

    final request = InsertWatermarkTextRequest(
      remoteFileName,
      requestWatermarkText,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().insertWatermarkText(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestInsertWatermarkText.docx');
  }

  /// Test for adding watermark text online.
  Future<void> testInsertWatermarkTextDeprecatedOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestWatermarkText = WatermarkText();
    requestWatermarkText.text = 'This is the text';
    requestWatermarkText.rotationAngle = 90;

    final request = InsertWatermarkTextOnlineRequest(
      requestDocument,
      requestWatermarkText
    );

    await context.getApi().insertWatermarkTextOnline(request);
  }

  /// Test for deleting watermark.
  Future<void> testDeleteWatermark() async
  {
    final remoteFileName = 'TestDeleteWatermark.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteWatermarkRequest(
      remoteFileName,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().deleteWatermark(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestDeleteWatermark.docx');
  }

  /// Test for deleting watermark online.
  Future<void> testDeleteWatermarkOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteWatermarkOnlineRequest(
      requestDocument
    );

    await context.getApi().deleteWatermarkOnline(request);
  }
}
