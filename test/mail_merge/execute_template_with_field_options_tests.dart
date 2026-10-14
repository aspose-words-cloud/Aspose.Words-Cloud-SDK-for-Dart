/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="execute_template_with_field_options_tests.dart">
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

/// Example of how to perform template execution.
class ExecuteTemplateWithFieldOptionsTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String mailMergeFolder;

  ExecuteTemplateWithFieldOptionsTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentActions/MailMerge';
    mailMergeFolder = 'DocumentActions/MailMerge';
  }

  /// Test for posting execute template.
  Future<void> testExecuteTemplateWithFieldOptions() async
  {
    final localDocumentFile = 'TestMailMergeWithOptions.docx';
    final remoteFileName = 'TestMailMergeWithOptions.docx';
    final localDataFile = await context.loadTextFile(mailMergeFolder + '/TestMailMergeData.xml');
    await context.uploadFile(mailMergeFolder + '/' + localDocumentFile, remoteDataFolder + '/' + remoteFileName);
    final requestOptionsCurrentUser = UserInformation();
    requestOptionsCurrentUser.name = 'SdkTestUser';

    final requestOptions = FieldOptions();
    requestOptions.currentUser = requestOptionsCurrentUser;

    final request = ExecuteMailMergeRequest(
      remoteFileName,
      data: localDataFile,
      options: requestOptions,
      folder: remoteDataFolder,
      destFileName: context.baseTestOutPath + '/' + remoteFileName
    );

    final result = await context.getApi().executeMailMerge(request);
    expect(result.document, isNotNull);
    expect(result.document?.fileName, 'TestMailMergeWithOptions.docx');
  }

  /// Test for execute template online.
  Future<void> testExecuteTemplateOnlineWithFieldOptions() async
  {
    final localDocumentFile = 'TestMailMergeWithOptions.docx';
    final localDataFile = 'TestMailMergeData.xml';
    final requestTemplate = await context.loadBinaryFile(mailMergeFolder + '/' + localDocumentFile);

    final requestData = await context.loadBinaryFile(mailMergeFolder + '/' + localDataFile);

    final requestOptionsCurrentUser = UserInformation();
    requestOptionsCurrentUser.name = 'SdkTestUser';

    final requestOptions = FieldOptions();
    requestOptions.currentUser = requestOptionsCurrentUser;

    final request = ExecuteMailMergeOnlineRequest(
      requestTemplate,
      requestData,
      options: requestOptions
    );

    await context.getApi().executeMailMergeOnline(request);
  }
}
