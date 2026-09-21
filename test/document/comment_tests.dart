/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="comment_tests.dart">
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

/// Example of how to get comments from document.
class CommentTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  CommentTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/Comments';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting comment by specified comment's index.
  Future<void> testGetComment() async
  {
    final remoteFileName = 'TestGetComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetCommentRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getComment(request);
    expect(result.comment, isNotNull);
    expect(result.comment?.text, 'Comment 1' + '\r\n\r\n');
  }

  /// Test for getting comment by specified comment's index online.
  Future<void> testGetCommentOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetCommentOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().getCommentOnline(request);
  }

  /// Test for getting all comments from document.
  Future<void> testGetComments() async
  {
    final remoteFileName = 'TestGetComments.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetCommentsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getComments(request);
    expect(result.comments, isNotNull);
    expect(result.comments?.commentList, isNotNull);
    expect(result.comments?.commentList?.length, 1);
    expect(result.comments?.commentList?[0]?.text, 'Comment 1' + '\r\n\r\n');
  }

  /// Test for getting all comments from document online.
  Future<void> testGetCommentsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetCommentsOnlineRequest(
      requestDocument
    );

    await context.getApi().getCommentsOnline(request);
  }

  /// Test for adding comment.
  Future<void> testInsertComment() async
  {
    final remoteFileName = 'TestInsertComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestCommentRangeStart = PositionInsideNode();
    requestCommentRangeStart.nodeId = '0.3.0.3';
    requestCommentRangeStart.offset = 0;

    final requestCommentRangeEnd = PositionInsideNode();
    requestCommentRangeEnd.nodeId = '0.3.0.3';
    requestCommentRangeEnd.offset = 0;

    final requestComment = CommentInsert();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = InsertCommentRequest(
      remoteFileName,
      requestComment,
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertComment(request);
    expect(result.comment, isNotNull);
    expect(result.comment?.text, 'A new Comment' + '\r\n');
    expect(result.comment?.rangeStart, isNotNull);
    expect(result.comment?.rangeStart?.node, isNotNull);
    expect(result.comment?.rangeStart?.node?.nodeId, '0.3.0.4');
  }

  /// Test for adding comment online.
  Future<void> testInsertCommentOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestCommentRangeStart = PositionInsideNode();
    requestCommentRangeStart.nodeId = '0.3.0.3';
    requestCommentRangeStart.offset = 0;

    final requestCommentRangeEnd = PositionInsideNode();
    requestCommentRangeEnd.nodeId = '0.3.0.3';
    requestCommentRangeEnd.offset = 0;

    final requestComment = CommentInsert();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = InsertCommentOnlineRequest(
      requestDocument,
      requestComment
    );

    await context.getApi().insertCommentOnline(request);
  }

  /// Test for updating comment.
  Future<void> testUpdateComment() async
  {
    final remoteFileName = 'TestUpdateComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestCommentRangeStart = PositionInsideNode();
    requestCommentRangeStart.nodeId = '0.3.0';
    requestCommentRangeStart.offset = 0;

    final requestCommentRangeEnd = PositionInsideNode();
    requestCommentRangeEnd.nodeId = '0.3.0';
    requestCommentRangeEnd.offset = 0;

    final requestComment = CommentUpdate();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = UpdateCommentRequest(
      remoteFileName,
      0,
      requestComment,
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateComment(request);
    expect(result.comment, isNotNull);
    expect(result.comment?.text, 'A new Comment' + '\r\n');
    expect(result.comment?.rangeStart, isNotNull);
    expect(result.comment?.rangeStart?.node, isNotNull);
    expect(result.comment?.rangeStart?.node?.nodeId, '0.3.0.1');
  }

  /// Test for updating comment online.
  Future<void> testUpdateCommentOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestCommentRangeStart = PositionInsideNode();
    requestCommentRangeStart.nodeId = '0.3.0';
    requestCommentRangeStart.offset = 0;

    final requestCommentRangeEnd = PositionInsideNode();
    requestCommentRangeEnd.nodeId = '0.3.0';
    requestCommentRangeEnd.offset = 0;

    final requestComment = CommentUpdate();
    requestComment.rangeStart = requestCommentRangeStart;
    requestComment.rangeEnd = requestCommentRangeEnd;
    requestComment.initial = 'IA';
    requestComment.author = 'Imran Anwar';
    requestComment.text = 'A new Comment';

    final request = UpdateCommentOnlineRequest(
      requestDocument,
      0,
      requestComment
    );

    await context.getApi().updateCommentOnline(request);
  }

  /// A test for DeleteComment.
  Future<void> testDeleteComment() async
  {
    final remoteFileName = 'TestDeleteComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteCommentRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteComment(request);
  }

  /// A test for DeleteComment online.
  Future<void> testDeleteCommentOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteCommentOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().deleteCommentOnline(request);
  }

  /// A test for DeleteComments.
  Future<void> testDeleteComments() async
  {
    final remoteFileName = 'TestDeleteComment.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteCommentsRequest(
      remoteFileName,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    await context.getApi().deleteComments(request);
  }

  /// A test for DeleteComments online.
  Future<void> testDeleteCommentsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteCommentsOnlineRequest(
      requestDocument
    );

    await context.getApi().deleteCommentsOnline(request);
  }
}
