/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="folder_tests.dart">
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

/// Example of how to work with folders.
class FolderTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  FolderTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/Storage';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for create folder.
  Future<void> testCreateFolder() async
  {

    final request = CreateFolderRequest(
      remoteDataFolder + '/TestCreateFolder'
    );

    await context.getApi().createFolder(request);
  }

  /// Test for delete folder.
  Future<void> testDeleteFolder() async
  {
    final testDeleteFolder = remoteDataFolder + '/TestDeleteFolder';
    await context.uploadFile(localFile, testDeleteFolder + '/TestDeleteFolder.docx');

    final request = DeleteFolderRequest(
      testDeleteFolder,
      recursive: true
    );

    await context.getApi().deleteFolder(request);
  }

  /// Test for get file list of folder.
  Future<void> testGetFilesList() async
  {

    final request = GetFilesListRequest(
      remoteDataFolder
    );

    final result = await context.getApi().getFilesList(request);
    expect(result.value, isNotNull);
  }

  /// Test for copy folder.
  Future<void> testCopyFolder() async
  {
    final folderToCopy = remoteDataFolder + '/TestCopyFolder';
    await context.uploadFile(localFile, folderToCopy + 'Src/TestCopyFolderSrc.docx');

    final request = CopyFolderRequest(
      folderToCopy + 'Dest',
      folderToCopy + 'Src'
    );

    await context.getApi().copyFolder(request);
  }

  /// Test for move folder.
  Future<void> testMoveFolder() async
  {
    await context.uploadFile(localFile, remoteDataFolder + '/TestMoveFolderSrc/TestMoveFolderSrc.docx');

    final request = MoveFolderRequest(
      context.baseTestOutPath + '/TestMoveFolderDest_' + context.createRandomGuid(),
      remoteDataFolder + '/TestMoveFolderSrc'
    );

    await context.getApi().moveFolder(request);
  }
}
