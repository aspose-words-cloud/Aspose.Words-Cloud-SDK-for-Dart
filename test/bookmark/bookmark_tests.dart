/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="bookmark_tests.dart">
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

/// Example of how to get all bookmarks from document.
class BookmarkTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;
  late String bookmarkName;

  BookmarkTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Bookmarks';
    localFile = 'Common/test_multi_pages.docx';
    bookmarkName = 'aspose';
  }

  /// Test for getting bookmarks from document.
  Future<void> testGetBookmarks() async
  {
    final remoteFileName = 'TestGetDocumentBookmarks.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetBookmarksRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().getBookmarks(request);
  }

  /// Test for getting bookmarks from document online.
  Future<void> testGetBookmarksOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetBookmarksOnlineRequest(
      requestDocument
    );

    await context.getApi().getBookmarksOnline(request);
  }

  /// Test for getting bookmark by specified name.
  Future<void> testGetBookmarkByName() async
  {
    final remoteFileName = 'TestGetDocumentBookmarkByName.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetBookmarkByNameRequest(
      remoteFileName,
      bookmarkName,
      folder: remoteDataFolder
    );

    await context.getApi().getBookmarkByName(request);
  }

  /// Test for getting bookmark by specified name online.
  Future<void> testGetBookmarkByNameOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetBookmarkByNameOnlineRequest(
      requestDocument,
      bookmarkName
    );

    await context.getApi().getBookmarkByNameOnline(request);
  }

  /// Test for updating existed bookmark.
  Future<void> testUpdateBookmark() async
  {
    final remoteFileName = 'TestUpdateDocumentBookmark.docx';
    final bookmarkText = 'This will be the text for Aspose';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestBookmarkData = BookmarkData();
    requestBookmarkData.name = bookmarkName;
    requestBookmarkData.text = bookmarkText;

    final request = UpdateBookmarkRequest(
      remoteFileName,
      bookmarkName,
      requestBookmarkData,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().updateBookmark(request);
  }

  /// Test for updating existed bookmark online.
  Future<void> testUpdateBookmarkOnline() async
  {
    final remoteFileName = 'TestUpdateDocumentBookmark.docx';
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestBookmarkData = BookmarkData();
    requestBookmarkData.name = bookmarkName;
    requestBookmarkData.text = 'This will be the text for Aspose';

    final request = UpdateBookmarkOnlineRequest(
      requestDocument,
      bookmarkName,
      requestBookmarkData,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().updateBookmarkOnline(request);
  }

  /// Test for deleting bookmark by specified name.
  Future<void> testDeleteBookmark() async
  {
    final remoteFileName = 'TestDeleteBookmark.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteBookmarkRequest(
      remoteFileName,
      bookmarkName,
      folder: remoteDataFolder
    );

    await context.getApi().deleteBookmark(request);
  }

  /// Test for deleting bookmark by specified name online.
  Future<void> testDeleteBookmarkOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteBookmarkOnlineRequest(
      requestDocument,
      bookmarkName
    );

    await context.getApi().deleteBookmarkOnline(request);
  }

  /// Test for deleting all bookmarks from document.
  Future<void> testDeleteBookmarks() async
  {
    final remoteFileName = 'TestDeleteBookmarks.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteBookmarksRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().deleteBookmarks(request);
  }

  /// Test for deleting all bookmarks from document online.
  Future<void> testDeleteBookmarksOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteBookmarksOnlineRequest(
      requestDocument
    );

    await context.getApi().deleteBookmarksOnline(request);
  }

  /// Test for inserting new bookmark.
  Future<void> testInsertBookmark() async
  {
    final remoteFileName = 'TestInsertBookmark.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestBookmarkStartRange = PositionInsideNode();
    requestBookmarkStartRange.nodeId = '0.0.0.0';
    requestBookmarkStartRange.offset = 0;

    final requestBookmarkEndRange = PositionInsideNode();
    requestBookmarkEndRange.nodeId = '0.0.0.0';
    requestBookmarkEndRange.offset = 0;

    final requestBookmark = BookmarkInsert();
    requestBookmark.startRange = requestBookmarkStartRange;
    requestBookmark.endRange = requestBookmarkEndRange;
    requestBookmark.name = 'new_bookmark';
    requestBookmark.text = 'Some text';

    final request = InsertBookmarkRequest(
      remoteFileName,
      requestBookmark,
      folder: remoteDataFolder
    );

    await context.getApi().insertBookmark(request);
  }

  /// Test for inserting new bookmark online.
  Future<void> testInsertBookmarkOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestBookmarkStartRange = PositionInsideNode();
    requestBookmarkStartRange.nodeId = '0.0.0.0';
    requestBookmarkStartRange.offset = 0;

    final requestBookmarkEndRange = PositionInsideNode();
    requestBookmarkEndRange.nodeId = '0.0.0.0';
    requestBookmarkEndRange.offset = 0;

    final requestBookmark = BookmarkInsert();
    requestBookmark.startRange = requestBookmarkStartRange;
    requestBookmark.endRange = requestBookmarkEndRange;
    requestBookmark.name = 'new_bookmark';
    requestBookmark.text = 'Some text';

    final request = InsertBookmarkOnlineRequest(
      requestDocument,
      requestBookmark
    );

    await context.getApi().insertBookmarkOnline(request);
  }
}
