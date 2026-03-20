## [26.3.0] - Aspose Words Cloud for Dart 26.3 Release Notes

- Various stability and performance improvements.


## [26.2.0] - Aspose Words Cloud for Dart 26.2 Release Notes

- Implemented ability to save documents as Docling JSON format.


## [26.1.0] - Aspose Words Cloud for Dart 26.1 Release Notes

- Add fontsLocation parameter for Compare API.


## [25.12.0] - Aspose Words Cloud for Dart 25.12 Release Notes

- Classification API has been removed.


## [25.11.0] - Aspose Words Cloud for Dart 25.11 Release Notes

- Added 'OfficeMathExportMode' property for TextSaveOptionsData class.
- Added 'ExportFloatingShapesAsInlineTag' property for PdfSaveOptionsData class.


## [25.8.0] - Aspose Words Cloud for Dart 25.8 Release Notes



## [25.6.0] - Aspose Words Cloud for Dart 25.6 Release Notes

- Added support for SVG images format in Watermark API.
- Added 'RemoveJavaScriptFromLinks' property for HtmlSaveOptionsData class.


## [25.5.0] - Aspose Words Cloud for Dart 25.5 Release Notes

- Added data models support for classes 'CommentRangeStart', 'CommentRangeEnd'.
- Added data models support for classes 'FormFieldCheckboxLink', 'FormFieldDropDownLink', 'FormFieldTextInputLink'.


## [25.4.0] - Aspose Words Cloud for Dart 25.4 Release Notes

- Added 'AttachmentsEmbeddingMode' property for PdfSaveOptionsData class.
- Added 'UpdateAmbiguousTextFont' property for SaveOptionsData class.
- Added 'Granularity' property for CompareOptions class.


## [25.2.0] - Aspose Words Cloud for Dart 25.2 Release Notes

- Added 'IdPrefix' property for HtmlFixedSaveOptionsData and SvgSaveOptionsData class.


## [24.12.0] - Aspose Words Cloud for Dart 24.12 Release Notes

- Added 'RenderChoiceFormFieldBorder' property for PdfSaveOptionsData class.
- Added 'ApplySuperscript' property for ReplaceTextParameters class.


## [24.11.0] - Aspose Words Cloud for Dart 24.11 Release Notes

- Added GetAllRevisions method to obtain all available revisions in document.
- Added AppendAllEntriesToOneSection parameter to AppendDocument method to append entries to the same section.


## [24.9.0] - Aspose Words Cloud for Dart 24.9 Release Notes

- Added digital signature methds for DOC, DOCX, XPS, or ODT documents.
- Added ReplaceBackslashWithYenSign property for XpsSaveOptions and HtmlSaveOptions.
- Added DigitalSignature property for XpsSaveOptions.
- Added UseSdtTagAsFormFieldName property for PdfSaveOptions.
- Added MergeWholeDocument parameter to the MailMerge operations to update fields in whole document after executing of a mail merge with regions.


## [24.8.0] - Aspose Words Cloud for Dart 24.8 Release Notes

- Added the support of OpenType standard. It is usefull for languages required advanced typography.
- Added support for send/receive progress callbacks in the dart sdk.

## [24.7.0] - Aspose Words Cloud for Dart 24.7 Release Notes

- Added support for azw3 (Amazon Kindle Format) documents.
- Added 'MaxImageResolution' property for SvgSaveOptionsData class.


## [24.6.0] - Aspose Words Cloud for Dart 24.6 Release Notes

- Added the 'TranslateNodeId' method to transalate a node id to a node path.


## [24.5.0] - Aspose Words Cloud for Dart 24.5 Release Notes

- Added the support of multistorage operations. Saving a file as a result of an operation can be performed in a specific storage, when, used file path in the next format '@storage:path/to/file.doc'.


## [24.4.0] - Aspose Words Cloud for Dart 24.4 Release Notes

- Added the 'MergeWithNext' method to merge a section with the next one.
- Added the 'LockAspectRatio' propperty for DrawingObjectInsert and DrawingObjectUpdate methods.


## [24.3.0] - Aspose Words Cloud for Dart 24.3 Release Notes

