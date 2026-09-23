/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="header_footer_link.dart">
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

/// HeaderFooter link element.
class HeaderFooterLink extends LinkElement {
  /// Gets or sets the paragraph's text.
  HeaderFooterLink_TypeEnum? _type;

  HeaderFooterLink_TypeEnum? get type => _type;
  set type(HeaderFooterLink_TypeEnum? val) => _type = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize HeaderFooterLink data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('Type')) {
      switch (json['Type'] as String) {
        case 'HeaderEven': type = HeaderFooterLink_TypeEnum.headerEven; break;
        case 'HeaderPrimary': type = HeaderFooterLink_TypeEnum.headerPrimary; break;
        case 'FooterEven': type = HeaderFooterLink_TypeEnum.footerEven; break;
        case 'FooterPrimary': type = HeaderFooterLink_TypeEnum.footerPrimary; break;
        case 'HeaderFirst': type = HeaderFooterLink_TypeEnum.headerFirst; break;
        case 'FooterFirst': type = HeaderFooterLink_TypeEnum.footerFirst; break;
        default: type = null; break;
      }
    } else {
      type = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (type != null) {
      switch (type!) {
        case HeaderFooterLink_TypeEnum.headerEven: _result['Type'] = 'HeaderEven'; break;
        case HeaderFooterLink_TypeEnum.headerPrimary: _result['Type'] = 'HeaderPrimary'; break;
        case HeaderFooterLink_TypeEnum.footerEven: _result['Type'] = 'FooterEven'; break;
        case HeaderFooterLink_TypeEnum.footerPrimary: _result['Type'] = 'FooterPrimary'; break;
        case HeaderFooterLink_TypeEnum.headerFirst: _result['Type'] = 'HeaderFirst'; break;
        case HeaderFooterLink_TypeEnum.footerFirst: _result['Type'] = 'FooterFirst'; break;
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
    super.validate();
    if (type == null)
    {
        throw new ApiException(400, 'Property Type in HeaderFooterLink is required.');
    }
  }
}

/// Gets or sets the paragraph's text.
enum HeaderFooterLink_TypeEnum
{ 
  headerEven,
  headerPrimary,
  footerEven,
  footerPrimary,
  headerFirst,
  footerFirst
}

