/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="link.dart">
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

/// Provides information for the object link.
/// This is supposed to be an atom:link, therefore it should have all attributes specified here http://tools.ietf.org/html/rfc4287#section-4.2.7.
class Link implements ModelBase {
  /// Gets or sets the "href" attribute with the link's IRI. atom:link elements MUST have an href attribute, whose value MUST be a IRI reference.
  String? _href;

  String? get href => _href;
  set href(String? val) => _href = val;


  /// Gets or sets the option that controls whether atom:link elements MAY have a "rel" attribute that indicates the link relation type.  If the "rel" attribute is not present, the link element MUST be interpreted as if the link relation type is "alternate".
  String? _rel;

  String? get rel => _rel;
  set rel(String? val) => _rel = val;


  /// Gets or sets the "title" attribute, that conveys human-readable information about the link. The content of the "title" attribute is Language-Sensitive.
  String? _title;

  String? get title => _title;
  set title(String? val) => _title = val;


  /// Gets or sets the "type" attribute. The "type" attribute's value is an advisory media type: it is a hint about the type of the representation that is expected to be returned when the value of the href attribute is dereferenced. Note that the type attribute does not override the actual media type returned with the representation.
  String? _type;

  String? get type => _type;
  set type(String? val) => _type = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Link data model.');
    }

    if (json.containsKey('Href')) {
      href = json['Href'] as String;
    } else {
      href = null;
    }

    if (json.containsKey('Rel')) {
      rel = json['Rel'] as String;
    } else {
      rel = null;
    }

    if (json.containsKey('Title')) {
      title = json['Title'] as String;
    } else {
      title = null;
    }

    if (json.containsKey('Type')) {
      type = json['Type'] as String;
    } else {
      type = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (href != null) {
      _result['Href'] = href!;
    }

    if (rel != null) {
      _result['Rel'] = rel!;
    }

    if (title != null) {
      _result['Title'] = title!;
    }

    if (type != null) {
      _result['Type'] = type!;
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


