/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="test_context.dart">
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
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

class TestContext {
  late WordsApi _wordsApi;

  /// Configuration
  final Configuration configuration;

  /// Base path to test data
  final String remoteBaseTestDataFolder = 'Temp/SdkTests/Dart/TestData';

  /// Base path to output data
  final String baseTestOutPath = 'TestOut/Dart';

  /// Base local test data folder
  final String localTestDataFolder = Directory.current.path + '/test_data';

  TestContext(this.configuration) {
    _wordsApi = WordsApi(configuration);
  }

  WordsApi getApi() {
     return _wordsApi;
  }

  Future<void> uploadFile(String localPath, String remotePath) async {
    final content = await loadBinaryFile(localPath);
    final request = UploadFileRequest(content, remotePath);
    final result = await getApi().uploadFile(request);
    expect(result.errors?.length, 0);
    expect(result.uploaded?.length, 1);
  }

  String createRandomGuid() {
    return Uuid().v4();
  }

  Future<ByteData> loadBinaryFile(String path) async {
    if (!path.startsWith('/')) {
      path = '/' + path;
    }
    final file = File(localTestDataFolder + path);
    final bytes = await file.readAsBytes();
    return ByteData.view(bytes.buffer);
  }

  Future<String> loadTextFile(String path) async {
    if (!path.startsWith('/')) {
      path = '/' + path;
    }
    final file = File(localTestDataFolder + path);
    return await file.readAsString();
  }
}
