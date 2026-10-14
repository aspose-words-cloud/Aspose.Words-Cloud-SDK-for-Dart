/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_info.dart">
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

/// DTO container with a single document list.
class ListInfo extends LinkElement {
  /// Gets or sets the unique identifier of the list.
  /// You do not normally need to use this property. But if you use it, you normally do so in conjunction with the Aspose.Words.Lists.ListCollection.GetListByListId(System.Int32) method to find a list by its identifier.
  int? _listId;

  int? get listId => _listId;
  set listId(int? val) => _listId = val;


  /// Gets or sets a value indicating whether the list contains 9 levels; false when 1 level.
  /// The lists that you create with Aspose.Words are always multi-level lists and contain 9 levels. Microsoft Word 2003 and later always create multi-level lists with 9 levels. But in some documents, created with earlier versions of Microsoft Word you might encounter lists that have 1 level only.
  bool? _isMultiLevel;

  bool? get isMultiLevel => _isMultiLevel;
  set isMultiLevel(bool? val) => _isMultiLevel = val;


  /// Gets or sets a value indicating whether list should be restarted at each section. The default value is false.
  /// This option is supported only in RTF, DOC and DOCX document formats. This option will be written to DOCX only if Aspose.Words.Saving.OoxmlCompliance is higher then Aspose.Words.Saving.OoxmlCompliance.Ecma376_2006.
  bool? _isRestartAtEachSection;

  bool? get isRestartAtEachSection => _isRestartAtEachSection;
  set isRestartAtEachSection(bool? val) => _isRestartAtEachSection = val;


  /// Gets or sets a value indicating whether this list is a definition of a list style.
  /// When this property is true, the Aspose.Words.Lists.List.Style property returns the list style that this list defines. By modifying properties of a list that defines a list style, you modify The properties of the list style. A list that is a definition of a list style cannot be applied directly to paragraphs to make them numbered. Aspose.Words.Lists.List.Style Aspose.Words.Lists.List.IsListStyleReference.
  bool? _isListStyleDefinition;

  bool? get isListStyleDefinition => _isListStyleDefinition;
  set isListStyleDefinition(bool? val) => _isListStyleDefinition = val;


  /// Gets or sets a value indicating whether this list is a reference to a list style.
  /// Note, modifying properties of a list that is a reference to list style has no effect. The list formatting specified in the list style itself always takes precedence. Aspose.Words.Lists.List.Style Aspose.Words.Lists.List.IsListStyleDefinition.
  bool? _isListStyleReference;

  bool? get isListStyleReference => _isListStyleReference;
  set isListStyleReference(bool? val) => _isListStyleReference = val;


  /// Gets or sets the list style that this list references or defines.
  /// If this list is not associated with a list style, the property will return null. A list could be a reference to a list style, in this case Aspose.Words.Lists.List.IsListStyleReference will be true. A list could be a definition of a list style, in this case Aspose.Words.Lists.List.IsListStyleDefinition will be true. Such a list cannot be applied to paragraphs in the document directly.
  Style? _style;

  Style? get style => _style;
  set style(Style? val) => _style = val;


  /// Gets or sets the collection of list levels for this list.
  /// Use this property to access and modify formatting individual to each level of the list.
  ListLevels? _listLevels;

  ListLevels? get listLevels => _listLevels;
  set listLevels(ListLevels? val) => _listLevels = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ListInfo data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('ListId')) {
      listId = json['ListId'] as int;
    } else {
      listId = null;
    }

    if (json.containsKey('IsMultiLevel')) {
      isMultiLevel = json['IsMultiLevel'] as bool;
    } else {
      isMultiLevel = null;
    }

    if (json.containsKey('IsRestartAtEachSection')) {
      isRestartAtEachSection = json['IsRestartAtEachSection'] as bool;
    } else {
      isRestartAtEachSection = null;
    }

    if (json.containsKey('IsListStyleDefinition')) {
      isListStyleDefinition = json['IsListStyleDefinition'] as bool;
    } else {
      isListStyleDefinition = null;
    }

    if (json.containsKey('IsListStyleReference')) {
      isListStyleReference = json['IsListStyleReference'] as bool;
    } else {
      isListStyleReference = null;
    }

    if (json.containsKey('Style')) {
      style = ModelBase.createInstance< Style >(json['Style'] as Map<String, dynamic>);
    } else {
      style = null;
    }

    if (json.containsKey('ListLevels')) {
      listLevels = ModelBase.createInstance< ListLevels >(json['ListLevels'] as Map<String, dynamic>);
    } else {
      listLevels = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (listId != null) {
      _result['ListId'] = listId!;
    }

    if (isMultiLevel != null) {
      _result['IsMultiLevel'] = isMultiLevel!;
    }

    if (isRestartAtEachSection != null) {
      _result['IsRestartAtEachSection'] = isRestartAtEachSection!;
    }

    if (isListStyleDefinition != null) {
      _result['IsListStyleDefinition'] = isListStyleDefinition!;
    }

    if (isListStyleReference != null) {
      _result['IsListStyleReference'] = isListStyleReference!;
    }

    if (style != null) {
      _result['Style'] = style!.serialize();
    }

    if (listLevels != null) {
      _result['ListLevels'] = listLevels!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (listId == null)
    {
        throw new ApiException(400, 'Property ListId in ListInfo is required.');
    }
    if (isMultiLevel == null)
    {
        throw new ApiException(400, 'Property IsMultiLevel in ListInfo is required.');
    }
    if (isRestartAtEachSection == null)
    {
        throw new ApiException(400, 'Property IsRestartAtEachSection in ListInfo is required.');
    }
    if (isListStyleDefinition == null)
    {
        throw new ApiException(400, 'Property IsListStyleDefinition in ListInfo is required.');
    }
    if (isListStyleReference == null)
    {
        throw new ApiException(400, 'Property IsListStyleReference in ListInfo is required.');
    }

    style?.validate();



    listLevels?.validate();

  }
}


