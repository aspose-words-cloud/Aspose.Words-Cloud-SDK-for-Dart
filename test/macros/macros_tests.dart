/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="macros_tests.dart">
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

/// Example of how to work with macros.
class MacrosTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  MacrosTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Macros';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for deleting macros.
  Future<void> testDeleteMacros() async
  {
    final remoteFileName = 'TestDeleteDocumentMacros.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteMacrosRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    await context.getApi().deleteMacros(request);
  }

  /// Test for deleting macros online.
  Future<void> testDeleteMacrosOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteMacrosOnlineRequest(
      requestDocument
    );

    await context.getApi().deleteMacrosOnline(request);
  }
}
