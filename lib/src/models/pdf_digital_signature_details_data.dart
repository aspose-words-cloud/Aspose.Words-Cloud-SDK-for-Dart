/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="pdf_digital_signature_details_data.dart">
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

/// Container class for details of digital signature.
class PdfDigitalSignatureDetailsData implements ModelBase {
  /// Gets or sets the certificate's filename using for signing.
  String? _certificateFilename;

  String? get certificateFilename => _certificateFilename;
  set certificateFilename(String? val) => _certificateFilename = val;


  /// Gets or sets the hash algorithm.
  PdfDigitalSignatureDetailsData_HashAlgorithmEnum? _hashAlgorithm;

  PdfDigitalSignatureDetailsData_HashAlgorithmEnum? get hashAlgorithm => _hashAlgorithm;
  set hashAlgorithm(PdfDigitalSignatureDetailsData_HashAlgorithmEnum? val) => _hashAlgorithm = val;


  /// Gets or sets the location of the signing.
  String? _location;

  String? get location => _location;
  set location(String? val) => _location = val;


  /// Gets or sets the reason for the signing.
  String? _reason;

  String? get reason => _reason;
  set reason(String? val) => _reason = val;


  /// Gets or sets the date of the signing.
  DateTime? _signatureDate;

  DateTime? get signatureDate => _signatureDate;
  set signatureDate(DateTime? val) => _signatureDate = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PdfDigitalSignatureDetailsData data model.');
    }

    if (json.containsKey('CertificateFilename')) {
      certificateFilename = json['CertificateFilename'] as String;
    } else {
      certificateFilename = null;
    }

    if (json.containsKey('HashAlgorithm')) {
      switch (json['HashAlgorithm'] as String) {
        case 'Sha256': hashAlgorithm = PdfDigitalSignatureDetailsData_HashAlgorithmEnum.sha256; break;
        case 'Sha384': hashAlgorithm = PdfDigitalSignatureDetailsData_HashAlgorithmEnum.sha384; break;
        case 'Sha512': hashAlgorithm = PdfDigitalSignatureDetailsData_HashAlgorithmEnum.sha512; break;
        case 'RipeMD160': hashAlgorithm = PdfDigitalSignatureDetailsData_HashAlgorithmEnum.ripeMD160; break;
        default: hashAlgorithm = null; break;
      }
    } else {
      hashAlgorithm = null;
    }

    if (json.containsKey('Location')) {
      location = json['Location'] as String;
    } else {
      location = null;
    }

    if (json.containsKey('Reason')) {
      reason = json['Reason'] as String;
    } else {
      reason = null;
    }

    if (json.containsKey('SignatureDate')) {
      signatureDate = DateTime.parse(json['SignatureDate'] as String);
    } else {
      signatureDate = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (certificateFilename != null) {
      _result['CertificateFilename'] = certificateFilename!;
    }

    if (hashAlgorithm != null) {
      switch (hashAlgorithm!) {
        case PdfDigitalSignatureDetailsData_HashAlgorithmEnum.sha256: _result['HashAlgorithm'] = 'Sha256'; break;
        case PdfDigitalSignatureDetailsData_HashAlgorithmEnum.sha384: _result['HashAlgorithm'] = 'Sha384'; break;
        case PdfDigitalSignatureDetailsData_HashAlgorithmEnum.sha512: _result['HashAlgorithm'] = 'Sha512'; break;
        case PdfDigitalSignatureDetailsData_HashAlgorithmEnum.ripeMD160: _result['HashAlgorithm'] = 'RipeMD160'; break;
        default: break;
      }
    }

    if (location != null) {
      _result['Location'] = location!;
    }

    if (reason != null) {
      _result['Reason'] = reason!;
    }

    if (signatureDate != null) {
      _result['SignatureDate'] = signatureDate!.toIso8601String();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
  }
}

/// Gets or sets the hash algorithm.
enum PdfDigitalSignatureDetailsData_HashAlgorithmEnum
{ 
  sha256,
  sha384,
  sha512,
  ripeMD160
}

