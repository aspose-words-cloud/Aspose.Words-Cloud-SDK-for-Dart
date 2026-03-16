/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="office_math_object.dart">
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

/// DTO container with an OfficeMath object.
class OfficeMathObject extends OfficeMathLink {
  /// Gets or sets the content of a footnote.
  StoryChildNodes? _content;

  StoryChildNodes? get content => _content;
  set content(StoryChildNodes? val) => _content = val;


  /// Gets or sets the display format type of the OfficeMath object. This display format defines whether an equation is displayed inline with the text or displayed on its own line.
  /// Display format type has effect for top level Office Math only.Returned display format type is always Inline for nested Office Math.
  OfficeMathObject_DisplayTypeEnum? _displayType;

  OfficeMathObject_DisplayTypeEnum? get displayType => _displayType;
  set displayType(OfficeMathObject_DisplayTypeEnum? val) => _displayType = val;


  /// Gets or sets the justification of the OfficeMath object.
  /// Justification cannot be set to the Office Math with display format type Inline.Inline justification cannot be set to the Office Math with display format type Display.Corresponding DisplayType has to be set before setting Office Math justification.
  OfficeMathObject_JustificationEnum? _justification;

  OfficeMathObject_JustificationEnum? get justification => _justification;
  set justification(OfficeMathObject_JustificationEnum? val) => _justification = val;


  /// Gets or sets the type of the OfficeMath object.
  OfficeMathObject_MathObjectTypeEnum? _mathObjectType;

