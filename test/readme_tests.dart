/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="readme_tests.dart">
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

import 'dart:io';
import 'dart:typed_data';

import 'package:aspose_words_cloud/aspose_words_cloud.dart';

import 'test_context.dart';

/// Example of how to use batch requests.
class ReadmeTests
{
  final TestContext context;

  ReadmeTests(this.context);

  /// Checking example from readme.
  Future<void> testReadme1() async
  {
    // Configure words api client
    var configuration = Configuration(context.configuration.clientId, context.configuration.clientSecret, baseUrl: context.configuration.baseUrl);
    var wordsApi = WordsApi(configuration);

    // Upload file to cloud
    var localFileContent = await (File('./test_data/Common/test_doc.docx').readAsBytes());
    var uploadRequest = UploadFileRequest(ByteData.view(localFileContent.buffer), 'fileStoredInCloud.docx');
    await wordsApi.uploadFile(uploadRequest);

    // Save file as pdf in cloud
    var saveOptionsData = PdfSaveOptionsData()
      ..fileName = 'destStoredInCloud.pdf';
    var saveAsRequest = SaveAsRequest('fileStoredInCloud.docx', saveOptionsData);
    await wordsApi.saveAs(saveAsRequest);
  }
}
