/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="styles_tests.dart">
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

/// Example of how to work with styles.
class StylesTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  StylesTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Styles';
    localFile = 'DocumentElements/Styles/GetStyles.docx';
  }

  /// Test for getting styles from document.
  Future<void> testGetStyles() async
  {
    final remoteFileName = 'TestGetStyles.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStylesRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getStyles(request);
    expect(result.styles, isNotNull);
    expect(result.styles?.length, 22);
    expect(result.styles?[0]?.name, 'Default Paragraph Font');
  }

  /// Test for getting styles from document online.
  Future<void> testGetStylesOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetStylesOnlineRequest(
      requestDocument
    );

    await context.getApi().getStylesOnline(request);
  }

  /// Test for getting style from document.
  Future<void> testGetStyle() async
  {
    final remoteFileName = 'TestGetStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStyleRequest(
      remoteFileName,
      'Heading 1',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getStyle(request);
    expect(result.style, isNotNull);
    expect(result.style?.name, 'Heading 1');
  }

  /// Test for getting style from document online.
  Future<void> testGetStyleOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetStyleOnlineRequest(
      requestDocument,
      'Heading 1'
    );

    await context.getApi().getStyleOnline(request);
  }

  /// Test for updating style from document.
  Future<void> testUpdateStyle() async
  {
    final remoteFileName = 'TestUpdateStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestStyleUpdate = StyleUpdate();
    requestStyleUpdate.name = 'My Style';

    final request = UpdateStyleRequest(
      remoteFileName,
      'Heading 1',
      requestStyleUpdate,
      folder: remoteDataFolder
    );

    final result = await context.getApi().updateStyle(request);
    expect(result.style, isNotNull);
    expect(result.style?.name, 'My Style');
  }

  /// Test for updating style from document online.
  Future<void> testUpdateStyleOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestStyleUpdate = StyleUpdate();
    requestStyleUpdate.name = 'My Style';

    final request = UpdateStyleOnlineRequest(
      requestDocument,
      'Heading 1',
      requestStyleUpdate
    );

    await context.getApi().updateStyleOnline(request);
  }

  /// Test for inserting style from document.
  Future<void> testInsertStyle() async
  {
    final remoteFileName = 'TestInsertStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestStyleInsert = StyleInsert();
    requestStyleInsert.styleName = 'My Style';
    requestStyleInsert.styleType = StyleInsert_StyleTypeEnum.paragraph;

    final request = InsertStyleRequest(
      remoteFileName,
      requestStyleInsert,
      folder: remoteDataFolder
    );

    final result = await context.getApi().insertStyle(request);
    expect(result.style, isNotNull);
    expect(result.style?.name, 'My Style');
  }

  /// Test for inserting style from document online.
  Future<void> testInsertStyleOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestStyleInsert = StyleInsert();
    requestStyleInsert.styleName = 'My Style';
    requestStyleInsert.styleType = StyleInsert_StyleTypeEnum.paragraph;

    final request = InsertStyleOnlineRequest(
      requestDocument,
      requestStyleInsert
    );

    await context.getApi().insertStyleOnline(request);
  }

  /// Test for coping style from document.
  Future<void> testCopyStyle() async
  {
    final remoteFileName = 'TestCopyStyle.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestStyleCopy = StyleCopy();
    requestStyleCopy.styleName = 'Heading 1';

    final request = CopyStyleRequest(
      remoteFileName,
      requestStyleCopy,
      folder: remoteDataFolder
    );

    final result = await context.getApi().copyStyle(request);
    expect(result.style, isNotNull);
    expect(result.style?.name, 'Heading 1_0');
  }

  /// Test for coping style from document online.
  Future<void> testCopyStyleOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestStyleCopy = StyleCopy();
    requestStyleCopy.styleName = 'Heading 1';

    final request = CopyStyleOnlineRequest(
      requestDocument,
      requestStyleCopy
    );

    await context.getApi().copyStyleOnline(request);
  }

  /// Test for getting style from document element.
  Future<void> testGetStyleFromDocumentElement() async
  {
    final remoteFileName = 'TestGetStyleFromDocumentElement.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetStyleFromDocumentElementRequest(
      remoteFileName,
      'paragraphs/1/paragraphFormat',
      folder: remoteDataFolder
    );

    final result = await context.getApi().getStyleFromDocumentElement(request);
    expect(result.style, isNotNull);
    expect(result.style?.name, 'TOC 1');
  }

  /// Test for getting style from document element online.
  Future<void> testGetStyleFromDocumentElementOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetStyleFromDocumentElementOnlineRequest(
      requestDocument,
      'paragraphs/1/paragraphFormat'
    );

    await context.getApi().getStyleFromDocumentElementOnline(request);
  }

  /// Test for applying style to document element.
  Future<void> testApplyStyleToDocumentElement() async
  {
    final remoteFileName = 'TestApplyStyleToDocumentElement.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);
    final requestStyleApply = StyleApply();
    requestStyleApply.styleName = 'Heading 1';

    final request = ApplyStyleToDocumentElementRequest(
      remoteFileName,
      'paragraphs/1/paragraphFormat',
      requestStyleApply,
      folder: remoteDataFolder
    );

    await context.getApi().applyStyleToDocumentElement(request);
  }

  /// Test for applying style to document element online.
  Future<void> testApplyStyleToDocumentElementOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final requestStyleApply = StyleApply();
    requestStyleApply.styleName = 'Heading 1';

    final request = ApplyStyleToDocumentElementOnlineRequest(
      requestDocument,
      'paragraphs/1/paragraphFormat',
      requestStyleApply
    );

    await context.getApi().applyStyleToDocumentElementOnline(request);
  }

  /// Test for copying styles from a template.
  Future<void> testCopyStylesFromTemplate() async
  {
    final remoteFileName = 'TestCopyStylesFromTemplate.docx';
    final templateFolder = 'DocumentElements/Styles';
    final templateName = 'StyleTemplate.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    await context.uploadFile(templateFolder + '/' + templateName, remoteDataFolder + '/' + templateName);

    final request = CopyStylesFromTemplateRequest(
      remoteFileName,
      templateName,
      folder: remoteDataFolder
    );

    await context.getApi().copyStylesFromTemplate(request);
  }
}
