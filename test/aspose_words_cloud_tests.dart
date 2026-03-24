/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="aspose_words_cloud_tests.dart">
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

@Timeout(Duration(minutes: 5))
import 'dart:convert';
import 'dart:io';

import 'package:aspose_words_cloud/aspose_words_cloud.dart';
import 'package:test/test.dart';

import './batch_tests.dart';
import './bookmark/bookmark_tests.dart';
import './compatibility/compatibility_tests.dart';
import './document_properties/document_properties_tests.dart';
import './document_protection/document_protection_tests.dart';
import './document/append_document_tests.dart';
import './document/comment_tests.dart';
import './document/compare_document_tests.dart';
import './document/compress_document_tests.dart';
import './document/convert_document_tests.dart';
import './document/custom_xml_parts_tests.dart';
import './document/document_statistics_tests.dart';
import './document/document_tests.dart';
import './document/document_with_format_tests.dart';
import './document/load_web_document_tests.dart';
import './document/password_encryption_tests.dart';
import './document/revisions_tests.dart';
import './document/signature_tests.dart';
import './document/split_document_to_format_tests.dart';
import './drawing/drawing_objects_tests.dart';
import './encoding_tests.dart';
import './examples_tests.dart';
import './field/field_tests.dart';
import './field/form_field_tests.dart';
import './font/font_tests.dart';
import './footnote/footnote_tests.dart';
import './header_footer/header_footer_tests.dart';
import './hyperlink/hyperlink_tests.dart';
import './info/info_tests.dart';
import './lists/lists_tests.dart';
import './macros/macros_tests.dart';
import './mail_merge/execute_mail_merge_tests.dart';
import './mail_merge/execute_template_tests.dart';
import './mail_merge/execute_template_with_field_options_tests.dart';
import './mail_merge/mail_merge_fileds_tests.dart';
import './math_object/math_object_tests.dart';
import './page_setup/page_setup_tests.dart';
import './paragraph/paragraph_tests.dart';
import './range/range_tests.dart';
import './readme_tests.dart';
import './report/build_report_tests.dart';
import './run/run_tests.dart';
import './sections/section_tests.dart';
import './storage/file_tests.dart';
import './storage/folder_tests.dart';
import './structured_document_tag/structured_document_tag_tests.dart';
import './styles/styles_tests.dart';
import './table/table_border_tests.dart';
import './table/table_tests.dart';
import './test_context.dart';
import './text/text_tests.dart';
import './watermark/watermark_tests.dart';

late TestContext testContext;

