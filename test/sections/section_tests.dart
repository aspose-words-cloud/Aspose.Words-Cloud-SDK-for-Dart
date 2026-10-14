/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="section_tests.dart">
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

/// Example of how to work with sections.
class SectionTests
{
  final TestContext context;
  late String remoteDataFolder;
  late String localFile;

  SectionTests(this.context) {
    remoteDataFolder = context.remoteBaseTestDataFolder + '/DocumentElements/Section';
    localFile = 'Common/test_multi_pages.docx';
  }

  /// Test for getting section by index.
  Future<void> testGetSection() async
  {
    final remoteFileName = 'TestGetSection.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetSectionRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getSection(request);
    expect(result.section, isNotNull);
    expect(result.section?.childNodes, isNotNull);
    expect(result.section?.childNodes?.length, 13);
    expect(result.section?.childNodes?[0]?.nodeId, '0.3.0');
  }

  /// Test for getting section by index online.
  Future<void> testGetSectionOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetSectionOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().getSectionOnline(request);
  }

  /// Test for getting sections.
  Future<void> testGetSections() async
  {
    final remoteFileName = 'TestGetSections.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = GetSectionsRequest(
      remoteFileName,
      folder: remoteDataFolder
    );

    final result = await context.getApi().getSections(request);
    expect(result.sections, isNotNull);
    expect(result.sections?.sectionLinkList, isNotNull);
    expect(result.sections?.sectionLinkList?.length, 1);
    expect(result.sections?.sectionLinkList?[0]?.nodeId, '0');
  }

  /// Test for getting sections online.
  Future<void> testGetSectionsOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = GetSectionsOnlineRequest(
      requestDocument
    );

    await context.getApi().getSectionsOnline(request);
  }

  /// Test for delete a section.
  Future<void> testDeleteSection() async
  {
    final remoteFileName = 'TestDeleteSection.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = DeleteSectionRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().deleteSection(request);
  }

  /// Test for delete a section online.
  Future<void> testDeleteSectionOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = DeleteSectionOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().deleteSectionOnline(request);
  }

  /// Test for merge a section with the next one.
  Future<void> testMergeWithNext() async
  {
    final remoteFileName = 'TestMergeWithNext.docx';
    await context.uploadFile('DocumentElements/Sections/Source.docx', remoteDataFolder + '/' + remoteFileName);

    final request = MergeWithNextRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().mergeWithNext(request);
  }

  /// Test for merge a section with the next one online.
  Future<void> testMergeWithNextOnline() async
  {
    final requestDocument = await context.loadBinaryFile('DocumentElements/Sections/Source.docx');

    final request = MergeWithNextOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().mergeWithNextOnline(request);
  }

  /// Test for insertion a section.
  Future<void> testInsertSection() async
  {
    final remoteFileName = 'TestInsertSection.docx';
    await context.uploadFile(localFile, remoteDataFolder + '/' + remoteFileName);

    final request = InsertSectionRequest(
      remoteFileName,
      0,
      folder: remoteDataFolder
    );

    await context.getApi().insertSection(request);
  }

  /// Test for insertion a section online.
  Future<void> testInsertSectionOnline() async
  {
    final requestDocument = await context.loadBinaryFile(localFile);

    final request = InsertSectionOnlineRequest(
      requestDocument,
      0
    );

    await context.getApi().insertSectionOnline(request);
  }

  /// Test for linking headers and footers to previous section.
  Future<void> testLinkHeaderFootersToPrevious() async
  {
    final remoteFileName = 'TestLinkHeaderFootersToPrevious.docx';
    await context.uploadFile('DocumentElements/Sections/Source.docx', remoteDataFolder + '/' + remoteFileName);

    final request = LinkHeaderFootersToPreviousRequest(
      remoteFileName,
      1,
      folder: remoteDataFolder
    );

    await context.getApi().linkHeaderFootersToPrevious(request);
  }
}
