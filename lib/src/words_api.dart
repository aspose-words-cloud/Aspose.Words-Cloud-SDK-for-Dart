/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="words_api.dart">
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

library aspose_words_cloud;

import 'dart:typed_data';

import './api_client.dart';
import '../aspose_words_cloud.dart';

/// Aspose.Words for Cloud API.
class WordsApi {
  late ApiClient _apiClient;
  WordsApi(final Configuration configuration) {
    _apiClient = ApiClient(configuration, getPublicKey);
  }

  /// Accepts all the revisions in the document.
  Future< RevisionsModificationResponse > acceptAllRevisions(AcceptAllRevisionsRequest request) async {
    return await _apiClient.call(request) as RevisionsModificationResponse;
  }

  /// Accepts all the revisions in the document.
  Future< AcceptAllRevisionsOnlineResponse > acceptAllRevisionsOnline(AcceptAllRevisionsOnlineRequest request) async {
    return await _apiClient.call(request) as AcceptAllRevisionsOnlineResponse;
  }

  /// Appends documents to the original document.
  Future< DocumentResponse > appendDocument(AppendDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Appends documents to the original document.
  Future< JobHandler< DocumentResponse > > appendDocumentJob(AppendDocumentJobRequest request) async {
    var _info = await _apiClient.call(request) as JobInfo;
    return JobHandler< DocumentResponse >(_apiClient, request.getOriginalRequest(), _info);
  }

  /// Appends documents to the original document.
  Future< AppendDocumentOnlineResponse > appendDocumentOnline(AppendDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as AppendDocumentOnlineResponse;
  }

  /// Appends documents to the original document.
  Future< JobHandler< AppendDocumentOnlineResponse > > appendDocumentOnlineJob(AppendDocumentOnlineJobRequest request) async {
    var _info = await _apiClient.call(request) as JobInfo;
    return JobHandler< AppendDocumentOnlineResponse >(_apiClient, request.getOriginalRequest(), _info);
  }

  /// Applies a style to the document node.
  Future< WordsResponse > applyStyleToDocumentElement(ApplyStyleToDocumentElementRequest request) async {
    return await _apiClient.call(request) as WordsResponse;
  }

  /// Applies a style to the document node.
  Future< ApplyStyleToDocumentElementOnlineResponse > applyStyleToDocumentElementOnline(ApplyStyleToDocumentElementOnlineRequest request) async {
    return await _apiClient.call(request) as ApplyStyleToDocumentElementOnlineResponse;
  }

  /// Executes the report generation process using the specified document template and the external data source in XML, JSON or CSV format.
  Future< DocumentResponse > buildReport(BuildReportRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Executes the report generation process online using the specified document template and the external data source in XML, JSON or CSV format.
  Future< ByteData > buildReportOnline(BuildReportOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Compares two documents.
  Future< DocumentResponse > compareDocument(CompareDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Compares two documents.
  Future< CompareDocumentOnlineResponse > compareDocumentOnline(CompareDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as CompareDocumentOnlineResponse;
  }

  /// Compress and resize images inside the document.
  /// The default settings allows to reduce the size of the document without any visible degradation of images quality.
  Future< CompressResponse > compressDocument(CompressDocumentRequest request) async {
    return await _apiClient.call(request) as CompressResponse;
  }

  /// Compress and resize images inside the document.
  /// The default settings allows to reduce the size of the document without any visible degradation of images quality.
  Future< CompressDocumentOnlineResponse > compressDocumentOnline(CompressDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as CompressDocumentOnlineResponse;
  }

  /// Converts a document on a local drive to the specified format.
  Future< ByteData > convertDocument(ConvertDocumentRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Converts a document on a local drive to the specified format.
  Future< JobHandler< ByteData > > convertDocumentJob(ConvertDocumentJobRequest request) async {
    var _info = await _apiClient.call(request) as JobInfo;
    return JobHandler< ByteData >(_apiClient, request.getOriginalRequest(), _info);
  }

  /// Copy file.
  Future< void > copyFile(CopyFileRequest request) async {
    await _apiClient.call(request);
  }

  /// Copy folder.
  Future< void > copyFolder(CopyFolderRequest request) async {
    await _apiClient.call(request);
  }

  /// Makes a copy of the style in the document.
  Future< StyleResponse > copyStyle(CopyStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Makes a copy of the style in the document.
  Future< CopyStyleOnlineResponse > copyStyleOnline(CopyStyleOnlineRequest request) async {
    return await _apiClient.call(request) as CopyStyleOnlineResponse;
  }

  /// Copies styles from the origin document to the target document.
  Future< WordsResponse > copyStylesFromTemplate(CopyStylesFromTemplateRequest request) async {
    return await _apiClient.call(request) as WordsResponse;
  }

  /// Creates a new document in cloud storage in the format, determined by the file extension.
  /// Supported all save format extensions.
  Future< DocumentResponse > createDocument(CreateDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Create the folder.
  Future< void > createFolder(CreateFolderRequest request) async {
    await _apiClient.call(request);
  }

  /// Adds a new or updates an existing document property.
  Future< DocumentPropertyResponse > createOrUpdateDocumentProperty(CreateOrUpdateDocumentPropertyRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Adds a new or updates an existing document property.
  Future< CreateOrUpdateDocumentPropertyOnlineResponse > createOrUpdateDocumentPropertyOnline(CreateOrUpdateDocumentPropertyOnlineRequest request) async {
    return await _apiClient.call(request) as CreateOrUpdateDocumentPropertyOnlineResponse;
  }

  /// Removes paragraph tab stops from the document node.
  Future< TabStopsResponse > deleteAllParagraphTabStops(DeleteAllParagraphTabStopsRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Removes paragraph tab stops from the document node.
  Future< DeleteAllParagraphTabStopsOnlineResponse > deleteAllParagraphTabStopsOnline(DeleteAllParagraphTabStopsOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteAllParagraphTabStopsOnlineResponse;
  }

  /// Removes a bookmark from the document.
  Future< void > deleteBookmark(DeleteBookmarkRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a bookmark from the document.
  Future< Map<String, ByteData> > deleteBookmarkOnline(DeleteBookmarkOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes all bookmarks from the document.
  Future< void > deleteBookmarks(DeleteBookmarksRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes all bookmarks from the document.
  Future< Map<String, ByteData> > deleteBookmarksOnline(DeleteBookmarksOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a border from the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BorderResponse > deleteBorder(DeleteBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Removes a border from the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< DeleteBorderOnlineResponse > deleteBorderOnline(DeleteBorderOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteBorderOnlineResponse;
  }

  /// Removes borders from the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BordersResponse > deleteBorders(DeleteBordersRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Removes borders from the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< DeleteBordersOnlineResponse > deleteBordersOnline(DeleteBordersOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteBordersOnlineResponse;
  }

  /// Removes a comment from the document.
  Future< void > deleteComment(DeleteCommentRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a comment from the document.
  Future< Map<String, ByteData> > deleteCommentOnline(DeleteCommentOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes all comments from the document.
  Future< void > deleteComments(DeleteCommentsRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes all comments from the document.
  Future< Map<String, ByteData> > deleteCommentsOnline(DeleteCommentsOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes the custom xml part from the document.
  Future< void > deleteCustomXmlPart(DeleteCustomXmlPartRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes the custom xml part from the document.
  Future< Map<String, ByteData> > deleteCustomXmlPartOnline(DeleteCustomXmlPartOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes all custom xml parts from the document.
  Future< void > deleteCustomXmlParts(DeleteCustomXmlPartsRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes all custom xml parts from the document.
  Future< Map<String, ByteData> > deleteCustomXmlPartsOnline(DeleteCustomXmlPartsOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a document property.
  Future< void > deleteDocumentProperty(DeleteDocumentPropertyRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a document property.
  Future< Map<String, ByteData> > deleteDocumentPropertyOnline(DeleteDocumentPropertyOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a DrawingObject from the document node.
  Future< void > deleteDrawingObject(DeleteDrawingObjectRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a DrawingObject from the document node.
  Future< Map<String, ByteData> > deleteDrawingObjectOnline(DeleteDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a field from the document node.
  Future< void > deleteField(DeleteFieldRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a field from the document node.
  Future< Map<String, ByteData> > deleteFieldOnline(DeleteFieldOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes fields from the document node.
  Future< void > deleteFields(DeleteFieldsRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes fields from the document node.
  Future< Map<String, ByteData> > deleteFieldsOnline(DeleteFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Delete file.
  Future< void > deleteFile(DeleteFileRequest request) async {
    await _apiClient.call(request);
  }

  /// Delete folder.
  Future< void > deleteFolder(DeleteFolderRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a footnote from the document node.
  Future< void > deleteFootnote(DeleteFootnoteRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a footnote from the document node.
  Future< Map<String, ByteData> > deleteFootnoteOnline(DeleteFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a form field from the document node.
  Future< void > deleteFormField(DeleteFormFieldRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a form field from the document node.
  Future< Map<String, ByteData> > deleteFormFieldOnline(DeleteFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a HeaderFooter object from the document section.
  Future< void > deleteHeaderFooter(DeleteHeaderFooterRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a HeaderFooter object from the document section.
  Future< Map<String, ByteData> > deleteHeaderFooterOnline(DeleteHeaderFooterOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes HeaderFooter objects from the document section.
  Future< void > deleteHeadersFooters(DeleteHeadersFootersRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes HeaderFooter objects from the document section.
  Future< Map<String, ByteData> > deleteHeadersFootersOnline(DeleteHeadersFootersOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes macros from the document.
  Future< void > deleteMacros(DeleteMacrosRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes macros from the document.
  Future< Map<String, ByteData> > deleteMacrosOnline(DeleteMacrosOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes an OfficeMath object from the document node.
  Future< void > deleteOfficeMathObject(DeleteOfficeMathObjectRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes an OfficeMath object from the document node.
  Future< Map<String, ByteData> > deleteOfficeMathObjectOnline(DeleteOfficeMathObjectOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes all office math objects from the document.
  Future< void > deleteOfficeMathObjects(DeleteOfficeMathObjectsRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes all office math objects from the document.
  Future< Map<String, ByteData> > deleteOfficeMathObjectsOnline(DeleteOfficeMathObjectsOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a paragraph from the document node.
  Future< void > deleteParagraph(DeleteParagraphRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes the formatting properties of a paragraph list from the document node.
  Future< ParagraphListFormatResponse > deleteParagraphListFormat(DeleteParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Removes the formatting properties of a paragraph list from the document node.
  Future< DeleteParagraphListFormatOnlineResponse > deleteParagraphListFormatOnline(DeleteParagraphListFormatOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteParagraphListFormatOnlineResponse;
  }

  /// Removes a paragraph from the document node.
  Future< Map<String, ByteData> > deleteParagraphOnline(DeleteParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a paragraph tab stop from the document node.
  Future< TabStopsResponse > deleteParagraphTabStop(DeleteParagraphTabStopRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Removes a paragraph tab stop from the document node.
  Future< DeleteParagraphTabStopOnlineResponse > deleteParagraphTabStopOnline(DeleteParagraphTabStopOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteParagraphTabStopOnlineResponse;
  }

  /// Removes a Run object from the paragraph.
  Future< void > deleteRun(DeleteRunRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a Run object from the paragraph.
  Future< Map<String, ByteData> > deleteRunOnline(DeleteRunOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a section from the document.
  Future< void > deleteSection(DeleteSectionRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a section from the document.
  Future< Map<String, ByteData> > deleteSectionOnline(DeleteSectionOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a StructuredDocumentTag (SDT) from the document node.
  Future< void > deleteStructuredDocumentTag(DeleteStructuredDocumentTagRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a StructuredDocumentTag (SDT) from the document node.
  Future< Map<String, ByteData> > deleteStructuredDocumentTagOnline(DeleteStructuredDocumentTagOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a table from the document node.
  Future< void > deleteTable(DeleteTableRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a cell from the table row.
  Future< void > deleteTableCell(DeleteTableCellRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a cell from the table row.
  Future< Map<String, ByteData> > deleteTableCellOnline(DeleteTableCellOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a table from the document node.
  Future< Map<String, ByteData> > deleteTableOnline(DeleteTableOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a row from the table.
  Future< void > deleteTableRow(DeleteTableRowRequest request) async {
    await _apiClient.call(request);
  }

  /// Removes a row from the table.
  Future< Map<String, ByteData> > deleteTableRowOnline(DeleteTableRowOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Removes a watermark from the document.
  Future< DocumentResponse > deleteWatermark(DeleteWatermarkRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Removes a watermark from the document.
  Future< DeleteWatermarkOnlineResponse > deleteWatermarkOnline(DeleteWatermarkOnlineRequest request) async {
    return await _apiClient.call(request) as DeleteWatermarkOnlineResponse;
  }

  /// Download file.
  Future< ByteData > downloadFile(DownloadFileRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Executes a Mail Merge operation.
  Future< DocumentResponse > executeMailMerge(ExecuteMailMergeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Executes a Mail Merge operation.
  Future< JobHandler< DocumentResponse > > executeMailMergeJob(ExecuteMailMergeJobRequest request) async {
    var _info = await _apiClient.call(request) as JobInfo;
    return JobHandler< DocumentResponse >(_apiClient, request.getOriginalRequest(), _info);
  }

  /// Executes a Mail Merge operation online.
  Future< ByteData > executeMailMergeOnline(ExecuteMailMergeOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Executes a Mail Merge operation online.
  Future< JobHandler< ByteData > > executeMailMergeOnlineJob(ExecuteMailMergeOnlineJobRequest request) async {
    var _info = await _apiClient.call(request) as JobInfo;
    return JobHandler< ByteData >(_apiClient, request.getOriginalRequest(), _info);
  }

  /// Get all information about revisions.
  Future< RevisionsResponse > getAllRevisions(GetAllRevisionsRequest request) async {
    return await _apiClient.call(request) as RevisionsResponse;
  }

  /// Get all information about revisions.
  Future< RevisionsResponse > getAllRevisionsOnline(GetAllRevisionsOnlineRequest request) async {
    return await _apiClient.call(request) as RevisionsResponse;
  }

  /// Reads available fonts from the document.
  Future< AvailableFontsResponse > getAvailableFonts(GetAvailableFontsRequest request) async {
    return await _apiClient.call(request) as AvailableFontsResponse;
  }

  /// Reads a bookmark, specified by name, from the document.
  Future< BookmarkResponse > getBookmarkByName(GetBookmarkByNameRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Reads a bookmark, specified by name, from the document.
  Future< BookmarkResponse > getBookmarkByNameOnline(GetBookmarkByNameOnlineRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Reads bookmarks from the document.
  Future< BookmarksResponse > getBookmarks(GetBookmarksRequest request) async {
    return await _apiClient.call(request) as BookmarksResponse;
  }

  /// Reads bookmarks from the document.
  Future< BookmarksResponse > getBookmarksOnline(GetBookmarksOnlineRequest request) async {
    return await _apiClient.call(request) as BookmarksResponse;
  }

  /// Reads a border from the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BorderResponse > getBorder(GetBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Reads a border from the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BorderResponse > getBorderOnline(GetBorderOnlineRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Reads borders from the document node.
  Future< BordersResponse > getBorders(GetBordersRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Reads borders from the document node.
  Future< BordersResponse > getBordersOnline(GetBordersOnlineRequest request) async {
    return await _apiClient.call(request) as BordersResponse;
  }

  /// Reads a comment from the document.
  Future< CommentResponse > getComment(GetCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Reads a comment from the document.
  Future< CommentResponse > getCommentOnline(GetCommentOnlineRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Reads comments from the document.
  Future< CommentsResponse > getComments(GetCommentsRequest request) async {
    return await _apiClient.call(request) as CommentsResponse;
  }

  /// Reads comments from the document.
  Future< CommentsResponse > getCommentsOnline(GetCommentsOnlineRequest request) async {
    return await _apiClient.call(request) as CommentsResponse;
  }

  /// Reads the custom xml part from the document.
  Future< CustomXmlPartResponse > getCustomXmlPart(GetCustomXmlPartRequest request) async {
    return await _apiClient.call(request) as CustomXmlPartResponse;
  }

  /// Reads the custom xml part from the document.
  Future< CustomXmlPartResponse > getCustomXmlPartOnline(GetCustomXmlPartOnlineRequest request) async {
    return await _apiClient.call(request) as CustomXmlPartResponse;
  }

  /// Reads custom xml parts from the document.
  Future< CustomXmlPartsResponse > getCustomXmlParts(GetCustomXmlPartsRequest request) async {
    return await _apiClient.call(request) as CustomXmlPartsResponse;
  }

  /// Reads custom xml parts from the document.
  Future< CustomXmlPartsResponse > getCustomXmlPartsOnline(GetCustomXmlPartsOnlineRequest request) async {
    return await _apiClient.call(request) as CustomXmlPartsResponse;
  }

  /// Reads common information from the document.
  Future< DocumentResponse > getDocument(GetDocumentRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Reads a DrawingObject from the document node.
  Future< DrawingObjectResponse > getDocumentDrawingObjectByIndex(GetDocumentDrawingObjectByIndexRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Reads a DrawingObject from the document node.
  Future< DrawingObjectResponse > getDocumentDrawingObjectByIndexOnline(GetDocumentDrawingObjectByIndexOnlineRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Reads image data of a DrawingObject from the document node.
  Future< ByteData > getDocumentDrawingObjectImageData(GetDocumentDrawingObjectImageDataRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads image data of a DrawingObject from the document node.
  Future< ByteData > getDocumentDrawingObjectImageDataOnline(GetDocumentDrawingObjectImageDataOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads OLE data of a DrawingObject from the document node.
  Future< ByteData > getDocumentDrawingObjectOleData(GetDocumentDrawingObjectOleDataRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads OLE data of a DrawingObject from the document node.
  Future< ByteData > getDocumentDrawingObjectOleDataOnline(GetDocumentDrawingObjectOleDataOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads DrawingObjects from the document node.
  Future< DrawingObjectsResponse > getDocumentDrawingObjects(GetDocumentDrawingObjectsRequest request) async {
    return await _apiClient.call(request) as DrawingObjectsResponse;
  }

  /// Reads DrawingObjects from the document node.
  Future< DrawingObjectsResponse > getDocumentDrawingObjectsOnline(GetDocumentDrawingObjectsOnlineRequest request) async {
    return await _apiClient.call(request) as DrawingObjectsResponse;
  }

  /// Reads merge field names from the document.
  Future< FieldNamesResponse > getDocumentFieldNames(GetDocumentFieldNamesRequest request) async {
    return await _apiClient.call(request) as FieldNamesResponse;
  }

  /// Reads merge field names from the document.
  Future< FieldNamesResponse > getDocumentFieldNamesOnline(GetDocumentFieldNamesOnlineRequest request) async {
    return await _apiClient.call(request) as FieldNamesResponse;
  }

  /// Reads a hyperlink from the document.
  Future< HyperlinkResponse > getDocumentHyperlinkByIndex(GetDocumentHyperlinkByIndexRequest request) async {
    return await _apiClient.call(request) as HyperlinkResponse;
  }

  /// Reads a hyperlink from the document.
  Future< HyperlinkResponse > getDocumentHyperlinkByIndexOnline(GetDocumentHyperlinkByIndexOnlineRequest request) async {
    return await _apiClient.call(request) as HyperlinkResponse;
  }

  /// Reads hyperlinks from the document.
  Future< HyperlinksResponse > getDocumentHyperlinks(GetDocumentHyperlinksRequest request) async {
    return await _apiClient.call(request) as HyperlinksResponse;
  }

  /// Reads hyperlinks from the document.
  Future< HyperlinksResponse > getDocumentHyperlinksOnline(GetDocumentHyperlinksOnlineRequest request) async {
    return await _apiClient.call(request) as HyperlinksResponse;
  }

  /// Reads document properties.
  Future< DocumentPropertiesResponse > getDocumentProperties(GetDocumentPropertiesRequest request) async {
    return await _apiClient.call(request) as DocumentPropertiesResponse;
  }

  /// Reads document properties.
  Future< DocumentPropertiesResponse > getDocumentPropertiesOnline(GetDocumentPropertiesOnlineRequest request) async {
    return await _apiClient.call(request) as DocumentPropertiesResponse;
  }

  /// Reads a document property.
  Future< DocumentPropertyResponse > getDocumentProperty(GetDocumentPropertyRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Reads a document property.
  Future< DocumentPropertyResponse > getDocumentPropertyOnline(GetDocumentPropertyOnlineRequest request) async {
    return await _apiClient.call(request) as DocumentPropertyResponse;
  }

  /// Reads protection properties from the document.
  Future< ProtectionDataResponse > getDocumentProtection(GetDocumentProtectionRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Reads protection properties from the document.
  Future< ProtectionDataResponse > getDocumentProtectionOnline(GetDocumentProtectionOnlineRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Reads document statistics.
  Future< StatDataResponse > getDocumentStatistics(GetDocumentStatisticsRequest request) async {
    return await _apiClient.call(request) as StatDataResponse;
  }

  /// Reads document statistics.
  Future< StatDataResponse > getDocumentStatisticsOnline(GetDocumentStatisticsOnlineRequest request) async {
    return await _apiClient.call(request) as StatDataResponse;
  }

  /// Converts a document in cloud storage to the specified format.
  Future< ByteData > getDocumentWithFormat(GetDocumentWithFormatRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Reads a field from the document node.
  Future< FieldResponse > getField(GetFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Reads a field from the document node.
  Future< FieldResponse > getFieldOnline(GetFieldOnlineRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Reads fields from the document node.
  Future< FieldsResponse > getFields(GetFieldsRequest request) async {
    return await _apiClient.call(request) as FieldsResponse;
  }

  /// Reads fields from the document node.
  Future< FieldsResponse > getFieldsOnline(GetFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as FieldsResponse;
  }

  /// Get all files and folders within a folder.
  Future< FilesList > getFilesList(GetFilesListRequest request) async {
    return await _apiClient.call(request) as FilesList;
  }

  /// Reads a footnote from the document node.
  Future< FootnoteResponse > getFootnote(GetFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Reads a footnote from the document node.
  Future< FootnoteResponse > getFootnoteOnline(GetFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Reads footnotes from the document node.
  Future< FootnotesResponse > getFootnotes(GetFootnotesRequest request) async {
    return await _apiClient.call(request) as FootnotesResponse;
  }

  /// Reads footnotes from the document node.
  Future< FootnotesResponse > getFootnotesOnline(GetFootnotesOnlineRequest request) async {
    return await _apiClient.call(request) as FootnotesResponse;
  }

  /// Reads a form field from the document node.
  Future< FormFieldResponse > getFormField(GetFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Reads a form field from the document node.
  Future< FormFieldResponse > getFormFieldOnline(GetFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Reads form fields from the document node.
  Future< FormFieldsResponse > getFormFields(GetFormFieldsRequest request) async {
    return await _apiClient.call(request) as FormFieldsResponse;
  }

  /// Reads form fields from the document node.
  Future< FormFieldsResponse > getFormFieldsOnline(GetFormFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as FormFieldsResponse;
  }

  /// Reads a HeaderFooter object from the document.
  Future< HeaderFooterResponse > getHeaderFooter(GetHeaderFooterRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads a HeaderFooter object from the document section.
  Future< HeaderFooterResponse > getHeaderFooterOfSection(GetHeaderFooterOfSectionRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads a HeaderFooter object from the document section.
  Future< HeaderFooterResponse > getHeaderFooterOfSectionOnline(GetHeaderFooterOfSectionOnlineRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads a HeaderFooter object from the document.
  Future< HeaderFooterResponse > getHeaderFooterOnline(GetHeaderFooterOnlineRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Reads HeaderFooter objects from the document section.
  Future< HeaderFootersResponse > getHeaderFooters(GetHeaderFootersRequest request) async {
    return await _apiClient.call(request) as HeaderFootersResponse;
  }

  /// Reads HeaderFooter objects from the document section.
  Future< HeaderFootersResponse > getHeaderFootersOnline(GetHeaderFootersOnlineRequest request) async {
    return await _apiClient.call(request) as HeaderFootersResponse;
  }

  /// Returns application info.
  Future< InfoResponse > getInfo(GetInfoRequest request) async {
    return await _apiClient.call(request) as InfoResponse;
  }

  /// Reads a list from the document.
  Future< ListResponse > getList(GetListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Reads a list from the document.
  Future< ListResponse > getListOnline(GetListOnlineRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Reads lists from the document.
  Future< ListsResponse > getLists(GetListsRequest request) async {
    return await _apiClient.call(request) as ListsResponse;
  }

  /// Reads lists from the document.
  Future< ListsResponse > getListsOnline(GetListsOnlineRequest request) async {
    return await _apiClient.call(request) as ListsResponse;
  }

  /// Reads an OfficeMath object from the document node.
  Future< OfficeMathObjectResponse > getOfficeMathObject(GetOfficeMathObjectRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectResponse;
  }

  /// Reads an OfficeMath object from the document node.
  Future< OfficeMathObjectResponse > getOfficeMathObjectOnline(GetOfficeMathObjectOnlineRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectResponse;
  }

  /// Reads OfficeMath objects from the document node.
  Future< OfficeMathObjectsResponse > getOfficeMathObjects(GetOfficeMathObjectsRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectsResponse;
  }

  /// Reads OfficeMath objects from the document node.
  Future< OfficeMathObjectsResponse > getOfficeMathObjectsOnline(GetOfficeMathObjectsOnlineRequest request) async {
    return await _apiClient.call(request) as OfficeMathObjectsResponse;
  }

  /// Reads a paragraph from the document node.
  Future< ParagraphResponse > getParagraph(GetParagraphRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Reads the formatting properties of a paragraph from the document node.
  Future< ParagraphFormatResponse > getParagraphFormat(GetParagraphFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Reads the formatting properties of a paragraph from the document node.
  Future< ParagraphFormatResponse > getParagraphFormatOnline(GetParagraphFormatOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Reads the formatting properties of a paragraph list from the document node.
  Future< ParagraphListFormatResponse > getParagraphListFormat(GetParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Reads the formatting properties of a paragraph list from the document node.
  Future< ParagraphListFormatResponse > getParagraphListFormatOnline(GetParagraphListFormatOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Reads a paragraph from the document node.
  Future< ParagraphResponse > getParagraphOnline(GetParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Reads paragraphs from the document node.
  Future< ParagraphLinkCollectionResponse > getParagraphs(GetParagraphsRequest request) async {
    return await _apiClient.call(request) as ParagraphLinkCollectionResponse;
  }

  /// Reads paragraphs from the document node.
  Future< ParagraphLinkCollectionResponse > getParagraphsOnline(GetParagraphsOnlineRequest request) async {
    return await _apiClient.call(request) as ParagraphLinkCollectionResponse;
  }

  /// Reads paragraph tab stops from the document node.
  Future< TabStopsResponse > getParagraphTabStops(GetParagraphTabStopsRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Reads paragraph tab stops from the document node.
  Future< TabStopsResponse > getParagraphTabStopsOnline(GetParagraphTabStopsOnlineRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Get asymmetric public key.
  Future< PublicKeyResponse > getPublicKey(GetPublicKeyRequest request) async {
    return await _apiClient.call(request) as PublicKeyResponse;
  }

  /// Reads range text from the document.
  Future< RangeTextResponse > getRangeText(GetRangeTextRequest request) async {
    return await _apiClient.call(request) as RangeTextResponse;
  }

  /// Reads range text from the document.
  Future< RangeTextResponse > getRangeTextOnline(GetRangeTextOnlineRequest request) async {
    return await _apiClient.call(request) as RangeTextResponse;
  }

  /// Reads a Run object from the paragraph.
  Future< RunResponse > getRun(GetRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Reads the font properties of a Run object from the paragraph.
  Future< FontResponse > getRunFont(GetRunFontRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Reads the font properties of a Run object from the paragraph.
  Future< FontResponse > getRunFontOnline(GetRunFontOnlineRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Reads a Run object from the paragraph.
  Future< RunResponse > getRunOnline(GetRunOnlineRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Reads Run objects from the paragraph.
  Future< RunsResponse > getRuns(GetRunsRequest request) async {
    return await _apiClient.call(request) as RunsResponse;
  }

  /// Reads Run objects from the paragraph.
  Future< RunsResponse > getRunsOnline(GetRunsOnlineRequest request) async {
    return await _apiClient.call(request) as RunsResponse;
  }

  /// Reads a section from the document.
  Future< SectionResponse > getSection(GetSectionRequest request) async {
    return await _apiClient.call(request) as SectionResponse;
  }

  /// Reads a section from the document.
  Future< SectionResponse > getSectionOnline(GetSectionOnlineRequest request) async {
    return await _apiClient.call(request) as SectionResponse;
  }

  /// Reads the page setup of a section from the document.
  Future< SectionPageSetupResponse > getSectionPageSetup(GetSectionPageSetupRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Reads the page setup of a section from the document.
  Future< SectionPageSetupResponse > getSectionPageSetupOnline(GetSectionPageSetupOnlineRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Reads sections from the document.
  Future< SectionLinkCollectionResponse > getSections(GetSectionsRequest request) async {
    return await _apiClient.call(request) as SectionLinkCollectionResponse;
  }

  /// Reads sections from the document.
  Future< SectionLinkCollectionResponse > getSectionsOnline(GetSectionsOnlineRequest request) async {
    return await _apiClient.call(request) as SectionLinkCollectionResponse;
  }

  /// Gets signatures from the document.
  Future< SignatureCollectionResponse > getSignatures(GetSignaturesRequest request) async {
    return await _apiClient.call(request) as SignatureCollectionResponse;
  }

  /// Gets signatures from the document.
  Future< SignatureCollectionResponse > getSignaturesOnline(GetSignaturesOnlineRequest request) async {
    return await _apiClient.call(request) as SignatureCollectionResponse;
  }

  /// Reads a StructuredDocumentTag (SDT) from the document node.
  Future< StructuredDocumentTagResponse > getStructuredDocumentTag(GetStructuredDocumentTagRequest request) async {
    return await _apiClient.call(request) as StructuredDocumentTagResponse;
  }

  /// Reads a StructuredDocumentTag (SDT) from the document node.
  Future< StructuredDocumentTagResponse > getStructuredDocumentTagOnline(GetStructuredDocumentTagOnlineRequest request) async {
    return await _apiClient.call(request) as StructuredDocumentTagResponse;
  }

  /// Reads StructuredDocumentTags (SDT) from the document node.
  Future< StructuredDocumentTagsResponse > getStructuredDocumentTags(GetStructuredDocumentTagsRequest request) async {
    return await _apiClient.call(request) as StructuredDocumentTagsResponse;
  }

  /// Reads StructuredDocumentTags (SDT) from the document node.
  Future< StructuredDocumentTagsResponse > getStructuredDocumentTagsOnline(GetStructuredDocumentTagsOnlineRequest request) async {
    return await _apiClient.call(request) as StructuredDocumentTagsResponse;
  }

  /// Reads a style from the document.
  Future< StyleResponse > getStyle(GetStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads a style from the document node.
  Future< StyleResponse > getStyleFromDocumentElement(GetStyleFromDocumentElementRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads a style from the document node.
  Future< StyleResponse > getStyleFromDocumentElementOnline(GetStyleFromDocumentElementOnlineRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads a style from the document.
  Future< StyleResponse > getStyleOnline(GetStyleOnlineRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Reads styles from the document.
  Future< StylesResponse > getStyles(GetStylesRequest request) async {
    return await _apiClient.call(request) as StylesResponse;
  }

  /// Reads styles from the document.
  Future< StylesResponse > getStylesOnline(GetStylesOnlineRequest request) async {
    return await _apiClient.call(request) as StylesResponse;
  }

  /// Reads a table from the document node.
  Future< TableResponse > getTable(GetTableRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Reads a cell from the table row.
  Future< TableCellResponse > getTableCell(GetTableCellRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Reads the formatting properties of a table cell.
  Future< TableCellFormatResponse > getTableCellFormat(GetTableCellFormatRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Reads the formatting properties of a table cell.
  Future< TableCellFormatResponse > getTableCellFormatOnline(GetTableCellFormatOnlineRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Reads a cell from the table row.
  Future< TableCellResponse > getTableCellOnline(GetTableCellOnlineRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Reads a table from the document node.
  Future< TableResponse > getTableOnline(GetTableOnlineRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Reads properties of a table from the document node.
  Future< TablePropertiesResponse > getTableProperties(GetTablePropertiesRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Reads properties of a table from the document node.
  Future< TablePropertiesResponse > getTablePropertiesOnline(GetTablePropertiesOnlineRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Reads a row from the table.
  Future< TableRowResponse > getTableRow(GetTableRowRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Reads the formatting properties of a table row.
  Future< TableRowFormatResponse > getTableRowFormat(GetTableRowFormatRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Reads the formatting properties of a table row.
  Future< TableRowFormatResponse > getTableRowFormatOnline(GetTableRowFormatOnlineRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Reads a row from the table.
  Future< TableRowResponse > getTableRowOnline(GetTableRowOnlineRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Reads tables from the document node.
  Future< TableLinkCollectionResponse > getTables(GetTablesRequest request) async {
    return await _apiClient.call(request) as TableLinkCollectionResponse;
  }

  /// Reads tables from the document node.
  Future< TableLinkCollectionResponse > getTablesOnline(GetTablesOnlineRequest request) async {
    return await _apiClient.call(request) as TableLinkCollectionResponse;
  }

  /// Inserts a new bookmark to the document.
  Future< BookmarkResponse > insertBookmark(InsertBookmarkRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Inserts a new bookmark to the document.
  Future< InsertBookmarkOnlineResponse > insertBookmarkOnline(InsertBookmarkOnlineRequest request) async {
    return await _apiClient.call(request) as InsertBookmarkOnlineResponse;
  }

  /// Inserts a new comment to the document.
  Future< CommentResponse > insertComment(InsertCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Inserts a new comment to the document.
  Future< InsertCommentOnlineResponse > insertCommentOnline(InsertCommentOnlineRequest request) async {
    return await _apiClient.call(request) as InsertCommentOnlineResponse;
  }

  /// Inserts a new custom xml part to the document.
  Future< CustomXmlPartResponse > insertCustomXmlPart(InsertCustomXmlPartRequest request) async {
    return await _apiClient.call(request) as CustomXmlPartResponse;
  }

  /// Inserts a new custom xml part to the document.
  Future< InsertCustomXmlPartOnlineResponse > insertCustomXmlPartOnline(InsertCustomXmlPartOnlineRequest request) async {
    return await _apiClient.call(request) as InsertCustomXmlPartOnlineResponse;
  }

  /// Inserts a new DrawingObject to the document node.
  Future< DrawingObjectResponse > insertDrawingObject(InsertDrawingObjectRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Inserts a new DrawingObject to the document node.
  Future< InsertDrawingObjectOnlineResponse > insertDrawingObjectOnline(InsertDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as InsertDrawingObjectOnlineResponse;
  }

  /// Inserts a new field to the document node.
  Future< FieldResponse > insertField(InsertFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Inserts a new field to the document node.
  Future< InsertFieldOnlineResponse > insertFieldOnline(InsertFieldOnlineRequest request) async {
    return await _apiClient.call(request) as InsertFieldOnlineResponse;
  }

  /// Inserts a new footnote to the document node.
  Future< FootnoteResponse > insertFootnote(InsertFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Inserts a new footnote to the document node.
  Future< InsertFootnoteOnlineResponse > insertFootnoteOnline(InsertFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as InsertFootnoteOnlineResponse;
  }

  /// Inserts a new form field to the document node.
  Future< FormFieldResponse > insertFormField(InsertFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Inserts a new form field to the document node.
  Future< InsertFormFieldOnlineResponse > insertFormFieldOnline(InsertFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as InsertFormFieldOnlineResponse;
  }

  /// Inserts a new HeaderFooter object to the document section.
  Future< HeaderFooterResponse > insertHeaderFooter(InsertHeaderFooterRequest request) async {
    return await _apiClient.call(request) as HeaderFooterResponse;
  }

  /// Inserts a new HeaderFooter object to the document section.
  Future< InsertHeaderFooterOnlineResponse > insertHeaderFooterOnline(InsertHeaderFooterOnlineRequest request) async {
    return await _apiClient.call(request) as InsertHeaderFooterOnlineResponse;
  }

  /// Inserts a new list to the document.
  Future< ListResponse > insertList(InsertListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Inserts a new list to the document.
  Future< InsertListOnlineResponse > insertListOnline(InsertListOnlineRequest request) async {
    return await _apiClient.call(request) as InsertListOnlineResponse;
  }

  /// Inserts a new or updates an existing paragraph tab stop in the document node.
  Future< TabStopsResponse > insertOrUpdateParagraphTabStop(InsertOrUpdateParagraphTabStopRequest request) async {
    return await _apiClient.call(request) as TabStopsResponse;
  }

  /// Inserts a new or updates an existing paragraph tab stop in the document node.
  Future< InsertOrUpdateParagraphTabStopOnlineResponse > insertOrUpdateParagraphTabStopOnline(InsertOrUpdateParagraphTabStopOnlineRequest request) async {
    return await _apiClient.call(request) as InsertOrUpdateParagraphTabStopOnlineResponse;
  }

  /// Inserts page numbers to the document.
  Future< DocumentResponse > insertPageNumbers(InsertPageNumbersRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts page numbers to the document.
  Future< InsertPageNumbersOnlineResponse > insertPageNumbersOnline(InsertPageNumbersOnlineRequest request) async {
    return await _apiClient.call(request) as InsertPageNumbersOnlineResponse;
  }

  /// Inserts a new paragraph to the document node.
  Future< ParagraphResponse > insertParagraph(InsertParagraphRequest request) async {
    return await _apiClient.call(request) as ParagraphResponse;
  }

  /// Inserts a new paragraph to the document node.
  Future< InsertParagraphOnlineResponse > insertParagraphOnline(InsertParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as InsertParagraphOnlineResponse;
  }

  /// Inserts a new Run object to the paragraph.
  Future< RunResponse > insertRun(InsertRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Inserts a new Run object to the paragraph.
  Future< InsertRunOnlineResponse > insertRunOnline(InsertRunOnlineRequest request) async {
    return await _apiClient.call(request) as InsertRunOnlineResponse;
  }

  /// Inserts a section to the document.
  Future< void > insertSection(InsertSectionRequest request) async {
    await _apiClient.call(request);
  }

  /// Inserts a section to the document.
  Future< Map<String, ByteData> > insertSectionOnline(InsertSectionOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Inserts a new StructuredDocumentTag (SDT) to the document node.
  Future< StructuredDocumentTagResponse > insertStructuredDocumentTag(InsertStructuredDocumentTagRequest request) async {
    return await _apiClient.call(request) as StructuredDocumentTagResponse;
  }

  /// Inserts a new StructuredDocumentTag (SDT) to the document node.
  Future< InsertStructuredDocumentTagOnlineResponse > insertStructuredDocumentTagOnline(InsertStructuredDocumentTagOnlineRequest request) async {
    return await _apiClient.call(request) as InsertStructuredDocumentTagOnlineResponse;
  }

  /// Inserts a new style to the document.
  Future< StyleResponse > insertStyle(InsertStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Inserts a new style to the document.
  Future< InsertStyleOnlineResponse > insertStyleOnline(InsertStyleOnlineRequest request) async {
    return await _apiClient.call(request) as InsertStyleOnlineResponse;
  }

  /// Inserts a new table to the document node.
  Future< TableResponse > insertTable(InsertTableRequest request) async {
    return await _apiClient.call(request) as TableResponse;
  }

  /// Inserts a new cell to the table row.
  Future< TableCellResponse > insertTableCell(InsertTableCellRequest request) async {
    return await _apiClient.call(request) as TableCellResponse;
  }

  /// Inserts a new cell to the table row.
  Future< InsertTableCellOnlineResponse > insertTableCellOnline(InsertTableCellOnlineRequest request) async {
    return await _apiClient.call(request) as InsertTableCellOnlineResponse;
  }

  /// Inserts a new table to the document node.
  Future< InsertTableOnlineResponse > insertTableOnline(InsertTableOnlineRequest request) async {
    return await _apiClient.call(request) as InsertTableOnlineResponse;
  }

  /// Inserts a new row to the table.
  Future< TableRowResponse > insertTableRow(InsertTableRowRequest request) async {
    return await _apiClient.call(request) as TableRowResponse;
  }

  /// Inserts a new row to the table.
  Future< InsertTableRowOnlineResponse > insertTableRowOnline(InsertTableRowOnlineRequest request) async {
    return await _apiClient.call(request) as InsertTableRowOnlineResponse;
  }

  /// Insert a watermark to the document.
  Future< DocumentResponse > insertWatermark(InsertWatermarkRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts a new watermark image to the document.
  @Deprecated("This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
  Future< DocumentResponse > insertWatermarkImage(InsertWatermarkImageRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts a new watermark image to the document.
  @Deprecated("This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
  Future< InsertWatermarkImageOnlineResponse > insertWatermarkImageOnline(InsertWatermarkImageOnlineRequest request) async {
    return await _apiClient.call(request) as InsertWatermarkImageOnlineResponse;
  }

  /// Insert a watermark to the document.
  Future< InsertWatermarkOnlineResponse > insertWatermarkOnline(InsertWatermarkOnlineRequest request) async {
    return await _apiClient.call(request) as InsertWatermarkOnlineResponse;
  }

  /// Inserts a new watermark text to the document.
  @Deprecated("This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
  Future< DocumentResponse > insertWatermarkText(InsertWatermarkTextRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Inserts a new watermark text to the document.
  @Deprecated("This operation is deprecated and is used for backward compatibility only. Please use InsertWatermark instead.")
  Future< InsertWatermarkTextOnlineResponse > insertWatermarkTextOnline(InsertWatermarkTextOnlineRequest request) async {
    return await _apiClient.call(request) as InsertWatermarkTextOnlineResponse;
  }

  /// Links headers / footers of the section to the previous one.
  Future< void > linkHeaderFootersToPrevious(LinkHeaderFootersToPreviousRequest request) async {
    await _apiClient.call(request);
  }

  /// Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
  Future< SaveResponse > loadWebDocument(LoadWebDocumentRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Downloads a document from the Web using URL and saves it to cloud storage in the specified format.
  Future< LoadWebDocumentOnlineResponse > loadWebDocumentOnline(LoadWebDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as LoadWebDocumentOnlineResponse;
  }

  /// Merge the section with the next one.
  Future< void > mergeWithNext(MergeWithNextRequest request) async {
    await _apiClient.call(request);
  }

  /// Merge the section with the next one.
  Future< Map<String, ByteData> > mergeWithNextOnline(MergeWithNextOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Move file.
  Future< void > moveFile(MoveFileRequest request) async {
    await _apiClient.call(request);
  }

  /// Move folder.
  Future< void > moveFolder(MoveFolderRequest request) async {
    await _apiClient.call(request);
  }

  /// Applies document content optimization options, specific to a particular versions of Microsoft Word.
  Future< void > optimizeDocument(OptimizeDocumentRequest request) async {
    await _apiClient.call(request);
  }

  /// Applies document content optimization options, specific to a particular versions of Microsoft Word.
  Future< Map<String, ByteData> > optimizeDocumentOnline(OptimizeDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as Map<String, ByteData>;
  }

  /// Changes the document protection. The previous protection will be overwritten if it exist.
  Future< ProtectionDataResponse > protectDocument(ProtectDocumentRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Changes the document protection. The previous protection will be overwritten if it exist.
  Future< ProtectDocumentOnlineResponse > protectDocumentOnline(ProtectDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as ProtectDocumentOnlineResponse;
  }

  /// Rejects all revisions in the document.
  Future< RevisionsModificationResponse > rejectAllRevisions(RejectAllRevisionsRequest request) async {
    return await _apiClient.call(request) as RevisionsModificationResponse;
  }

  /// Rejects all revisions in the document.
  Future< RejectAllRevisionsOnlineResponse > rejectAllRevisionsOnline(RejectAllRevisionsOnlineRequest request) async {
    return await _apiClient.call(request) as RejectAllRevisionsOnlineResponse;
  }

  /// Removes all signatures of the document.
  Future< SignatureCollectionResponse > removeAllSignatures(RemoveAllSignaturesRequest request) async {
    return await _apiClient.call(request) as SignatureCollectionResponse;
  }

  /// Removes all signatures of the document.
  Future< RemoveAllSignaturesOnlineResponse > removeAllSignaturesOnline(RemoveAllSignaturesOnlineRequest request) async {
    return await _apiClient.call(request) as RemoveAllSignaturesOnlineResponse;
  }

  /// Removes a range from the document.
  Future< DocumentResponse > removeRange(RemoveRangeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Removes a range from the document.
  Future< RemoveRangeOnlineResponse > removeRangeOnline(RemoveRangeOnlineRequest request) async {
    return await _apiClient.call(request) as RemoveRangeOnlineResponse;
  }

  /// Renders a DrawingObject to the specified format.
  Future< ByteData > renderDrawingObject(RenderDrawingObjectRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a DrawingObject to the specified format.
  Future< ByteData > renderDrawingObjectOnline(RenderDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders an OfficeMath object to the specified format.
  Future< ByteData > renderMathObject(RenderMathObjectRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders an OfficeMath object to the specified format.
  Future< ByteData > renderMathObjectOnline(RenderMathObjectOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a page to the specified format.
  Future< ByteData > renderPage(RenderPageRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a page to the specified format.
  Future< ByteData > renderPageOnline(RenderPageOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a paragraph to the specified format.
  Future< ByteData > renderParagraph(RenderParagraphRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a paragraph to the specified format.
  Future< ByteData > renderParagraphOnline(RenderParagraphOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a table to the specified format.
  Future< ByteData > renderTable(RenderTableRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Renders a table to the specified format.
  Future< ByteData > renderTableOnline(RenderTableOnlineRequest request) async {
    return await _apiClient.call(request) as ByteData;
  }

  /// Replaces text in the document.
  Future< ReplaceTextResponse > replaceText(ReplaceTextRequest request) async {
    return await _apiClient.call(request) as ReplaceTextResponse;
  }

  /// Replaces text in the document.
  Future< ReplaceTextOnlineResponse > replaceTextOnline(ReplaceTextOnlineRequest request) async {
    return await _apiClient.call(request) as ReplaceTextOnlineResponse;
  }

  /// Replaces a range with text in the document.
  Future< DocumentResponse > replaceWithText(ReplaceWithTextRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Replaces a range with text in the document.
  Future< ReplaceWithTextOnlineResponse > replaceWithTextOnline(ReplaceWithTextOnlineRequest request) async {
    return await _apiClient.call(request) as ReplaceWithTextOnlineResponse;
  }

  /// Clears the font cache.
  Future< void > resetCache(ResetCacheRequest request) async {
    await _apiClient.call(request);
  }

  /// Converts a document in cloud storage to the specified format.
  Future< SaveResponse > saveAs(SaveAsRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Converts a document in cloud storage to the specified format.
  Future< SaveAsOnlineResponse > saveAsOnline(SaveAsOnlineRequest request) async {
    return await _apiClient.call(request) as SaveAsOnlineResponse;
  }

  /// Saves a range as a new document.
  Future< DocumentResponse > saveAsRange(SaveAsRangeRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Saves a range as a new document.
  Future< SaveAsRangeOnlineResponse > saveAsRangeOnline(SaveAsRangeOnlineRequest request) async {
    return await _apiClient.call(request) as SaveAsRangeOnlineResponse;
  }

  /// Converts a document in cloud storage to TIFF format using detailed conversion settings.
  @Deprecated("This operation will be removed in the future.")
  Future< SaveResponse > saveAsTiff(SaveAsTiffRequest request) async {
    return await _apiClient.call(request) as SaveResponse;
  }

  /// Converts a document in cloud storage to TIFF format using detailed conversion settings.
  @Deprecated("This operation will be removed in the future.")
  Future< SaveAsTiffOnlineResponse > saveAsTiffOnline(SaveAsTiffOnlineRequest request) async {
    return await _apiClient.call(request) as SaveAsTiffOnlineResponse;
  }

  /// Searches text, specified by the regular expression, in the document.
  Future< SearchResponse > search(SearchRequest request) async {
    return await _apiClient.call(request) as SearchResponse;
  }

  /// Searches text, specified by the regular expression, in the document.
  Future< SearchResponse > searchOnline(SearchOnlineRequest request) async {
    return await _apiClient.call(request) as SearchResponse;
  }

  /// Signs the document with given certificate.
  Future< SignatureCollectionResponse > signDocument(SignDocumentRequest request) async {
    return await _apiClient.call(request) as SignatureCollectionResponse;
  }

  /// Signs the document with given certificate.
  Future< SignDocumentOnlineResponse > signDocumentOnline(SignDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as SignDocumentOnlineResponse;
  }

  /// Splits a document into parts and saves them in the specified format.
  Future< SplitDocumentResponse > splitDocument(SplitDocumentRequest request) async {
    return await _apiClient.call(request) as SplitDocumentResponse;
  }

  /// Splits a document into parts and saves them in the specified format.
  Future< JobHandler< SplitDocumentResponse > > splitDocumentJob(SplitDocumentJobRequest request) async {
    var _info = await _apiClient.call(request) as JobInfo;
    return JobHandler< SplitDocumentResponse >(_apiClient, request.getOriginalRequest(), _info);
  }

  /// Splits a document into parts and saves them in the specified format.
  Future< SplitDocumentOnlineResponse > splitDocumentOnline(SplitDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as SplitDocumentOnlineResponse;
  }

  /// Splits a document into parts and saves them in the specified format.
  Future< JobHandler< SplitDocumentOnlineResponse > > splitDocumentOnlineJob(SplitDocumentOnlineJobRequest request) async {
    var _info = await _apiClient.call(request) as JobInfo;
    return JobHandler< SplitDocumentOnlineResponse >(_apiClient, request.getOriginalRequest(), _info);
  }

  /// Translate a node id to a node path.
  Future< TranslateNodeIdResponse > translateNodeId(TranslateNodeIdRequest request) async {
    return await _apiClient.call(request) as TranslateNodeIdResponse;
  }

  /// Translate a node id to a node path.
  Future< TranslateNodeIdResponse > translateNodeIdOnline(TranslateNodeIdOnlineRequest request) async {
    return await _apiClient.call(request) as TranslateNodeIdResponse;
  }

  /// Removes protection from the document.
  Future< ProtectionDataResponse > unprotectDocument(UnprotectDocumentRequest request) async {
    return await _apiClient.call(request) as ProtectionDataResponse;
  }

  /// Removes protection from the document.
  Future< UnprotectDocumentOnlineResponse > unprotectDocumentOnline(UnprotectDocumentOnlineRequest request) async {
    return await _apiClient.call(request) as UnprotectDocumentOnlineResponse;
  }

  /// Updates a bookmark in the document.
  Future< BookmarkResponse > updateBookmark(UpdateBookmarkRequest request) async {
    return await _apiClient.call(request) as BookmarkResponse;
  }

  /// Updates a bookmark in the document.
  Future< UpdateBookmarkOnlineResponse > updateBookmarkOnline(UpdateBookmarkOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateBookmarkOnlineResponse;
  }

  /// Updates a border in the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< BorderResponse > updateBorder(UpdateBorderRequest request) async {
    return await _apiClient.call(request) as BorderResponse;
  }

  /// Updates a border in the document node.
  /// The 'nodePath' parameter should refer to a paragraph, a cell or a row.
  Future< UpdateBorderOnlineResponse > updateBorderOnline(UpdateBorderOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateBorderOnlineResponse;
  }

  /// Updates a comment in the document.
  Future< CommentResponse > updateComment(UpdateCommentRequest request) async {
    return await _apiClient.call(request) as CommentResponse;
  }

  /// Updates a comment in the document.
  Future< UpdateCommentOnlineResponse > updateCommentOnline(UpdateCommentOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateCommentOnlineResponse;
  }

  /// Updates the custom xml part in the document.
  Future< CustomXmlPartResponse > updateCustomXmlPart(UpdateCustomXmlPartRequest request) async {
    return await _apiClient.call(request) as CustomXmlPartResponse;
  }

  /// Updates the custom xml part in the document.
  Future< UpdateCustomXmlPartOnlineResponse > updateCustomXmlPartOnline(UpdateCustomXmlPartOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateCustomXmlPartOnlineResponse;
  }

  /// Updates a DrawingObject in the document node.
  Future< DrawingObjectResponse > updateDrawingObject(UpdateDrawingObjectRequest request) async {
    return await _apiClient.call(request) as DrawingObjectResponse;
  }

  /// Updates a DrawingObject in the document node.
  Future< UpdateDrawingObjectOnlineResponse > updateDrawingObjectOnline(UpdateDrawingObjectOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateDrawingObjectOnlineResponse;
  }

  /// Updates a field in the document node.
  Future< FieldResponse > updateField(UpdateFieldRequest request) async {
    return await _apiClient.call(request) as FieldResponse;
  }

  /// Updates a field in the document node.
  Future< UpdateFieldOnlineResponse > updateFieldOnline(UpdateFieldOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFieldOnlineResponse;
  }

  /// Reevaluates field values in the document.
  Future< DocumentResponse > updateFields(UpdateFieldsRequest request) async {
    return await _apiClient.call(request) as DocumentResponse;
  }

  /// Reevaluates field values in the document.
  Future< UpdateFieldsOnlineResponse > updateFieldsOnline(UpdateFieldsOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFieldsOnlineResponse;
  }

  /// Updates a footnote in the document node.
  Future< FootnoteResponse > updateFootnote(UpdateFootnoteRequest request) async {
    return await _apiClient.call(request) as FootnoteResponse;
  }

  /// Updates a footnote in the document node.
  Future< UpdateFootnoteOnlineResponse > updateFootnoteOnline(UpdateFootnoteOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFootnoteOnlineResponse;
  }

  /// Updates a form field in the document node.
  Future< FormFieldResponse > updateFormField(UpdateFormFieldRequest request) async {
    return await _apiClient.call(request) as FormFieldResponse;
  }

  /// Updates a form field in the document node.
  Future< UpdateFormFieldOnlineResponse > updateFormFieldOnline(UpdateFormFieldOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateFormFieldOnlineResponse;
  }

  /// Updates a list in the document.
  Future< ListResponse > updateList(UpdateListRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Updates the level of a List element in the document.
  Future< ListResponse > updateListLevel(UpdateListLevelRequest request) async {
    return await _apiClient.call(request) as ListResponse;
  }

  /// Updates the level of a List element in the document.
  Future< UpdateListLevelOnlineResponse > updateListLevelOnline(UpdateListLevelOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateListLevelOnlineResponse;
  }

  /// Updates a list in the document.
  Future< UpdateListOnlineResponse > updateListOnline(UpdateListOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateListOnlineResponse;
  }

  /// Updates the formatting properties of a paragraph in the document node.
  Future< ParagraphFormatResponse > updateParagraphFormat(UpdateParagraphFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphFormatResponse;
  }

  /// Updates the formatting properties of a paragraph in the document node.
  Future< UpdateParagraphFormatOnlineResponse > updateParagraphFormatOnline(UpdateParagraphFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateParagraphFormatOnlineResponse;
  }

  /// Updates the formatting properties of a paragraph list in the document node.
  Future< ParagraphListFormatResponse > updateParagraphListFormat(UpdateParagraphListFormatRequest request) async {
    return await _apiClient.call(request) as ParagraphListFormatResponse;
  }

  /// Updates the formatting properties of a paragraph list in the document node.
  Future< UpdateParagraphListFormatOnlineResponse > updateParagraphListFormatOnline(UpdateParagraphListFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateParagraphListFormatOnlineResponse;
  }

  /// Updates a Run object in the paragraph.
  Future< RunResponse > updateRun(UpdateRunRequest request) async {
    return await _apiClient.call(request) as RunResponse;
  }

  /// Updates the font properties of a Run object in the paragraph.
  Future< FontResponse > updateRunFont(UpdateRunFontRequest request) async {
    return await _apiClient.call(request) as FontResponse;
  }

  /// Updates the font properties of a Run object in the paragraph.
  Future< UpdateRunFontOnlineResponse > updateRunFontOnline(UpdateRunFontOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateRunFontOnlineResponse;
  }

  /// Updates a Run object in the paragraph.
  Future< UpdateRunOnlineResponse > updateRunOnline(UpdateRunOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateRunOnlineResponse;
  }

  /// Updates the page setup of a section in the document.
  Future< SectionPageSetupResponse > updateSectionPageSetup(UpdateSectionPageSetupRequest request) async {
    return await _apiClient.call(request) as SectionPageSetupResponse;
  }

  /// Updates the page setup of a section in the document.
  Future< UpdateSectionPageSetupOnlineResponse > updateSectionPageSetupOnline(UpdateSectionPageSetupOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateSectionPageSetupOnlineResponse;
  }

  /// Updates a StructuredDocumentTag (SDT) in the document node.
  Future< StructuredDocumentTagResponse > updateStructuredDocumentTag(UpdateStructuredDocumentTagRequest request) async {
    return await _apiClient.call(request) as StructuredDocumentTagResponse;
  }

  /// Updates a StructuredDocumentTag (SDT) in the document node.
  Future< UpdateStructuredDocumentTagOnlineResponse > updateStructuredDocumentTagOnline(UpdateStructuredDocumentTagOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateStructuredDocumentTagOnlineResponse;
  }

  /// Updates a style in the document.
  Future< StyleResponse > updateStyle(UpdateStyleRequest request) async {
    return await _apiClient.call(request) as StyleResponse;
  }

  /// Updates a style in the document.
  Future< UpdateStyleOnlineResponse > updateStyleOnline(UpdateStyleOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateStyleOnlineResponse;
  }

  /// Updates the formatting properties of a cell in the table row.
  Future< TableCellFormatResponse > updateTableCellFormat(UpdateTableCellFormatRequest request) async {
    return await _apiClient.call(request) as TableCellFormatResponse;
  }

  /// Updates the formatting properties of a cell in the table row.
  Future< UpdateTableCellFormatOnlineResponse > updateTableCellFormatOnline(UpdateTableCellFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateTableCellFormatOnlineResponse;
  }

  /// Updates properties of a table in the document node.
  Future< TablePropertiesResponse > updateTableProperties(UpdateTablePropertiesRequest request) async {
    return await _apiClient.call(request) as TablePropertiesResponse;
  }

  /// Updates properties of a table in the document node.
  Future< UpdateTablePropertiesOnlineResponse > updateTablePropertiesOnline(UpdateTablePropertiesOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateTablePropertiesOnlineResponse;
  }

  /// Updates the formatting properties of a table row.
  Future< TableRowFormatResponse > updateTableRowFormat(UpdateTableRowFormatRequest request) async {
    return await _apiClient.call(request) as TableRowFormatResponse;
  }

  /// Updates the formatting properties of a table row.
  Future< UpdateTableRowFormatOnlineResponse > updateTableRowFormatOnline(UpdateTableRowFormatOnlineRequest request) async {
    return await _apiClient.call(request) as UpdateTableRowFormatOnlineResponse;
  }

  /// Upload file.
  Future< FilesUploadResult > uploadFile(UploadFileRequest request) async {
    return await _apiClient.call(request) as FilesUploadResult;
  }

  // Batch request
  Future< List<dynamic> > batch(final List<BatchRequest> requests, {final bool displayIntermediateResults = true}) async {
    return await _apiClient.callBatch(requests, displayIntermediateResults);
  }

  // Encrypt string
  Future<String> encryptPassword(final String data) async {
    return await _apiClient.encryptPassword(data);
  }
}