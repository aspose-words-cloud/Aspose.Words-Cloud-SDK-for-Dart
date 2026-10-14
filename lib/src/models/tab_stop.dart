/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="tab_stop.dart">
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

/// DTO container with paragraph format tab stop.
class TabStop extends TabStopBase {
  /// Gets or sets a value indicating whether this tab stop clears any existing tab stops in this position.
  bool? _isClear;

  bool? get isClear => _isClear;
  set isClear(bool? val) => _isClear = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TabStop data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Alignment')) {
      switch (json['Alignment'] as String) {
        case 'Left': alignment = TabStopBase_AlignmentEnum.left; break;
        case 'Center': alignment = TabStopBase_AlignmentEnum.center; break;
        case 'Right': alignment = TabStopBase_AlignmentEnum.right; break;
        case 'Decimal': alignment = TabStopBase_AlignmentEnum.decimal; break;
        case 'Bar': alignment = TabStopBase_AlignmentEnum.bar; break;
        case 'List': alignment = TabStopBase_AlignmentEnum.list; break;
        case 'Clear': alignment = TabStopBase_AlignmentEnum.clear; break;
        default: alignment = null; break;
      }
    } else {
      alignment = null;
    }

    if (json.containsKey('Leader')) {
      switch (json['Leader'] as String) {
        case 'None': leader = TabStopBase_LeaderEnum.none; break;
        case 'Dots': leader = TabStopBase_LeaderEnum.dots; break;
        case 'Dashes': leader = TabStopBase_LeaderEnum.dashes; break;
        case 'Line': leader = TabStopBase_LeaderEnum.line; break;
        case 'Heavy': leader = TabStopBase_LeaderEnum.heavy; break;
        case 'MiddleDot': leader = TabStopBase_LeaderEnum.middleDot; break;
        default: leader = null; break;
      }
    } else {
      leader = null;
    }

    if (json.containsKey('Position')) {
      position = json['Position'] as double;
    } else {
      position = null;
    }

    if (json.containsKey('IsClear')) {
      isClear = json['IsClear'] as bool;
    } else {
      isClear = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (isClear != null) {
      _result['IsClear'] = isClear!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (isClear == null)
    {
        throw new ApiException(400, 'Property IsClear in TabStop is required.');
    }
  }
}


