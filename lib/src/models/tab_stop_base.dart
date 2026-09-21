/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="tab_stop_base.dart">
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

/// Base class for paragraph format tab stop DTO.
abstract class TabStopBase implements ModelBase {
  /// Gets or sets the alignment of text at this tab stop.
  TabStopBase_AlignmentEnum? _alignment;

  TabStopBase_AlignmentEnum? get alignment => _alignment;
  set alignment(TabStopBase_AlignmentEnum? val) => _alignment = val;


  /// Gets or sets the type of the leader line displayed under the tab character.
  TabStopBase_LeaderEnum? _leader;

  TabStopBase_LeaderEnum? get leader => _leader;
  set leader(TabStopBase_LeaderEnum? val) => _leader = val;


  /// Gets or sets the position of the tab stop in points.
  double? _position;

  double? get position => _position;
  set position(double? val) => _position = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TabStopBase data model.');
    }

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
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (alignment != null) {
      switch (alignment!) {
        case TabStopBase_AlignmentEnum.left: _result['Alignment'] = 'Left'; break;
        case TabStopBase_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case TabStopBase_AlignmentEnum.right: _result['Alignment'] = 'Right'; break;
        case TabStopBase_AlignmentEnum.decimal: _result['Alignment'] = 'Decimal'; break;
        case TabStopBase_AlignmentEnum.bar: _result['Alignment'] = 'Bar'; break;
        case TabStopBase_AlignmentEnum.list: _result['Alignment'] = 'List'; break;
        case TabStopBase_AlignmentEnum.clear: _result['Alignment'] = 'Clear'; break;
        default: break;
      }
    }

    if (leader != null) {
      switch (leader!) {
        case TabStopBase_LeaderEnum.none: _result['Leader'] = 'None'; break;
        case TabStopBase_LeaderEnum.dots: _result['Leader'] = 'Dots'; break;
        case TabStopBase_LeaderEnum.dashes: _result['Leader'] = 'Dashes'; break;
        case TabStopBase_LeaderEnum.line: _result['Leader'] = 'Line'; break;
        case TabStopBase_LeaderEnum.heavy: _result['Leader'] = 'Heavy'; break;
        case TabStopBase_LeaderEnum.middleDot: _result['Leader'] = 'MiddleDot'; break;
        default: break;
      }
    }

    if (position != null) {
      _result['Position'] = position!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    if (alignment == null)
    {
        throw new ApiException(400, 'Property Alignment in TabStopBase is required.');
    }
    if (leader == null)
    {
        throw new ApiException(400, 'Property Leader in TabStopBase is required.');
    }
    if (position == null)
    {
        throw new ApiException(400, 'Property Position in TabStopBase is required.');
    }
  }
}

/// Gets or sets the alignment of text at this tab stop.
enum TabStopBase_AlignmentEnum
{ 
  left,
  center,
  right,
  decimal,
  bar,
  list,
  clear
}

/// Gets or sets the type of the leader line displayed under the tab character.
enum TabStopBase_LeaderEnum
{ 
  none,
  dots,
  dashes,
  line,
  heavy,
  middleDot
}

