/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="document.dart">
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

import '../../aspose_words_cloud.dart';

/// Represents Words document DTO.
class Document implements ModelBase {
  /// Gets or sets the list of links that originate from this document.
  List<Link?>? _links;

  List<Link?>? get links => _links;
  set links(List<Link?>? val) => _links = val;


  /// Gets or sets the document properties.
  DocumentProperties? _documentProperties;

  DocumentProperties? get documentProperties => _documentProperties;
  set documentProperties(DocumentProperties? val) => _documentProperties = val;


  /// Gets or sets the name of the file.
  String? _fileName;

  String? get fileName => _fileName;
  set fileName(String? val) => _fileName = val;


  /// Gets or sets the file size.
  int? _fileSize;

  int? get fileSize => _fileSize;
  set fileSize(int? val) => _fileSize = val;


  /// Gets or sets a value indicating whether the document is encrypted and requires a password to open.
  bool? _isEncrypted;

  bool? get isEncrypted => _isEncrypted;
  set isEncrypted(bool? val) => _isEncrypted = val;


  /// Gets or sets a value indicating whether the document contains a digital signature. This property merely informs that a digital signature is present on a document, but it does not specify whether the signature is valid or not.
  bool? _isSigned;

  bool? get isSigned => _isSigned;
  set isSigned(bool? val) => _isSigned = val;


  /// Gets or sets the original format of the document.
  Document_SourceFormatEnum? _sourceFormat;

