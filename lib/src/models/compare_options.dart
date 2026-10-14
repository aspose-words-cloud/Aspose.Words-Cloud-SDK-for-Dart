/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="compare_options.dart">
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

/// DTO container with compare documents options.
class CompareOptions implements ModelBase {
  /// Gets or sets whether accept revisions before comparison or not.
  bool? _acceptAllRevisionsBeforeComparison;

  bool? get acceptAllRevisionsBeforeComparison => _acceptAllRevisionsBeforeComparison;
  set acceptAllRevisionsBeforeComparison(bool? val) => _acceptAllRevisionsBeforeComparison = val;


  /// Gets or sets the option indicating whether changes are tracked by character or by word.
  CompareOptions_GranularityEnum? _granularity;

  CompareOptions_GranularityEnum? get granularity => _granularity;
  set granularity(CompareOptions_GranularityEnum? val) => _granularity = val;


  /// Gets or sets a value indicating whether documents comparison is case insensitive. By default comparison is case sensitive.
  bool? _ignoreCaseChanges;

  bool? get ignoreCaseChanges => _ignoreCaseChanges;
  set ignoreCaseChanges(bool? val) => _ignoreCaseChanges = val;


  /// Gets or sets a value indicating whether comments content is ignored. By default comments are not ignored.
  bool? _ignoreComments;

  bool? get ignoreComments => _ignoreComments;
  set ignoreComments(bool? val) => _ignoreComments = val;


  /// Gets or sets a value indicating whether fields content is ignored. By default fields are not ignored.
  bool? _ignoreFields;

  bool? get ignoreFields => _ignoreFields;
  set ignoreFields(bool? val) => _ignoreFields = val;


  /// Gets or sets a value indicating whether footnotes/endnotes content is ignored. By default footnotes/endnotes are not ignored.
  bool? _ignoreFootnotes;

  bool? get ignoreFootnotes => _ignoreFootnotes;
  set ignoreFootnotes(bool? val) => _ignoreFootnotes = val;


  /// Gets or sets a value indicating whether formatting is ignored. By default document formatting is not ignored.
  bool? _ignoreFormatting;

  bool? get ignoreFormatting => _ignoreFormatting;
  set ignoreFormatting(bool? val) => _ignoreFormatting = val;


  /// Gets or sets a value indicating whether headers and footers content is ignored. By default headers and footers are not ignored.
  bool? _ignoreHeadersAndFooters;

  bool? get ignoreHeadersAndFooters => _ignoreHeadersAndFooters;
  set ignoreHeadersAndFooters(bool? val) => _ignoreHeadersAndFooters = val;


  /// Gets or sets a value indicating whether tables content is ignored. By default tables are not ignored.
  bool? _ignoreTables;

  bool? get ignoreTables => _ignoreTables;
  set ignoreTables(bool? val) => _ignoreTables = val;


  /// Gets or sets a value indicating whether textboxes content is ignored. By default textboxes are not ignored.
  bool? _ignoreTextboxes;

  bool? get ignoreTextboxes => _ignoreTextboxes;
  set ignoreTextboxes(bool? val) => _ignoreTextboxes = val;


  /// Gets or sets the option that controls which document shall be used as a target during comparison.
  CompareOptions_TargetEnum? _target;