- Added support for 'RemoveEmptyCells' option for the 'Cleanup' parameter in the insert 'MailMerge' API method.


## [24.1.0] - Aspose Words Cloud for Dart 24.1 Release Notes

- Added support for InsertAfterNode in the insert API without NodePath.
- Added support for inserting nodes (runs/rows/cells/bookmarks) without NodePath.
- Added support for transparency in the Watermark API.
- Added support for password and encryptedPassword fields in FileReference.
- Fixed missing href value in document responses.


## [23.12.0] - Aspose Words Cloud for Dart 23.12 Release Notes

- Properties Name, Text, StartRange, EndRange marked as required for InsertBookmark operation.
- Implemented DeleteOfficeMathObjects operation to delete all office math objects from document.
- Parameter ProtectionRequest was removed from the UnprotectDocument operation. Now removing protection from a document does not require a password.
- Model ProtectionRequest marked as deprecated, please use ProtectionRequestV2 instead for perform ProtectDocument operation. To change the password or protection type of protected document, the old password is no required.
- Added fields Password and EncryptedPassword to FileReference for documents encrypted by password.
- Removed parameter encryptedPassword2 from CompareDocument method. Please use FileReference password instead.


## [23.11.0] - Aspose Words Cloud for Dart 23.11 Release Notes

- Support of required properties in models.
- Property StyleName marked as required for InsertStyle operation.
- Property StyleName marked as required for CopyStyle operation.
- Property StyleName marked as required for ApplyStyleToDocumentElement operation.
- Properties SdtType and Level marked as required for InsertStructuredDocumentTag operation.
- Property Text marked as required for InsertParagraphoperation.
- Property Value marked as required for CreateOrUpdateDocumentProperty operation.
- Property NewValue marked as required for ReplaceText operation.
- Property Text marked as required for ReplaceWithText operation.


## [23.9.0] - Aspose Words Cloud for Dart 23.9 Release Notes

- Support for class inheritance in responses from the server.


## [23.6.0] - Aspose Words Cloud for Dart 23.6 Release Notes

- Fix XMLHttpRequest in web applications.


## [23.5.0] - Aspose Words Cloud for Dart 23.5 Release Notes

- Added InsertSection method.


## [23.4.0] - Aspose Words Cloud for Dart 23.4 Release Notes

- Added new type of RangeEndIdentifier for RangeApi: document:end


## [23.3.0] - Aspose Words Cloud for Dart 23.3 Release Notes

- Fix compatibility between CreateDocument API and Dropbox storage.
- Fix compatibility for property PageCount for FixedPageSaveOptionsData.


## [23.2.0] - Aspose Words Cloud for Dart 23.2 Release Notes

- Added operations to manipulate with Structure Document Tags (SDT) in documents.


## [23.1.0] - Aspose Words Cloud for Dart 23.1 Release Notes

- Various changes related to stability and performance


## [22.12.0] - Aspose Words Cloud for Dart 22.12 Release Notes

- Various changes related to stability and performance


## [22.11.0] - Aspose Words Cloud for Dart 22.11 Release Notes

- Added 'EmbedAttachments' property for PdfSaveOptionsData class.


## [22.10.0] - Aspose Words Cloud for Dart 22.10 Release Notes

- Added 'CacheHeaderFooterShapes' property for PdfSaveOptionsData class.
- FileReference structure has been added that allows to determine how the document will be accessed: from the remote storage, or loaded directly in the request.
- The 'AppendDocument' and 'AppendDocumentOnline' methods takes a 'FileReference' instead of an 'href' property.
- Added property 'StartingNumber' for 'PageNumbers' class.
- Added property 'GlobalCultureName' for 'FieldOptions' class.


## [22.9.0] - Aspose Words Cloud for Dart 22.9 Release Notes

- CompressDocument method now can handle images.
- Added support to convert password protected document using ConvertDocument API.


## [22.8.0] - Aspose Words Cloud for Dart 22.8 Release Notes

- Added optional loadEncoding and password parameters for ConvertDocument API method.