  Document_SourceFormatEnum? get sourceFormat => _sourceFormat;
  set sourceFormat(Document_SourceFormatEnum? val) => _sourceFormat = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Document data model.');
    }

    if (json.containsKey('Links')) {
      // Array processing
      links = <Link>[];
      for(final _element in json['Links']) {
        links!.add(ModelBase.createInstance< Link >(_element as Map<String, dynamic>));
      }
    } else {
      links = null;
    }

    if (json.containsKey('DocumentProperties')) {
      documentProperties = ModelBase.createInstance< DocumentProperties >(json['DocumentProperties'] as Map<String, dynamic>);
    } else {
      documentProperties = null;
    }

    if (json.containsKey('FileName')) {
      fileName = json['FileName'] as String;
    } else {
      fileName = null;
    }

    if (json.containsKey('FileSize')) {
      fileSize = json['FileSize'] as int;
    } else {
      fileSize = null;
    }

    if (json.containsKey('IsEncrypted')) {
      isEncrypted = json['IsEncrypted'] as bool;
    } else {
      isEncrypted = null;
    }

    if (json.containsKey('IsSigned')) {
      isSigned = json['IsSigned'] as bool;
    } else {
      isSigned = null;
    }

    if (json.containsKey('SourceFormat')) {
      switch (json['SourceFormat'] as String) {
        case 'Unknown': sourceFormat = Document_SourceFormatEnum.unknown; break;
        case 'Doc': sourceFormat = Document_SourceFormatEnum.doc; break;
        case 'Dot': sourceFormat = Document_SourceFormatEnum.dot; break;
        case 'DocPreWord60': sourceFormat = Document_SourceFormatEnum.docPreWord60; break;
        case 'Docx': sourceFormat = Document_SourceFormatEnum.docx; break;
        case 'Docm': sourceFormat = Document_SourceFormatEnum.docm; break;
        case 'Dotx': sourceFormat = Document_SourceFormatEnum.dotx; break;
        case 'Dotm': sourceFormat = Document_SourceFormatEnum.dotm; break;
        case 'FlatOpc': sourceFormat = Document_SourceFormatEnum.flatOpc; break;
        case 'Rtf': sourceFormat = Document_SourceFormatEnum.rtf; break;
        case 'WordML': sourceFormat = Document_SourceFormatEnum.wordML; break;
        case 'Html': sourceFormat = Document_SourceFormatEnum.html; break;
        case 'Mhtml': sourceFormat = Document_SourceFormatEnum.mhtml; break;
        case 'Epub': sourceFormat = Document_SourceFormatEnum.epub; break;
        case 'Text': sourceFormat = Document_SourceFormatEnum.text; break;
        case 'Odt': sourceFormat = Document_SourceFormatEnum.odt; break;
        case 'Ott': sourceFormat = Document_SourceFormatEnum.ott; break;
        case 'Pdf': sourceFormat = Document_SourceFormatEnum.pdf; break;
        case 'Xps': sourceFormat = Document_SourceFormatEnum.xps; break;
        case 'Tiff': sourceFormat = Document_SourceFormatEnum.tiff; break;
        case 'Svg': sourceFormat = Document_SourceFormatEnum.svg; break;
        case 'Azw3': sourceFormat = Document_SourceFormatEnum.azw3; break;
        default: sourceFormat = null; break;
      }
    } else {
      sourceFormat = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (links != null) {
      _result['Links'] = links!.map((_element) => _element?.serialize()).toList();
    }

    if (documentProperties != null) {
      _result['DocumentProperties'] = documentProperties!.serialize();
    }

    if (fileName != null) {
      _result['FileName'] = fileName!;
    }

    if (fileSize != null) {
      _result['FileSize'] = fileSize!;
    }

    if (isEncrypted != null) {
      _result['IsEncrypted'] = isEncrypted!;
    }

    if (isSigned != null) {
      _result['IsSigned'] = isSigned!;
    }

    if (sourceFormat != null) {
      switch (sourceFormat!) {
        case Document_SourceFormatEnum.unknown: _result['SourceFormat'] = 'Unknown'; break;
        case Document_SourceFormatEnum.doc: _result['SourceFormat'] = 'Doc'; break;
        case Document_SourceFormatEnum.dot: _result['SourceFormat'] = 'Dot'; break;
        case Document_SourceFormatEnum.docPreWord60: _result['SourceFormat'] = 'DocPreWord60'; break;
        case Document_SourceFormatEnum.docx: _result['SourceFormat'] = 'Docx'; break;
        case Document_SourceFormatEnum.docm: _result['SourceFormat'] = 'Docm'; break;
        case Document_SourceFormatEnum.dotx: _result['SourceFormat'] = 'Dotx'; break;
        case Document_SourceFormatEnum.dotm: _result['SourceFormat'] = 'Dotm'; break;
        case Document_SourceFormatEnum.flatOpc: _result['SourceFormat'] = 'FlatOpc'; break;
        case Document_SourceFormatEnum.rtf: _result['SourceFormat'] = 'Rtf'; break;
        case Document_SourceFormatEnum.wordML: _result['SourceFormat'] = 'WordML'; break;
        case Document_SourceFormatEnum.html: _result['SourceFormat'] = 'Html'; break;
        case Document_SourceFormatEnum.mhtml: _result['SourceFormat'] = 'Mhtml'; break;
        case Document_SourceFormatEnum.epub: _result['SourceFormat'] = 'Epub'; break;
        case Document_SourceFormatEnum.text: _result['SourceFormat'] = 'Text'; break;
        case Document_SourceFormatEnum.odt: _result['SourceFormat'] = 'Odt'; break;
        case Document_SourceFormatEnum.ott: _result['SourceFormat'] = 'Ott'; break;
        case Document_SourceFormatEnum.pdf: _result['SourceFormat'] = 'Pdf'; break;
        case Document_SourceFormatEnum.xps: _result['SourceFormat'] = 'Xps'; break;
        case Document_SourceFormatEnum.tiff: _result['SourceFormat'] = 'Tiff'; break;
        case Document_SourceFormatEnum.svg: _result['SourceFormat'] = 'Svg'; break;
        case Document_SourceFormatEnum.azw3: _result['SourceFormat'] = 'Azw3'; break;
        default: break;
      }
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (isEncrypted == null)
    {
        throw new ApiException(400, 'Property IsEncrypted in Document is required.');
    }
    if (isSigned == null)
    {
        throw new ApiException(400, 'Property IsSigned in Document is required.');
    }
    if (sourceFormat == null)
    {
        throw new ApiException(400, 'Property SourceFormat in Document is required.');
    }

    for (final elementLinks in links ?? [])
    {
        elementLinks?.validate();
    }



    documentProperties?.validate();






  }
}

/// Gets or sets the original format of the document.
enum Document_SourceFormatEnum
{ 
  unknown,
  doc,
  dot,
  docPreWord60,
  docx,
  docm,
  dotx,
  dotm,
  flatOpc,
  rtf,
  wordML,
  html,
  mhtml,
  epub,
  text,
  odt,
  ott,
  pdf,
  xps,
  tiff,
  svg,
  azw3
}