  OfficeMathObject_MathObjectTypeEnum? get mathObjectType => _mathObjectType;
  set mathObjectType(OfficeMathObject_MathObjectTypeEnum? val) => _mathObjectType = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize OfficeMathObject data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('NodeId')) {
      nodeId = json['NodeId'] as String;
    } else {
      nodeId = null;
    }

    if (json.containsKey('Content')) {
      content = ModelBase.createInstance< StoryChildNodes >(json['Content'] as Map<String, dynamic>);
    } else {
      content = null;
    }

    if (json.containsKey('DisplayType')) {
      switch (json['DisplayType'] as String) {
        case 'Display': displayType = OfficeMathObject_DisplayTypeEnum.display; break;
        case 'Inline': displayType = OfficeMathObject_DisplayTypeEnum.inline; break;
        default: displayType = null; break;
      }
    } else {
      displayType = null;
    }

    if (json.containsKey('Justification')) {
      switch (json['Justification'] as String) {
        case 'CenterGroup': justification = OfficeMathObject_JustificationEnum.centerGroup; break;
        case 'Default': justification = OfficeMathObject_JustificationEnum.defaultValue; break;
        case 'Center': justification = OfficeMathObject_JustificationEnum.center; break;
        case 'Left': justification = OfficeMathObject_JustificationEnum.left; break;
        case 'Right': justification = OfficeMathObject_JustificationEnum.right; break;
        case 'Inline': justification = OfficeMathObject_JustificationEnum.inline; break;
        default: justification = null; break;
      }
    } else {
      justification = null;
    }

    if (json.containsKey('MathObjectType')) {
      switch (json['MathObjectType'] as String) {
        case 'OMath': mathObjectType = OfficeMathObject_MathObjectTypeEnum.oMath; break;
        case 'OMathPara': mathObjectType = OfficeMathObject_MathObjectTypeEnum.oMathPara; break;
        case 'Accent': mathObjectType = OfficeMathObject_MathObjectTypeEnum.accent; break;
        case 'Bar': mathObjectType = OfficeMathObject_MathObjectTypeEnum.bar; break;
        case 'BorderBox': mathObjectType = OfficeMathObject_MathObjectTypeEnum.borderBox; break;
        case 'Box': mathObjectType = OfficeMathObject_MathObjectTypeEnum.box; break;
        case 'Delimiter': mathObjectType = OfficeMathObject_MathObjectTypeEnum.delimiter; break;
        case 'Degree': mathObjectType = OfficeMathObject_MathObjectTypeEnum.degree; break;
        case 'Argument': mathObjectType = OfficeMathObject_MathObjectTypeEnum.argument; break;
        case 'Array': mathObjectType = OfficeMathObject_MathObjectTypeEnum.array; break;
        case 'Fraction': mathObjectType = OfficeMathObject_MathObjectTypeEnum.fraction; break;
        case 'Denominator': mathObjectType = OfficeMathObject_MathObjectTypeEnum.denominator; break;
        case 'Numerator': mathObjectType = OfficeMathObject_MathObjectTypeEnum.numerator; break;
        case 'Function': mathObjectType = OfficeMathObject_MathObjectTypeEnum.function; break;
        case 'FunctionName': mathObjectType = OfficeMathObject_MathObjectTypeEnum.functionName; break;
        case 'GroupCharacter': mathObjectType = OfficeMathObject_MathObjectTypeEnum.groupCharacter; break;
        case 'Limit': mathObjectType = OfficeMathObject_MathObjectTypeEnum.limit; break;
        case 'LowerLimit': mathObjectType = OfficeMathObject_MathObjectTypeEnum.lowerLimit; break;
        case 'UpperLimit': mathObjectType = OfficeMathObject_MathObjectTypeEnum.upperLimit; break;
        case 'Matrix': mathObjectType = OfficeMathObject_MathObjectTypeEnum.matrix; break;
        case 'MatrixRow': mathObjectType = OfficeMathObject_MathObjectTypeEnum.matrixRow; break;
        case 'NAry': mathObjectType = OfficeMathObject_MathObjectTypeEnum.nAry; break;
        case 'Phantom': mathObjectType = OfficeMathObject_MathObjectTypeEnum.phantom; break;
        case 'Radical': mathObjectType = OfficeMathObject_MathObjectTypeEnum.radical; break;
        case 'SubscriptPart': mathObjectType = OfficeMathObject_MathObjectTypeEnum.subscriptPart; break;
        case 'SuperscriptPart': mathObjectType = OfficeMathObject_MathObjectTypeEnum.superscriptPart; break;
        case 'PreSubSuperscript': mathObjectType = OfficeMathObject_MathObjectTypeEnum.preSubSuperscript; break;
        case 'Subscript': mathObjectType = OfficeMathObject_MathObjectTypeEnum.subscript; break;
        case 'SubSuperscript': mathObjectType = OfficeMathObject_MathObjectTypeEnum.subSuperscript; break;
        case 'Superscript': mathObjectType = OfficeMathObject_MathObjectTypeEnum.superscript; break;
        case 'None': mathObjectType = OfficeMathObject_MathObjectTypeEnum.none; break;
        default: mathObjectType = null; break;
      }
    } else {
      mathObjectType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (content != null) {
      _result['Content'] = content!.serialize();
    }

    if (displayType != null) {
      switch (displayType!) {
        case OfficeMathObject_DisplayTypeEnum.display: _result['DisplayType'] = 'Display'; break;
        case OfficeMathObject_DisplayTypeEnum.inline: _result['DisplayType'] = 'Inline'; break;
        default: break;
      }
    }

    if (justification != null) {
      switch (justification!) {
        case OfficeMathObject_JustificationEnum.centerGroup: _result['Justification'] = 'CenterGroup'; break;
        case OfficeMathObject_JustificationEnum.defaultValue: _result['Justification'] = 'Default'; break;
        case OfficeMathObject_JustificationEnum.center: _result['Justification'] = 'Center'; break;
        case OfficeMathObject_JustificationEnum.left: _result['Justification'] = 'Left'; break;
        case OfficeMathObject_JustificationEnum.right: _result['Justification'] = 'Right'; break;
        case OfficeMathObject_JustificationEnum.inline: _result['Justification'] = 'Inline'; break;
        default: break;
      }
    }

    if (mathObjectType != null) {
      switch (mathObjectType!) {
        case OfficeMathObject_MathObjectTypeEnum.oMath: _result['MathObjectType'] = 'OMath'; break;
        case OfficeMathObject_MathObjectTypeEnum.oMathPara: _result['MathObjectType'] = 'OMathPara'; break;
        case OfficeMathObject_MathObjectTypeEnum.accent: _result['MathObjectType'] = 'Accent'; break;
        case OfficeMathObject_MathObjectTypeEnum.bar: _result['MathObjectType'] = 'Bar'; break;
        case OfficeMathObject_MathObjectTypeEnum.borderBox: _result['MathObjectType'] = 'BorderBox'; break;
        case OfficeMathObject_MathObjectTypeEnum.box: _result['MathObjectType'] = 'Box'; break;
        case OfficeMathObject_MathObjectTypeEnum.delimiter: _result['MathObjectType'] = 'Delimiter'; break;
        case OfficeMathObject_MathObjectTypeEnum.degree: _result['MathObjectType'] = 'Degree'; break;
        case OfficeMathObject_MathObjectTypeEnum.argument: _result['MathObjectType'] = 'Argument'; break;
        case OfficeMathObject_MathObjectTypeEnum.array: _result['MathObjectType'] = 'Array'; break;
        case OfficeMathObject_MathObjectTypeEnum.fraction: _result['MathObjectType'] = 'Fraction'; break;
        case OfficeMathObject_MathObjectTypeEnum.denominator: _result['MathObjectType'] = 'Denominator'; break;
        case OfficeMathObject_MathObjectTypeEnum.numerator: _result['MathObjectType'] = 'Numerator'; break;
        case OfficeMathObject_MathObjectTypeEnum.function: _result['MathObjectType'] = 'Function'; break;
        case OfficeMathObject_MathObjectTypeEnum.functionName: _result['MathObjectType'] = 'FunctionName'; break;
        case OfficeMathObject_MathObjectTypeEnum.groupCharacter: _result['MathObjectType'] = 'GroupCharacter'; break;
        case OfficeMathObject_MathObjectTypeEnum.limit: _result['MathObjectType'] = 'Limit'; break;
        case OfficeMathObject_MathObjectTypeEnum.lowerLimit: _result['MathObjectType'] = 'LowerLimit'; break;
        case OfficeMathObject_MathObjectTypeEnum.upperLimit: _result['MathObjectType'] = 'UpperLimit'; break;
        case OfficeMathObject_MathObjectTypeEnum.matrix: _result['MathObjectType'] = 'Matrix'; break;
        case OfficeMathObject_MathObjectTypeEnum.matrixRow: _result['MathObjectType'] = 'MatrixRow'; break;
        case OfficeMathObject_MathObjectTypeEnum.nAry: _result['MathObjectType'] = 'NAry'; break;
        case OfficeMathObject_MathObjectTypeEnum.phantom: _result['MathObjectType'] = 'Phantom'; break;
        case OfficeMathObject_MathObjectTypeEnum.radical: _result['MathObjectType'] = 'Radical'; break;
        case OfficeMathObject_MathObjectTypeEnum.subscriptPart: _result['MathObjectType'] = 'SubscriptPart'; break;
        case OfficeMathObject_MathObjectTypeEnum.superscriptPart: _result['MathObjectType'] = 'SuperscriptPart'; break;
        case OfficeMathObject_MathObjectTypeEnum.preSubSuperscript: _result['MathObjectType'] = 'PreSubSuperscript'; break;
        case OfficeMathObject_MathObjectTypeEnum.subscript: _result['MathObjectType'] = 'Subscript'; break;
        case OfficeMathObject_MathObjectTypeEnum.subSuperscript: _result['MathObjectType'] = 'SubSuperscript'; break;
        case OfficeMathObject_MathObjectTypeEnum.superscript: _result['MathObjectType'] = 'Superscript'; break;
        case OfficeMathObject_MathObjectTypeEnum.none: _result['MathObjectType'] = 'None'; break;
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

    content?.validate();




  }
}

/// Gets or sets the display format type of the OfficeMath object. This display format defines whether an equation is displayed inline with the text or displayed on its own line.
/// Display format type has effect for top level Office Math only.Returned display format type is always Inline for nested Office Math.
enum OfficeMathObject_DisplayTypeEnum
{ 
  display,
  inline
}

/// Gets or sets the justification of the OfficeMath object.
/// Justification cannot be set to the Office Math with display format type Inline.Inline justification cannot be set to the Office Math with display format type Display.Corresponding DisplayType has to be set before setting Office Math justification.
enum OfficeMathObject_JustificationEnum
{ 
  centerGroup,
  defaultValue,
  center,
  left,
  right,
  inline
}

/// Gets or sets the type of the OfficeMath object.
enum OfficeMathObject_MathObjectTypeEnum
{ 
  oMath,
  oMathPara,
  accent,
  bar,
  borderBox,
  box,
  delimiter,
  degree,
  argument,
  array,
  fraction,
  denominator,
  numerator,
  function,
  functionName,
  groupCharacter,
  limit,
  lowerLimit,
  upperLimit,
  matrix,
  matrixRow,
  nAry,
  phantom,
  radical,
  subscriptPart,
  superscriptPart,
  preSubSuperscript,
  subscript,
  subSuperscript,
  superscript,
  none
}