  CompareOptions_TargetEnum? get target => _target;
  set target(CompareOptions_TargetEnum? val) => _target = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize CompareOptions data model.');
    }

    if (json.containsKey('AcceptAllRevisionsBeforeComparison')) {
      acceptAllRevisionsBeforeComparison = json['AcceptAllRevisionsBeforeComparison'] as bool;
    } else {
      acceptAllRevisionsBeforeComparison = null;
    }

    if (json.containsKey('Granularity')) {
      switch (json['Granularity'] as String) {
        case 'CharLevel': granularity = CompareOptions_GranularityEnum.charLevel; break;
        case 'WordLevel': granularity = CompareOptions_GranularityEnum.wordLevel; break;
        default: granularity = null; break;
      }
    } else {
      granularity = null;
    }

    if (json.containsKey('IgnoreCaseChanges')) {
      ignoreCaseChanges = json['IgnoreCaseChanges'] as bool;
    } else {
      ignoreCaseChanges = null;
    }

    if (json.containsKey('IgnoreComments')) {
      ignoreComments = json['IgnoreComments'] as bool;
    } else {
      ignoreComments = null;
    }

    if (json.containsKey('IgnoreFields')) {
      ignoreFields = json['IgnoreFields'] as bool;
    } else {
      ignoreFields = null;
    }

    if (json.containsKey('IgnoreFootnotes')) {
      ignoreFootnotes = json['IgnoreFootnotes'] as bool;
    } else {
      ignoreFootnotes = null;
    }

    if (json.containsKey('IgnoreFormatting')) {
      ignoreFormatting = json['IgnoreFormatting'] as bool;
    } else {
      ignoreFormatting = null;
    }

    if (json.containsKey('IgnoreHeadersAndFooters')) {
      ignoreHeadersAndFooters = json['IgnoreHeadersAndFooters'] as bool;
    } else {
      ignoreHeadersAndFooters = null;
    }

    if (json.containsKey('IgnoreTables')) {
      ignoreTables = json['IgnoreTables'] as bool;
    } else {
      ignoreTables = null;
    }

    if (json.containsKey('IgnoreTextboxes')) {
      ignoreTextboxes = json['IgnoreTextboxes'] as bool;
    } else {
      ignoreTextboxes = null;
    }

    if (json.containsKey('Target')) {
      switch (json['Target'] as String) {
        case 'Current': target = CompareOptions_TargetEnum.current; break;
        case 'New': target = CompareOptions_TargetEnum.newValue; break;
        default: target = null; break;
      }
    } else {
      target = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (acceptAllRevisionsBeforeComparison != null) {
      _result['AcceptAllRevisionsBeforeComparison'] = acceptAllRevisionsBeforeComparison!;
    }

    if (granularity != null) {
      switch (granularity!) {
        case CompareOptions_GranularityEnum.charLevel: _result['Granularity'] = 'CharLevel'; break;
        case CompareOptions_GranularityEnum.wordLevel: _result['Granularity'] = 'WordLevel'; break;
        default: break;
      }
    }

    if (ignoreCaseChanges != null) {
      _result['IgnoreCaseChanges'] = ignoreCaseChanges!;
    }

    if (ignoreComments != null) {
      _result['IgnoreComments'] = ignoreComments!;
    }

    if (ignoreFields != null) {
      _result['IgnoreFields'] = ignoreFields!;
    }

    if (ignoreFootnotes != null) {
      _result['IgnoreFootnotes'] = ignoreFootnotes!;
    }

    if (ignoreFormatting != null) {
      _result['IgnoreFormatting'] = ignoreFormatting!;
    }

    if (ignoreHeadersAndFooters != null) {
      _result['IgnoreHeadersAndFooters'] = ignoreHeadersAndFooters!;
    }

    if (ignoreTables != null) {
      _result['IgnoreTables'] = ignoreTables!;
    }

    if (ignoreTextboxes != null) {
      _result['IgnoreTextboxes'] = ignoreTextboxes!;
    }

    if (target != null) {
      switch (target!) {
        case CompareOptions_TargetEnum.current: _result['Target'] = 'Current'; break;
        case CompareOptions_TargetEnum.newValue: _result['Target'] = 'New'; break;
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
  }
}

/// Gets or sets the option indicating whether changes are tracked by character or by word.
enum CompareOptions_GranularityEnum
{ 
  charLevel,
  wordLevel
}

/// Gets or sets the option that controls which document shall be used as a target during comparison.
enum CompareOptions_TargetEnum
{ 
  current,
  newValue
}

