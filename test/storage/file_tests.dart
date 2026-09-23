/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="file_tests.dart">
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

/// Example of how to work with files.
class FileTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  FileTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/Storage';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for uploading file.
  Future<void> testUploadFile() async
  {
    final remoteFileName = 'TestUploadFile.docx';
    final requestFileContent = await context.loadBinaryFile(localFile);

    final request = UploadFileRequest(
      requestFileContent,
      remoteDataFolder + '/' + remoteFileName
    );

    final result = await context.getApi().uploadFile(request);
    expect(result.uploaded, isNotNull);
    expect(result.uploaded?.length, 1);
    expect(result.uploaded?[0], 'TestUploadFile.docx');
  }

  /// Test for copy file.
  Future<void> testCopyFile() async
  {
    final remoteFileName = 'TestCopyFileSrc.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = CopyFileRequest(
      remoteDataFolder + '/TestCopyFileDest.docx',
      remoteDataFolder + '/' + remoteFileName
    );

    await context.getApi().copyFile(request);
  }

  /// Test for move file.
  Future<void> testMoveFile() async
  {
    final remoteFileName = 'TestMoveFileSrc.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = MoveFileRequest(
      context.baseTestOutPath + '/TestMoveFileDest_' + context.createRandomGuid() + '.docx',
      remoteDataFolder + '/' + remoteFileName
    );

    await context.getApi().moveFile(request);
  }

  /// Test for delete file.
  Future<void> testDeleteFile() async
  {
    final remoteFileName = 'TestDeleteFile.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteFileRequest(
      remoteDataFolder + '/' + remoteFileName
    );

    await context.getApi().deleteFile(request);
  }

  /// Test for download file.
  Future<void> testDownloadFile() async
  {
    final remoteFileName = 'TestDownloadFile.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DownloadFileRequest(
      remoteDataFolder + '/' + remoteFileName
    );

    await context.getApi().downloadFile(request);
  }
}
