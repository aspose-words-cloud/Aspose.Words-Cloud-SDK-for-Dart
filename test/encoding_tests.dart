/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="encoding_tests.dart">
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

import 'test_context.dart';

/// Example of how to use batch requests.
class EncodingTests
{
  final TestContext context;
  late String dataFolder;

  EncodingTests(this.context) {
    dataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Section';
  }

  /// Test for url encoding.
  Future<void> testEncoding1() async
  {
    var localName = 'test_multi_pages.docx';
    var remoteName = '[“Test_Two,_Inc.”]-_83(b)Election([“Bill_Gates”]).docx';
    var fullName = '$dataFolder/$remoteName';
    var sectionIndex = 0;

    await context.uploadFile(
        'Common/' + localName,
        fullName
    );

    var request = GetSectionRequest(remoteName, sectionIndex, folder: dataFolder);
    var actual = await context.getApi().getSection(request);
    expect(actual, isNotNull);
  }
}