## [22.7.0] - Aspose Words Cloud for Dart 22.7 Release Notes

- Expand 'AppendDocument' API method to support 'ImageEntryList' for directly appending images to documents and another images.
- Added 'CompressDocument' API method to support compression and resizing images inside the document for reduce the size of the document.


## [22.6.0] - Aspose Words Cloud for Dart 22.6 Release Notes

- Added 'DeleteBookmark' and 'DeleteBookmarkOnline' API methods for delete bookmarks by name from the document.
- Added 'DeleteBookmarks' and 'DeleteBookmarksOnline' API methods for delete all bookmarks from the document.
- Added 'InsertBookmark' and 'InsertBookmarkOnline' API methods for create new bookmarks in the document.
- Support all save formats for 'CreateDocument' operation.


## [22.5.0] - Aspose Words Cloud for Dart 22.5 Release Notes

- Internal API fixes and improvments.


## [22.4.0] - Aspose Words Cloud for Dart 22.4 Release Notes

- Added ExportShapesAsSvg to HtmlSaveOption.
- Added new endpoint '~/styles/copy_from'.


## [22.3.0] - Aspose Words Cloud for Dart 22.3 Release Notes

- Online methods returns the dictionary of files with included original filename as key instead of single file content in responses.
- Parameters contained sensitive data should be passed in encrypted form. Names of the parameters have 'encrypted' prefix.
- Added Encrypt method to encrypt data on the API public key. Use it to prepare values for parameters required encrypted data.
- Changed type of enumerations for members of SaveOptionsData and other inherited classes from string to enum.


## [22.2.0] - Aspose Words Cloud for Dart 22.2 Release Notes

- Made 'SaveOprionsData.SaveFormat' property readonly with default value.
- Added subclasses for all formats of SaveOprionsData with specified SaveFormat.
- 'SaveOptionsData', 'FixedPageSaveOptionsData', 'ImageSaveOptionsData', 'OoxmlSaveOptionsData', 'TxtSaveOptionsBaseData' classes now is abstract.


## [22.1.0] - Aspose Words Cloud for Dart 22.1 Release Notes

- Added 'FieldOptions.FieldUpdateCultureName' to set Culture for fields
- Added 'DocumentEntry.Password' to set an encrypted password for appending document
- Added 'encryptedPassword2' query parameter to CompareDocuments to set an encrypted password for the second comparing document


## [21.12.0] - Aspose Words Cloud for Dart 21.12 Release Notes

- Added FieldOptions parameter to mail merge operations
- Added timeout parameter to api configuration


## [21.11.0] - Aspose Words Cloud for Dart 21.11 Release Notes

- Support encryption of 'CommonRequest.Password'. Automatic encryption of all passwords sent to the API server as request parameters.

## [21.10.0] - Aspose Words Cloud for Dart 21.10 Release Notes

- Removed 'GraphicsQualityOptions' image save option as it no longer supported.
- Added query parameter 'displayIntermediateResults' for batch requests. If 'false', the last response in batch will be returned only. Default is 'true'
- Added 'JsonDataLoadOptions' and 'XmlDataLoadOptions' to 'ReportEngineSettings'


## [21.8.0] - Aspose Words Cloud for Dart 21.8 Release Notes

- Added new api methods to get, insert, update or delete custom xml parts from documents.
- Added parameter 'ResultDocumentFormat' to Compare API
- Added 'ExportLanguageToSpanTag' pdf save option
- Added 'FlatOpcXmlMappingOnly' save option


## [21.7.0] - Aspose Words Cloud for Dart 21.7 Release Notes

- ImlRenderingMode option introduced witch is used to determine how ink (InkML) objects are rendered
- MaxCharactersPerLine option introduced which is used to specify the maximum number of characters per one line
- Added new API method to get a RSA public key to encrypt document passwords
- Added encryptedPassword common query option to pass an encrypted document password


## [21.6.0] - Aspose Words Cloud for Dart 21.6 Release Notes

- Implemented beta version of CompareDocumentOnline feature with both document sending in request
- CompareDocument method now can handle PDF files
- AcceptAllRevisionsBeforeComparison option introduced which is used to specify if accept all revisions before comparison