void main() {
  setUpAll(() async {
    final file = File('${Directory.current.path}/settings/servercreds.json');
    if (await file.exists() == false) {
      throw Exception('Please put ClientSecret and ClientId credentials to "SDK_ROOT/settings/servercreds.json".');
    }

    final jsonString = await file.readAsString();
    final json = jsonDecode(jsonString) as Map<String, dynamic>;
    final config = Configuration.fromJson(json);
    testContext = TestContext(config);
  });

  group('Readme', () {
    test('TestReadme1', () async => await ReadmeTests(testContext).testReadme1());
  });

  group('Encoding', () {
    test('TestEncoding1', () async => await EncodingTests(testContext).testEncoding1());
  });

  group('Batch', () {
    test('TestBatch1', () async => await BatchTests(testContext).testBatch1());
    test('TestBatch2', () async => await BatchTests(testContext).testBatch2());
    test('TestProgressSendReceive', () async => await BatchTests(testContext).testProgressSendReceive());
  });

  group('Bookmark', () {
    test('GetBookmarks', () async => await BookmarkTests(testContext).testGetBookmarks());
    test('GetBookmarksOnline', () async => await BookmarkTests(testContext).testGetBookmarksOnline());
    test('GetBookmarkByName', () async => await BookmarkTests(testContext).testGetBookmarkByName());
    test('GetBookmarkByNameOnline', () async => await BookmarkTests(testContext).testGetBookmarkByNameOnline());
    test('UpdateBookmark', () async => await BookmarkTests(testContext).testUpdateBookmark());
    test('UpdateBookmarkOnline', () async => await BookmarkTests(testContext).testUpdateBookmarkOnline());
    test('DeleteBookmark', () async => await BookmarkTests(testContext).testDeleteBookmark());
    test('DeleteBookmarkOnline', () async => await BookmarkTests(testContext).testDeleteBookmarkOnline());
    test('DeleteBookmarks', () async => await BookmarkTests(testContext).testDeleteBookmarks());
    test('DeleteBookmarksOnline', () async => await BookmarkTests(testContext).testDeleteBookmarksOnline());
    test('InsertBookmark', () async => await BookmarkTests(testContext).testInsertBookmark());
    test('InsertBookmarkOnline', () async => await BookmarkTests(testContext).testInsertBookmarkOnline());
  });

  group('Compatibility', () {
    test('OptimizeDocument', () async => await CompatibilityTests(testContext).testOptimizeDocument());
    test('OptimizeDocumentOnline', () async => await CompatibilityTests(testContext).testOptimizeDocumentOnline());
  });

  group('AppendDocument', () {
    test('AppendDocument', () async => await AppendDocumentTests(testContext).testAppendDocument());
    test('AppendDocumentOnline', () async => await AppendDocumentTests(testContext).testAppendDocumentOnline());
  });

  group('Comment', () {
    test('GetComment', () async => await CommentTests(testContext).testGetComment());
    test('GetCommentOnline', () async => await CommentTests(testContext).testGetCommentOnline());
    test('GetComments', () async => await CommentTests(testContext).testGetComments());
    test('GetCommentsOnline', () async => await CommentTests(testContext).testGetCommentsOnline());
    test('InsertComment', () async => await CommentTests(testContext).testInsertComment());
    test('InsertCommentOnline', () async => await CommentTests(testContext).testInsertCommentOnline());
    test('UpdateComment', () async => await CommentTests(testContext).testUpdateComment());
    test('UpdateCommentOnline', () async => await CommentTests(testContext).testUpdateCommentOnline());
    test('DeleteComment', () async => await CommentTests(testContext).testDeleteComment());
    test('DeleteCommentOnline', () async => await CommentTests(testContext).testDeleteCommentOnline());
    test('DeleteComments', () async => await CommentTests(testContext).testDeleteComments());
    test('DeleteCommentsOnline', () async => await CommentTests(testContext).testDeleteCommentsOnline());
  });

  group('CompareDocument', () {
    test('CompareDocument', () async => await CompareDocumentTests(testContext).testCompareDocument());
    test('CompareDocumentOnline', () async => await CompareDocumentTests(testContext).testCompareDocumentOnline());
    test('CompareTwoDocumentOnline', () async => await CompareDocumentTests(testContext).testCompareTwoDocumentOnline());
    test('CompareDocumentWithPassword', () async => await CompareDocumentTests(testContext).testCompareDocumentWithPassword());
  });

  group('CompressDocument', () {
    test('CompressDocument', () async => await CompressDocumentTests(testContext).testCompressDocument());
    test('CompressDocumentOnline', () async => await CompressDocumentTests(testContext).testCompressDocumentOnline());
  });

  group('ConvertDocument', () {
    test('SaveAs', () async => await ConvertDocumentTests(testContext).testSaveAs());
    test('SaveAsOnline', () async => await ConvertDocumentTests(testContext).testSaveAsOnline());
    test('SaveAsOnlineHtmlMultifile', () async => await ConvertDocumentTests(testContext).testSaveAsOnlineHtmlMultifile());
    test('SaveAsDocx', () async => await ConvertDocumentTests(testContext).testSaveAsDocx());
    test('SaveAsTiff', () async => await ConvertDocumentTests(testContext).testSaveAsTiff());
    test('SaveAsTiffOnline', () async => await ConvertDocumentTests(testContext).testSaveAsTiffOnline());
    test('ConvertDocument', () async => await ConvertDocumentTests(testContext).testConvertDocument());
    test('ConvertDocumentJob', () async => await ConvertDocumentTests(testContext).testConvertDocumentJob());
  });

  group('CustomXmlParts', () {
    test('GetCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlPart());
    test('GetCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlPartOnline());
    test('GetCustomXmlParts', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlParts());
    test('GetCustomXmlPartsOnline', () async => await CustomXmlPartsTests(testContext).testGetCustomXmlPartsOnline());
    test('InsertCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testInsertCustomXmlPart());
    test('InsertCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testInsertCustomXmlPartOnline());
    test('UpdateCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testUpdateCustomXmlPart());
    test('UpdateCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testUpdateCustomXmlPartOnline());
    test('DeleteCustomXmlPart', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlPart());
    test('DeleteCustomXmlPartOnline', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlPartOnline());
    test('DeleteCustomXmlParts', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlParts());
    test('DeleteCustomXmlPartsOnline', () async => await CustomXmlPartsTests(testContext).testDeleteCustomXmlPartsOnline());
  });

  group('Document', () {
    test('GetDocument', () async => await DocumentTests(testContext).testGetDocument());
    test('CreateDocument', () async => await DocumentTests(testContext).testCreateDocument());
  });

  group('DocumentStatistics', () {
    test('GetDocumentStatistics', () async => await DocumentStatisticsTests(testContext).testGetDocumentStatistics());
    test('GetDocumentStatisticsOnline', () async => await DocumentStatisticsTests(testContext).testGetDocumentStatisticsOnline());
  });

  group('DocumentWithFormat', () {
    test('GetDocumentWithFormat', () async => await DocumentWithFormatTests(testContext).testGetDocumentWithFormat());
    test('GetDocumentWithFormatAndOutPath', () async => await DocumentWithFormatTests(testContext).testGetDocumentWithFormatAndOutPath());
  });

  group('LoadWebDocument', () {
    test('LoadWebDocument', () async => await LoadWebDocumentTests(testContext).testLoadWebDocument());
    test('LoadWebDocumentOnline', () async => await LoadWebDocumentTests(testContext).testLoadWebDocumentOnline());
  });

  group('PasswordEncryption', () {
    test('GetPublicKey', () async => await PasswordEncryptionTests(testContext).testGetPublicKey());
  });

  group('Revisions', () {
    test('AcceptAllRevisions', () async => await RevisionsTests(testContext).testAcceptAllRevisions());
    test('AcceptAllRevisionsOnline', () async => await RevisionsTests(testContext).testAcceptAllRevisionsOnline());
    test('RejectAllRevisions', () async => await RevisionsTests(testContext).testRejectAllRevisions());
    test('RejectAllRevisionsOnline', () async => await RevisionsTests(testContext).testRejectAllRevisionsOnline());
    test('GetAllRevisions', () async => await RevisionsTests(testContext).testGetAllRevisions());
    test('GetAllRevisionsOnline', () async => await RevisionsTests(testContext).testGetAllRevisionsOnline());
  });

  group('Signature', () {
    test('GetSignatures', () async => await SignatureTests(testContext).testGetSignatures());
    test('GetSignaturesOnline', () async => await SignatureTests(testContext).testGetSignaturesOnline());
    test('RemoveAllSignatures', () async => await SignatureTests(testContext).testRemoveAllSignatures());
    test('RemoveAllSignaturesOnline', () async => await SignatureTests(testContext).testRemoveAllSignaturesOnline());
    test('SignDocument', () async => await SignatureTests(testContext).testSignDocument());
    test('SignDocumentOnline', () async => await SignatureTests(testContext).testSignDocumentOnline());
  });

  group('SplitDocumentToFormat', () {
    test('SplitDocument', () async => await SplitDocumentToFormatTests(testContext).testSplitDocument());
    test('SplitDocumentOnline', () async => await SplitDocumentToFormatTests(testContext).testSplitDocumentOnline());
  });

  group('DocumentProperties', () {
    test('GetDocumentProperties', () async => await DocumentPropertiesTests(testContext).testGetDocumentProperties());
    test('GetDocumentPropertiesOnline', () async => await DocumentPropertiesTests(testContext).testGetDocumentPropertiesOnline());
    test('GetDocumentProperty', () async => await DocumentPropertiesTests(testContext).testGetDocumentProperty());
    test('GetDocumentPropertyOnline', () async => await DocumentPropertiesTests(testContext).testGetDocumentPropertyOnline());
    test('DeleteDocumentProperty', () async => await DocumentPropertiesTests(testContext).testDeleteDocumentProperty());
    test('DeleteDocumentPropertyOnline', () async => await DocumentPropertiesTests(testContext).testDeleteDocumentPropertyOnline());
    test('UpdateDocumentProperty', () async => await DocumentPropertiesTests(testContext).testUpdateDocumentProperty());
    test('UpdateDocumentPropertyOnline', () async => await DocumentPropertiesTests(testContext).testUpdateDocumentPropertyOnline());
  });

  group('DocumentProtection', () {
    test('ProtectDocument', () async => await DocumentProtectionTests(testContext).testProtectDocument());
    test('ProtectDocumentOnline', () async => await DocumentProtectionTests(testContext).testProtectDocumentOnline());
    test('GetDocumentProtection', () async => await DocumentProtectionTests(testContext).testGetDocumentProtection());
    test('GetDocumentProtectionOnline', () async => await DocumentProtectionTests(testContext).testGetDocumentProtectionOnline());
    test('DeleteUnprotectDocument', () async => await DocumentProtectionTests(testContext).testDeleteUnprotectDocument());
    test('DeleteUnprotectDocumentOnline', () async => await DocumentProtectionTests(testContext).testDeleteUnprotectDocumentOnline());
  });

  group('DrawingObjects', () {
    test('GetDocumentDrawingObjects', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjects());
    test('GetDocumentDrawingObjectsOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectsOnline());
    test('GetDocumentDrawingObjectsWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectsWithoutNodePath());
    test('GetDocumentDrawingObjectByIndex', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndex());
    test('GetDocumentDrawingObjectByIndexOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndexOnline());
    test('GetDocumentDrawingObjectByIndexWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectByIndexWithoutNodePath());
    test('RenderDrawingObject', () async => await DrawingObjectsTests(testContext).testRenderDrawingObject());
    test('RenderDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testRenderDrawingObjectOnline());
    test('RenderDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testRenderDrawingObjectWithoutNodePath());
    test('GetDocumentDrawingObjectImageData', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageData());
    test('GetDocumentDrawingObjectImageDataOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageDataOnline());
    test('GetDocumentDrawingObjectImageDataWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectImageDataWithoutNodePath());
    test('GetDocumentDrawingObjectOleData', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleData());
    test('GetDocumentDrawingObjectOleDataOnline', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleDataOnline());
    test('GetDocumentDrawingObjectOleDataWithoutNodePath', () async => await DrawingObjectsTests(testContext).testGetDocumentDrawingObjectOleDataWithoutNodePath());
    test('InsertDrawingObject', () async => await DrawingObjectsTests(testContext).testInsertDrawingObject());
    test('InsertDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testInsertDrawingObjectOnline());
    test('InsertDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testInsertDrawingObjectWithoutNodePath());
    test('DeleteDrawingObject', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObject());
    test('DeleteDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObjectOnline());
    test('DeleteDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testDeleteDrawingObjectWithoutNodePath());
    test('UpdateDrawingObject', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObject());
    test('UpdateDrawingObjectOnline', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObjectOnline());
    test('UpdateDrawingObjectWithoutNodePath', () async => await DrawingObjectsTests(testContext).testUpdateDrawingObjectWithoutNodePath());
  });

  group('Field', () {
    test('GetFields', () async => await FieldTests(testContext).testGetFields());
    test('GetFieldsOnline', () async => await FieldTests(testContext).testGetFieldsOnline());
    test('GetFieldsWithoutNodePath', () async => await FieldTests(testContext).testGetFieldsWithoutNodePath());
    test('GetField', () async => await FieldTests(testContext).testGetField());
    test('GetFieldOnline', () async => await FieldTests(testContext).testGetFieldOnline());
    test('GetFieldWithoutNodePath', () async => await FieldTests(testContext).testGetFieldWithoutNodePath());
    test('InsertField', () async => await FieldTests(testContext).testInsertField());
    test('InsertFieldOnline', () async => await FieldTests(testContext).testInsertFieldOnline());
    test('InsertFieldWithoutNodePath', () async => await FieldTests(testContext).testInsertFieldWithoutNodePath());
    test('UpdateField', () async => await FieldTests(testContext).testUpdateField());
    test('UpdateFieldOnline', () async => await FieldTests(testContext).testUpdateFieldOnline());
    test('InsertPageNumbers', () async => await FieldTests(testContext).testInsertPageNumbers());
    test('InsertPageNumbersOnline', () async => await FieldTests(testContext).testInsertPageNumbersOnline());
    test('DeleteField', () async => await FieldTests(testContext).testDeleteField());
    test('DeleteFieldOnline', () async => await FieldTests(testContext).testDeleteFieldOnline());
    test('DeleteFieldWithoutNodePath', () async => await FieldTests(testContext).testDeleteFieldWithoutNodePath());
    test('DeleteParagraphFields', () async => await FieldTests(testContext).testDeleteParagraphFields());
    test('DeleteParagraphFieldsWithoutNodePath', () async => await FieldTests(testContext).testDeleteParagraphFieldsWithoutNodePath());
    test('DeleteSectionFields', () async => await FieldTests(testContext).testDeleteSectionFields());
    test('DeleteSectionFieldsWithoutNodePath', () async => await FieldTests(testContext).testDeleteSectionFieldsWithoutNodePath());
    test('DeleteSectionParagraphFields', () async => await FieldTests(testContext).testDeleteSectionParagraphFields());
    test('DeleteDocumentFields', () async => await FieldTests(testContext).testDeleteDocumentFields());
    test('DeleteDocumentFieldsOnline', () async => await FieldTests(testContext).testDeleteDocumentFieldsOnline());
    test('UpdateDocumentFields', () async => await FieldTests(testContext).testUpdateDocumentFields());
    test('UpdateDocumentFieldsOnline', () async => await FieldTests(testContext).testUpdateDocumentFieldsOnline());
  });

  group('FormField', () {
    test('UpdateFormField', () async => await FormFieldTests(testContext).testUpdateFormField());
    test('UpdateFormFieldOnline', () async => await FormFieldTests(testContext).testUpdateFormFieldOnline());
    test('UpdateFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testUpdateFormFieldWithoutNodePath());
    test('GetFormField', () async => await FormFieldTests(testContext).testGetFormField());
    test('GetFormFieldOnline', () async => await FormFieldTests(testContext).testGetFormFieldOnline());
    test('GetFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testGetFormFieldWithoutNodePath());
    test('GetFormFields', () async => await FormFieldTests(testContext).testGetFormFields());
    test('GetFormFieldsOnline', () async => await FormFieldTests(testContext).testGetFormFieldsOnline());
    test('GetFormFieldsWithoutNodePath', () async => await FormFieldTests(testContext).testGetFormFieldsWithoutNodePath());
    test('InsertFormField', () async => await FormFieldTests(testContext).testInsertFormField());
    test('InsertFormFieldOnline', () async => await FormFieldTests(testContext).testInsertFormFieldOnline());
    test('InsertFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testInsertFormFieldWithoutNodePath());
    test('DeleteFormField', () async => await FormFieldTests(testContext).testDeleteFormField());
    test('DeleteFormFieldOnline', () async => await FormFieldTests(testContext).testDeleteFormFieldOnline());
    test('DeleteFormFieldWithoutNodePath', () async => await FormFieldTests(testContext).testDeleteFormFieldWithoutNodePath());
  });

  group('Font', () {
    test('ResetCache', () async => await FontTests(testContext).testResetCache());
    test('GetAvailableFonts', () async => await FontTests(testContext).testGetAvailableFonts());
  });

  group('Footnote', () {
    test('InsertFootnote', () async => await FootnoteTests(testContext).testInsertFootnote());
    test('InsertFootnoteOnline', () async => await FootnoteTests(testContext).testInsertFootnoteOnline());
    test('InsertFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testInsertFootnoteWithoutNodePath());
    test('DeleteFootnote', () async => await FootnoteTests(testContext).testDeleteFootnote());
    test('DeleteFootnoteOnline', () async => await FootnoteTests(testContext).testDeleteFootnoteOnline());
    test('DeleteFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testDeleteFootnoteWithoutNodePath());
    test('GetFootnotes', () async => await FootnoteTests(testContext).testGetFootnotes());
    test('GetFootnotesOnline', () async => await FootnoteTests(testContext).testGetFootnotesOnline());
    test('GetFootnotesWithoutNodePath', () async => await FootnoteTests(testContext).testGetFootnotesWithoutNodePath());
    test('GetFootnote', () async => await FootnoteTests(testContext).testGetFootnote());
    test('GetFootnoteOnline', () async => await FootnoteTests(testContext).testGetFootnoteOnline());
    test('GetFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testGetFootnoteWithoutNodePath());
    test('UpdateFootnote', () async => await FootnoteTests(testContext).testUpdateFootnote());
    test('UpdateFootnoteOnline', () async => await FootnoteTests(testContext).testUpdateFootnoteOnline());
    test('UpdateFootnoteWithoutNodePath', () async => await FootnoteTests(testContext).testUpdateFootnoteWithoutNodePath());
  });

  group('HeaderFooter', () {
    test('GetHeaderFooters', () async => await HeaderFooterTests(testContext).testGetHeaderFooters());
    test('GetHeaderFootersOnline', () async => await HeaderFooterTests(testContext).testGetHeaderFootersOnline());
    test('GetHeaderFooter', () async => await HeaderFooterTests(testContext).testGetHeaderFooter());
    test('GetHeaderFooterOnline', () async => await HeaderFooterTests(testContext).testGetHeaderFooterOnline());
    test('GetHeaderFooterOfSection', () async => await HeaderFooterTests(testContext).testGetHeaderFooterOfSection());
    test('GetHeaderFooterOfSectionOnline', () async => await HeaderFooterTests(testContext).testGetHeaderFooterOfSectionOnline());
    test('DeleteHeaderFooter', () async => await HeaderFooterTests(testContext).testDeleteHeaderFooter());
    test('DeleteHeaderFooterOnline', () async => await HeaderFooterTests(testContext).testDeleteHeaderFooterOnline());
    test('DeleteHeadersFooters', () async => await HeaderFooterTests(testContext).testDeleteHeadersFooters());
    test('DeleteHeadersFootersOnline', () async => await HeaderFooterTests(testContext).testDeleteHeadersFootersOnline());
    test('InsertHeaderFooter', () async => await HeaderFooterTests(testContext).testInsertHeaderFooter());
    test('InsertHeaderFooterOnline', () async => await HeaderFooterTests(testContext).testInsertHeaderFooterOnline());
  });

  group('Hyperlink', () {
    test('GetDocumentHyperlinkByIndex', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinkByIndex());
    test('GetDocumentHyperlinkByIndexOnline', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinkByIndexOnline());
    test('GetDocumentHyperlinks', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinks());
    test('GetDocumentHyperlinksOnline', () async => await HyperlinkTests(testContext).testGetDocumentHyperlinksOnline());
  });

  group('Info', () {
    test('GetInfo', () async => await InfoTests(testContext).testGetInfo());
  });

  group('Lists', () {
    test('GetLists', () async => await ListsTests(testContext).testGetLists());
    test('GetListsOnline', () async => await ListsTests(testContext).testGetListsOnline());
    test('GetList', () async => await ListsTests(testContext).testGetList());
    test('GetListOnline', () async => await ListsTests(testContext).testGetListOnline());
    test('UpdateList', () async => await ListsTests(testContext).testUpdateList());
    test('UpdateListOnline', () async => await ListsTests(testContext).testUpdateListOnline());
    test('UpdateListLevel', () async => await ListsTests(testContext).testUpdateListLevel());
    test('UpdateListLevelOnline', () async => await ListsTests(testContext).testUpdateListLevelOnline());
    test('InsertList', () async => await ListsTests(testContext).testInsertList());
    test('InsertListOnline', () async => await ListsTests(testContext).testInsertListOnline());
  });

  group('Macros', () {
    test('DeleteMacros', () async => await MacrosTests(testContext).testDeleteMacros());
    test('DeleteMacrosOnline', () async => await MacrosTests(testContext).testDeleteMacrosOnline());
  });

  group('ExecuteMailMerge', () {
    test('ExecuteMailMergeOnline', () async => await ExecuteMailMergeTests(testContext).testExecuteMailMergeOnline());
    test('ExecuteMailMerge', () async => await ExecuteMailMergeTests(testContext).testExecuteMailMerge());
  });

  group('ExecuteTemplate', () {
    test('ExecuteTemplate', () async => await ExecuteTemplateTests(testContext).testExecuteTemplate());
    test('ExecuteTemplateOnline', () async => await ExecuteTemplateTests(testContext).testExecuteTemplateOnline());
  });

  group('ExecuteTemplateWithFieldOptions', () {
    test('ExecuteTemplateWithFieldOptions', () async => await ExecuteTemplateWithFieldOptionsTests(testContext).testExecuteTemplateWithFieldOptions());
    test('ExecuteTemplateOnlineWithFieldOptions', () async => await ExecuteTemplateWithFieldOptionsTests(testContext).testExecuteTemplateOnlineWithFieldOptions());
  });

  group('MailMergeFileds', () {
    test('GetDocumentFieldNamesOnline', () async => await MailMergeFiledsTests(testContext).testGetDocumentFieldNamesOnline());
    test('GetDocumentFieldNames', () async => await MailMergeFiledsTests(testContext).testGetDocumentFieldNames());
  });

  group('MathObject', () {
    test('GetOfficeMathObjects', () async => await MathObjectTests(testContext).testGetOfficeMathObjects());
    test('GetOfficeMathObjectsOnline', () async => await MathObjectTests(testContext).testGetOfficeMathObjectsOnline());
    test('GetOfficeMathObjectsWithoutNodePath', () async => await MathObjectTests(testContext).testGetOfficeMathObjectsWithoutNodePath());
    test('GetOfficeMathObject', () async => await MathObjectTests(testContext).testGetOfficeMathObject());
    test('GetOfficeMathObjectOnline', () async => await MathObjectTests(testContext).testGetOfficeMathObjectOnline());
    test('GetOfficeMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testGetOfficeMathObjectWithoutNodePath());
    test('RenderMathObject', () async => await MathObjectTests(testContext).testRenderMathObject());
    test('RenderMathObjectOnline', () async => await MathObjectTests(testContext).testRenderMathObjectOnline());
    test('RenderMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testRenderMathObjectWithoutNodePath());
    test('DeleteOfficeMathObject', () async => await MathObjectTests(testContext).testDeleteOfficeMathObject());
    test('DeleteOfficeMathObjectOnline', () async => await MathObjectTests(testContext).testDeleteOfficeMathObjectOnline());
    test('DeleteOfficeMathObjectWithoutNodePath', () async => await MathObjectTests(testContext).testDeleteOfficeMathObjectWithoutNodePath());
    test('DeleteOfficeMathObjects', () async => await MathObjectTests(testContext).testDeleteOfficeMathObjects());
    test('DeleteOfficeMathObjectsOnline', () async => await MathObjectTests(testContext).testDeleteOfficeMathObjectsOnline());
  });

  group('PageSetup', () {
    test('GetSectionPageSetup', () async => await PageSetupTests(testContext).testGetSectionPageSetup());
    test('GetSectionPageSetupOnline', () async => await PageSetupTests(testContext).testGetSectionPageSetupOnline());
    test('UpdateSectionPageSetup', () async => await PageSetupTests(testContext).testUpdateSectionPageSetup());
    test('UpdateSectionPageSetupOnline', () async => await PageSetupTests(testContext).testUpdateSectionPageSetupOnline());
    test('GetRenderPage', () async => await PageSetupTests(testContext).testGetRenderPage());
    test('GetRenderPageOnline', () async => await PageSetupTests(testContext).testGetRenderPageOnline());
  });

  group('Paragraph', () {
    test('GetDocumentParagraphByIndex', () async => await ParagraphTests(testContext).testGetDocumentParagraphByIndex());
    test('GetDocumentParagraphOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphOnline());
    test('GetDocumentParagraphByIndexWithoutNodePath', () async => await ParagraphTests(testContext).testGetDocumentParagraphByIndexWithoutNodePath());
    test('GetDocumentParagraphs', () async => await ParagraphTests(testContext).testGetDocumentParagraphs());
    test('GetDocumentParagraphsOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphsOnline());
    test('GetDocumentParagraphsWithoutNodePath', () async => await ParagraphTests(testContext).testGetDocumentParagraphsWithoutNodePath());
    test('GetDocumentParagraphRun', () async => await ParagraphTests(testContext).testGetDocumentParagraphRun());
    test('GetDocumentParagraphRunOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphRunOnline());
    test('GetDocumentParagraphRunFont', () async => await ParagraphTests(testContext).testGetDocumentParagraphRunFont());
    test('GetDocumentParagraphRunFontOnline', () async => await ParagraphTests(testContext).testGetDocumentParagraphRunFontOnline());
    test('GetParagraphRuns', () async => await ParagraphTests(testContext).testGetParagraphRuns());
    test('GetParagraphRunsOnline', () async => await ParagraphTests(testContext).testGetParagraphRunsOnline());
    test('UpdateRunFont', () async => await ParagraphTests(testContext).testUpdateRunFont());
    test('UpdateRunFontOnline', () async => await ParagraphTests(testContext).testUpdateRunFontOnline());
    test('InsertParagraph', () async => await ParagraphTests(testContext).testInsertParagraph());
    test('InsertParagraphOnline', () async => await ParagraphTests(testContext).testInsertParagraphOnline());
    test('InsertParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testInsertParagraphWithoutNodePath());
    test('RenderParagraph', () async => await ParagraphTests(testContext).testRenderParagraph());
    test('RenderParagraphOnline', () async => await ParagraphTests(testContext).testRenderParagraphOnline());
    test('RenderParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testRenderParagraphWithoutNodePath());
    test('GetParagraphFormat', () async => await ParagraphTests(testContext).testGetParagraphFormat());
    test('GetParagraphFormatOnline', () async => await ParagraphTests(testContext).testGetParagraphFormatOnline());
    test('GetParagraphFormatWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphFormatWithoutNodePath());
    test('UpdateParagraphFormat', () async => await ParagraphTests(testContext).testUpdateParagraphFormat());
    test('UpdateParagraphFormatOnline', () async => await ParagraphTests(testContext).testUpdateParagraphFormatOnline());
    test('DeleteParagraph', () async => await ParagraphTests(testContext).testDeleteParagraph());
    test('DeleteParagraphOnline', () async => await ParagraphTests(testContext).testDeleteParagraphOnline());
    test('DeleteParagraphWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphWithoutNodePath());
    test('GetParagraphListFormat', () async => await ParagraphTests(testContext).testGetParagraphListFormat());
    test('GetParagraphListFormatOnline', () async => await ParagraphTests(testContext).testGetParagraphListFormatOnline());
    test('GetParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphListFormatWithoutNodePath());
    test('UpdateParagraphListFormat', () async => await ParagraphTests(testContext).testUpdateParagraphListFormat());
    test('UpdateParagraphListFormatOnline', () async => await ParagraphTests(testContext).testUpdateParagraphListFormatOnline());
    test('UpdateParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testUpdateParagraphListFormatWithoutNodePath());
    test('DeleteParagraphListFormat', () async => await ParagraphTests(testContext).testDeleteParagraphListFormat());
    test('DeleteParagraphListFormatOnline', () async => await ParagraphTests(testContext).testDeleteParagraphListFormatOnline());
    test('DeleteParagraphListFormatWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphListFormatWithoutNodePath());
    test('GetParagraphTabStops', () async => await ParagraphTests(testContext).testGetParagraphTabStops());
    test('GetParagraphTabStopsOnline', () async => await ParagraphTests(testContext).testGetParagraphTabStopsOnline());
    test('GetParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testGetParagraphTabStopsWithoutNodePath());
    test('InsertParagraphTabStops', () async => await ParagraphTests(testContext).testInsertParagraphTabStops());
    test('InsertParagraphTabStopsOnline', () async => await ParagraphTests(testContext).testInsertParagraphTabStopsOnline());
    test('InsertParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testInsertParagraphTabStopsWithoutNodePath());
    test('DeleteAllParagraphTabStops', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStops());
    test('DeleteAllParagraphTabStopsOnline', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStopsOnline());
    test('DeleteAllParagraphTabStopsWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteAllParagraphTabStopsWithoutNodePath());
    test('DeleteParagraphTabStop', () async => await ParagraphTests(testContext).testDeleteParagraphTabStop());
    test('DeleteParagraphTabStopOnline', () async => await ParagraphTests(testContext).testDeleteParagraphTabStopOnline());
    test('DeleteParagraphTabStopWithoutNodePath', () async => await ParagraphTests(testContext).testDeleteParagraphTabStopWithoutNodePath());
  });

  group('Range', () {
    test('GetRangeText', () async => await RangeTests(testContext).testGetRangeText());
    test('GetRangeTextOnline', () async => await RangeTests(testContext).testGetRangeTextOnline());
    test('RemoveRange', () async => await RangeTests(testContext).testRemoveRange());
    test('RemoveRangeOnline', () async => await RangeTests(testContext).testRemoveRangeOnline());
    test('SaveAsRange', () async => await RangeTests(testContext).testSaveAsRange());
    test('SaveAsRangeOnline', () async => await RangeTests(testContext).testSaveAsRangeOnline());
    test('ReplaceWithText', () async => await RangeTests(testContext).testReplaceWithText());
    test('ReplaceWithTextOnline', () async => await RangeTests(testContext).testReplaceWithTextOnline());
    test('TranslateNodeId', () async => await RangeTests(testContext).testTranslateNodeId());
    test('TranslateNodeIdOnline', () async => await RangeTests(testContext).testTranslateNodeIdOnline());
  });

  group('BuildReport', () {
    test('BuildReportOnline', () async => await BuildReportTests(testContext).testBuildReportOnline());
    test('BuildReport', () async => await BuildReportTests(testContext).testBuildReport());
  });

  group('Run', () {
    test('UpdateRun', () async => await RunTests(testContext).testUpdateRun());
    test('UpdateRunOnline', () async => await RunTests(testContext).testUpdateRunOnline());
    test('InsertRun', () async => await RunTests(testContext).testInsertRun());
    test('InsertRunOnline', () async => await RunTests(testContext).testInsertRunOnline());
    test('DeleteRun', () async => await RunTests(testContext).testDeleteRun());
    test('DeleteRunOnline', () async => await RunTests(testContext).testDeleteRunOnline());
  });

  group('Section', () {
    test('GetSection', () async => await SectionTests(testContext).testGetSection());
    test('GetSectionOnline', () async => await SectionTests(testContext).testGetSectionOnline());
    test('GetSections', () async => await SectionTests(testContext).testGetSections());
    test('GetSectionsOnline', () async => await SectionTests(testContext).testGetSectionsOnline());
    test('DeleteSection', () async => await SectionTests(testContext).testDeleteSection());
    test('DeleteSectionOnline', () async => await SectionTests(testContext).testDeleteSectionOnline());
    test('MergeWithNext', () async => await SectionTests(testContext).testMergeWithNext());
    test('MergeWithNextOnline', () async => await SectionTests(testContext).testMergeWithNextOnline());
    test('InsertSection', () async => await SectionTests(testContext).testInsertSection());
    test('InsertSectionOnline', () async => await SectionTests(testContext).testInsertSectionOnline());
    test('LinkHeaderFootersToPrevious', () async => await SectionTests(testContext).testLinkHeaderFootersToPrevious());
  });

  group('File', () {
    test('UploadFile', () async => await FileTests(testContext).testUploadFile());
    test('CopyFile', () async => await FileTests(testContext).testCopyFile());
    test('MoveFile', () async => await FileTests(testContext).testMoveFile());
    test('DeleteFile', () async => await FileTests(testContext).testDeleteFile());
    test('DownloadFile', () async => await FileTests(testContext).testDownloadFile());
  });

  group('Folder', () {
    test('CreateFolder', () async => await FolderTests(testContext).testCreateFolder());
    test('DeleteFolder', () async => await FolderTests(testContext).testDeleteFolder());
    test('GetFilesList', () async => await FolderTests(testContext).testGetFilesList());
    test('CopyFolder', () async => await FolderTests(testContext).testCopyFolder());
    test('MoveFolder', () async => await FolderTests(testContext).testMoveFolder());
  });

  group('StructuredDocumentTag', () {
    test('GetStructuredDocumentTags', () async => await StructuredDocumentTagTests(testContext).testGetStructuredDocumentTags());
    test('GetStructuredDocumentTagsOnline', () async => await StructuredDocumentTagTests(testContext).testGetStructuredDocumentTagsOnline());
    test('GetStructuredDocumentTag', () async => await StructuredDocumentTagTests(testContext).testGetStructuredDocumentTag());
    test('GetStructuredDocumentTagOnline', () async => await StructuredDocumentTagTests(testContext).testGetStructuredDocumentTagOnline());
    test('InsertStructuredDocumentTag', () async => await StructuredDocumentTagTests(testContext).testInsertStructuredDocumentTag());
    test('InsertStructuredDocumentTagOnline', () async => await StructuredDocumentTagTests(testContext).testInsertStructuredDocumentTagOnline());
    test('DeleteStructuredDocumentTag', () async => await StructuredDocumentTagTests(testContext).testDeleteStructuredDocumentTag());
    test('DeleteStructuredDocumentTagOnline', () async => await StructuredDocumentTagTests(testContext).testDeleteStructuredDocumentTagOnline());
    test('UpdateStructuredDocumentTag', () async => await StructuredDocumentTagTests(testContext).testUpdateStructuredDocumentTag());
    test('UpdateStructuredDocumentTagOnline', () async => await StructuredDocumentTagTests(testContext).testUpdateStructuredDocumentTagOnline());
  });

  group('Styles', () {
    test('GetStyles', () async => await StylesTests(testContext).testGetStyles());
    test('GetStylesOnline', () async => await StylesTests(testContext).testGetStylesOnline());
    test('GetStyle', () async => await StylesTests(testContext).testGetStyle());
    test('GetStyleOnline', () async => await StylesTests(testContext).testGetStyleOnline());
    test('UpdateStyle', () async => await StylesTests(testContext).testUpdateStyle());
    test('UpdateStyleOnline', () async => await StylesTests(testContext).testUpdateStyleOnline());
    test('InsertStyle', () async => await StylesTests(testContext).testInsertStyle());
    test('InsertStyleOnline', () async => await StylesTests(testContext).testInsertStyleOnline());
    test('CopyStyle', () async => await StylesTests(testContext).testCopyStyle());
    test('CopyStyleOnline', () async => await StylesTests(testContext).testCopyStyleOnline());
    test('GetStyleFromDocumentElement', () async => await StylesTests(testContext).testGetStyleFromDocumentElement());
    test('GetStyleFromDocumentElementOnline', () async => await StylesTests(testContext).testGetStyleFromDocumentElementOnline());
    test('ApplyStyleToDocumentElement', () async => await StylesTests(testContext).testApplyStyleToDocumentElement());
    test('ApplyStyleToDocumentElementOnline', () async => await StylesTests(testContext).testApplyStyleToDocumentElementOnline());
    test('CopyStylesFromTemplate', () async => await StylesTests(testContext).testCopyStylesFromTemplate());
  });

  group('Table', () {
    test('GetTables', () async => await TableTests(testContext).testGetTables());
    test('GetTablesOnline', () async => await TableTests(testContext).testGetTablesOnline());
    test('GetTablesWithoutNodePath', () async => await TableTests(testContext).testGetTablesWithoutNodePath());
    test('GetTable', () async => await TableTests(testContext).testGetTable());
    test('GetTableOnline', () async => await TableTests(testContext).testGetTableOnline());
    test('GetTableWithoutNodePath', () async => await TableTests(testContext).testGetTableWithoutNodePath());
    test('DeleteTable', () async => await TableTests(testContext).testDeleteTable());
    test('DeleteTableOnline', () async => await TableTests(testContext).testDeleteTableOnline());
    test('DeleteTableWithoutNodePath', () async => await TableTests(testContext).testDeleteTableWithoutNodePath());
    test('InsertTable', () async => await TableTests(testContext).testInsertTable());
    test('InsertTableOnline', () async => await TableTests(testContext).testInsertTableOnline());
    test('InsertTableWithoutNodePath', () async => await TableTests(testContext).testInsertTableWithoutNodePath());
    test('GetTableProperties', () async => await TableTests(testContext).testGetTableProperties());
    test('GetTablePropertiesOnline', () async => await TableTests(testContext).testGetTablePropertiesOnline());
    test('GetTablePropertiesWithoutNodePath', () async => await TableTests(testContext).testGetTablePropertiesWithoutNodePath());
    test('UpdateTableProperties', () async => await TableTests(testContext).testUpdateTableProperties());
    test('UpdateTablePropertiesOnline', () async => await TableTests(testContext).testUpdateTablePropertiesOnline());
    test('UpdateTablePropertiesWithoutNodePath', () async => await TableTests(testContext).testUpdateTablePropertiesWithoutNodePath());
    test('GetTableRow', () async => await TableTests(testContext).testGetTableRow());
    test('GetTableRowOnline', () async => await TableTests(testContext).testGetTableRowOnline());
    test('DeleteTableRow', () async => await TableTests(testContext).testDeleteTableRow());
    test('DeleteTableRowOnline', () async => await TableTests(testContext).testDeleteTableRowOnline());
    test('InsertTableRow', () async => await TableTests(testContext).testInsertTableRow());
    test('InsertTableRowOnline', () async => await TableTests(testContext).testInsertTableRowOnline());
    test('GetTableRowFormat', () async => await TableTests(testContext).testGetTableRowFormat());
    test('GetTableRowFormatOnline', () async => await TableTests(testContext).testGetTableRowFormatOnline());
    test('UpdateTableRowFormat', () async => await TableTests(testContext).testUpdateTableRowFormat());
    test('UpdateTableRowFormatOnline', () async => await TableTests(testContext).testUpdateTableRowFormatOnline());
    test('GetTableCell', () async => await TableTests(testContext).testGetTableCell());
    test('GetTableCellOnline', () async => await TableTests(testContext).testGetTableCellOnline());
    test('DeleteTableCell', () async => await TableTests(testContext).testDeleteTableCell());
    test('DeleteTableCellOnline', () async => await TableTests(testContext).testDeleteTableCellOnline());
    test('InsertTableCell', () async => await TableTests(testContext).testInsertTableCell());
    test('InsertTableCellOnline', () async => await TableTests(testContext).testInsertTableCellOnline());
    test('GetTableCellFormat', () async => await TableTests(testContext).testGetTableCellFormat());
    test('GetTableCellFormatOnline', () async => await TableTests(testContext).testGetTableCellFormatOnline());
    test('UpdateTableCellFormat', () async => await TableTests(testContext).testUpdateTableCellFormat());
    test('UpdateTableCellFormatOnline', () async => await TableTests(testContext).testUpdateTableCellFormatOnline());
    test('RenderTable', () async => await TableTests(testContext).testRenderTable());
    test('RenderTableOnline', () async => await TableTests(testContext).testRenderTableOnline());
    test('RenderTableWithoutNodePath', () async => await TableTests(testContext).testRenderTableWithoutNodePath());
  });

  group('TableBorder', () {
    test('GetBorders', () async => await TableBorderTests(testContext).testGetBorders());
    test('GetBordersOnline', () async => await TableBorderTests(testContext).testGetBordersOnline());
    test('GetBorder', () async => await TableBorderTests(testContext).testGetBorder());
    test('GetBorderOnline', () async => await TableBorderTests(testContext).testGetBorderOnline());
    test('DeleteBorders', () async => await TableBorderTests(testContext).testDeleteBorders());
    test('DeleteBordersOnline', () async => await TableBorderTests(testContext).testDeleteBordersOnline());
    test('DeleteBorder', () async => await TableBorderTests(testContext).testDeleteBorder());
    test('DeleteBorderOnline', () async => await TableBorderTests(testContext).testDeleteBorderOnline());
    test('UpdateBorder', () async => await TableBorderTests(testContext).testUpdateBorder());
    test('UpdateBorderOnline', () async => await TableBorderTests(testContext).testUpdateBorderOnline());
  });

  group('Text', () {
    test('ReplaceText', () async => await TextTests(testContext).testReplaceText());
    test('ReplaceTextOnline', () async => await TextTests(testContext).testReplaceTextOnline());
    test('Search', () async => await TextTests(testContext).testSearch());
    test('SearchOnline', () async => await TextTests(testContext).testSearchOnline());
  });

  group('Watermark', () {
    test('InsertWatermarkText', () async => await WatermarkTests(testContext).testInsertWatermarkText());
    test('InsertWatermarkTextOnline', () async => await WatermarkTests(testContext).testInsertWatermarkTextOnline());
    test('InsertWatermarkImage', () async => await WatermarkTests(testContext).testInsertWatermarkImage());
    test('InsertWatermarkImageOnline', () async => await WatermarkTests(testContext).testInsertWatermarkImageOnline());
    test('InsertWatermarkImageDeprecated', () async => await WatermarkTests(testContext).testInsertWatermarkImageDeprecated());
    test('InsertWatermarkImageDeprecatedOnline', () async => await WatermarkTests(testContext).testInsertWatermarkImageDeprecatedOnline());
    test('InsertWatermarkTextDeprecated', () async => await WatermarkTests(testContext).testInsertWatermarkTextDeprecated());
    test('InsertWatermarkTextDeprecatedOnline', () async => await WatermarkTests(testContext).testInsertWatermarkTextDeprecatedOnline());
    test('DeleteWatermark', () async => await WatermarkTests(testContext).testDeleteWatermark());
    test('DeleteWatermarkOnline', () async => await WatermarkTests(testContext).testDeleteWatermarkOnline());
  });

  group('Examples', () {
    late ExamplesTests exampleTests;
    setUpAll(() async {
      exampleTests = ExamplesTests(testContext.configuration);
      await exampleTests.init();
    });
    test('AcceptAllRevisions', () async => await exampleTests.acceptAllRevisions());
    test('AcceptAllRevisionsOnline', () async => await exampleTests.acceptAllRevisionsOnline());
  });
}