## [21.5.0] - Aspose Words Cloud for Dart 21.5 Release Notes

- Update dependencies in sdk


## [21.4.0] - Aspose Words Cloud for Dart 21.4 Release Notes

- Removed obsolete pdf save option 'EscapeUri'
- SaveOptions now contains CustomTimeZoneInfo to set custom timezone when SdtType.Date structured document tag updated from custom XML
- Url of child requests in batch can be full now (earlier it can be only relative)
- Added 'RquestId' header to all responses
- Support batch requests
- Added DependsOn and ResultOf features support for batch requests

## [21.3.0] - Aspose Words Cloud for Dart 21.3 Release Notes

- Added 'UpdateCreatedTimeProperty' save option
- Added Tables into HeaderFooter so it's possible to address paragraphs inside table which is located in headerfooter (sections/0/headersfooters/1/tables/0/rows/0/cells/0/paragraphs/0)


## [21.2.0] - Aspose Words Cloud for Dart 21.2 Release Notes

- Added delete all comments method


## [21.1.0] - Aspose Words Cloud for Dart 21.1 Release Notes

- Added online version for all API methods


## [20.11.0] - Aspose Words Cloud for Dart 20.11 Release Notes

- In configuration json file appSid / appKey has been replaced to clientId / clientSecret.
- In Words API initialization methods clientId parameter precedes clientSecret parameter.


## [20.10.0] - Aspose Words Cloud for Dart 20.10 Release Notes

- Internal API changes.
- First released version of Dart SDK.

## [20.9.0] - Aspose Words Cloud for Dart 20.9 Release Notes

- Added Batch API feature


## [20.8.0] - Aspose Words Cloud for Dart 20.8 Release Notes

- Added new api method (PUT '/words/{name}/compatibility/optimize') which is allows to optimize the document contents as well as default Aspose.Words behavior to a particular versions of MS Word
- Added 'ApplyBaseDocumentHeadersAndFootersToAppendingDocuments' option to 'DocumentEntryList' for AppendDocument API
- WithoutNodePath methods have been removed, pass null values instead


## [20.7.0] - Aspose Words Cloud for Dart 20.7 Release Notes

- Added 'Markdown' save format
- Added endpoint to update paragraph format without node path (PUT '/words/{name}/paragraphs/{index}/format')


## [20.6.0] - Aspose Words Cloud for Dart 20.6 Release Notes

- Added new methods:
  - DeleteAllParagraphTabStopsWithoutNodePath
  - DeleteParagraphTabStopWithoutNodePath
  - GetParagraphTabStopsWithoutNodePath
  - InsertOrUpdateParagraphTabStopWithoutNodePath
  - InsertParagraphWithoutNodePath
  - UpdateParagraphFormatWithoutNodePath
  - UpdateParagraphListFormatWithoutNodePath
  - DeleteParagraphListFormatWithoutNodePath
- DrawingObject related methods have been changed body content. Special request classes are introduced instead of strings.
- InsertOrUpdateParagraphTabStop, DeleteParagraphTabStop methods have been changed parameter order
- OoxmlSaveOptionsData.CompressionLevel property has been added


## [20.5.0] - Aspose Words Cloud for Dart 20.5 Release Notes

- Added methods to work with Word document lists
  - GetLists
  - GetList
  - InsertList
  - UpdateList
  - UpdateListLevel
- Added methods to work with styles
  - GetStyles
  - UpdateStyle
  - InsertStyle
  - CopyStyle
  - GetStyleFromDocumentElement
  - ApplyStyleToDocumentElement
- Added methods to work with paragraph list format
  - GetParagraphListFormat
  - GetParagraphListFormatWithoutNodePath
  - UpdateParagraphListFormat
  - DeleteParagraphListFormat
- Added methods to work with paragraph tab stops
  - GetParagraphTabStops
  - InsertOrUpdateParagraphTabStop
  - DeleteAllParagraphTabStops
  - DeleteParagraphTabStop
- Added methods to build reports
  - BuildReport
  - BuildReportOnline
- Added Shading property to ParagraphFormat
