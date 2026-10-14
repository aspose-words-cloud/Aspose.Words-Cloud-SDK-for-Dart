/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="paragraph_format_base.dart">
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

/// Paragraph format element base class.
abstract class ParagraphFormatBase extends LinkElement {
  /// Gets or sets a value indicating whether inter-character spacing is automatically adjusted between regions of Latin text and regions of East Asian text in the current paragraph.
  bool? _addSpaceBetweenFarEastAndAlpha;

  bool? get addSpaceBetweenFarEastAndAlpha => _addSpaceBetweenFarEastAndAlpha;
  set addSpaceBetweenFarEastAndAlpha(bool? val) => _addSpaceBetweenFarEastAndAlpha = val;


  /// Gets or sets a value indicating whether inter-character spacing is automatically adjusted between regions of numbers and regions of East Asian text in the current paragraph.
  bool? _addSpaceBetweenFarEastAndDigit;

  bool? get addSpaceBetweenFarEastAndDigit => _addSpaceBetweenFarEastAndDigit;
  set addSpaceBetweenFarEastAndDigit(bool? val) => _addSpaceBetweenFarEastAndDigit = val;


  /// Gets or sets text alignment for the paragraph.
  ParagraphFormatBase_AlignmentEnum? _alignment;

  ParagraphFormatBase_AlignmentEnum? get alignment => _alignment;
  set alignment(ParagraphFormatBase_AlignmentEnum? val) => _alignment = val;


  /// Gets or sets a value indicating whether this is a right-to-left paragraph.
  /// When true, the runs and other inline objects in this paragraph are laid out right to left.
  bool? _bidi;

  bool? get bidi => _bidi;
  set bidi(bool? val) => _bidi = val;


  /// Gets or sets the position for a drop cap text.
  ParagraphFormatBase_DropCapPositionEnum? _dropCapPosition;

  ParagraphFormatBase_DropCapPositionEnum? get dropCapPosition => _dropCapPosition;
  set dropCapPosition(ParagraphFormatBase_DropCapPositionEnum? val) => _dropCapPosition = val;


  /// Gets or sets the value (in points) for a first line or hanging indent.
  /// Use a positive value to set a first-line indent, and use a negative value to set a hanging indent.
  double? _firstLineIndent;

  double? get firstLineIndent => _firstLineIndent;
  set firstLineIndent(double? val) => _firstLineIndent = val;


  /// Gets or sets a value indicating whether all lines in the paragraph are to remain on the same page.
  bool? _keepTogether;

  bool? get keepTogether => _keepTogether;
  set keepTogether(bool? val) => _keepTogether = val;


  /// Gets or sets a value indicating whether the paragraph is to remains on the same page as the paragraph that follows it.
  bool? _keepWithNext;

  bool? get keepWithNext => _keepWithNext;
  set keepWithNext(bool? val) => _keepWithNext = val;


  /// Gets or sets the value (in points), that represents the left indent for paragraph.
  double? _leftIndent;

  double? get leftIndent => _leftIndent;
  set leftIndent(double? val) => _leftIndent = val;


  /// Gets or sets the line spacing (in points) for the paragraph.
  /// When LineSpacingRule property is set to AtLeast, the line spacing can be greater than or equal to, but never less than the specified LineSpacing value.When LineSpacingRule property is set to Exactly, the line spacing never changes from the specified LineSpacing value, even if a larger font is used within the paragraph.
  double? _lineSpacing;

  double? get lineSpacing => _lineSpacing;
  set lineSpacing(double? val) => _lineSpacing = val;


  /// Gets or sets the line spacing for the paragraph.
  ParagraphFormatBase_LineSpacingRuleEnum? _lineSpacingRule;

  ParagraphFormatBase_LineSpacingRuleEnum? get lineSpacingRule => _lineSpacingRule;
  set lineSpacingRule(ParagraphFormatBase_LineSpacingRuleEnum? val) => _lineSpacingRule = val;


  /// Gets or sets the number of lines of the paragraph text used to calculate the drop cap height.
  int? _linesToDrop;

  int? get linesToDrop => _linesToDrop;
  set linesToDrop(int? val) => _linesToDrop = val;


  /// Gets or sets a value indicating whether SpaceBefore and SpaceAfter will be ignored between the paragraphs of the same style.
  /// This setting only takes affect when applied to a paragraph style. If applied to a paragraph directly, it has no effect.
  bool? _noSpaceBetweenParagraphsOfSameStyle;

  bool? get noSpaceBetweenParagraphsOfSameStyle => _noSpaceBetweenParagraphsOfSameStyle;
  set noSpaceBetweenParagraphsOfSameStyle(bool? val) => _noSpaceBetweenParagraphsOfSameStyle = val;


  /// Gets or sets the outline level of the paragraph in the document.
  ParagraphFormatBase_OutlineLevelEnum? _outlineLevel;

  ParagraphFormatBase_OutlineLevelEnum? get outlineLevel => _outlineLevel;
  set outlineLevel(ParagraphFormatBase_OutlineLevelEnum? val) => _outlineLevel = val;


  /// Gets or sets a value indicating whether a page break is forced before the paragraph.
  bool? _pageBreakBefore;

  bool? get pageBreakBefore => _pageBreakBefore;
  set pageBreakBefore(bool? val) => _pageBreakBefore = val;


  /// Gets or sets the value (in points) that represents the right indent for paragraph.
  double? _rightIndent;

  double? get rightIndent => _rightIndent;
  set rightIndent(double? val) => _rightIndent = val;


  /// Gets or sets the amount of spacing (in points) after the paragraph.
  /// Has no effect when SpaceAfterAuto is true.
  double? _spaceAfter;

  double? get spaceAfter => _spaceAfter;
  set spaceAfter(double? val) => _spaceAfter = val;


  /// Gets or sets a value indicating whether the amount of spacing after the paragraph is set automatically.
  /// When set to true, overrides the effect of SpaceAfter.
  bool? _spaceAfterAuto;

  bool? get spaceAfterAuto => _spaceAfterAuto;
  set spaceAfterAuto(bool? val) => _spaceAfterAuto = val;


  /// Gets or sets the amount of spacing (in points) before the paragraph.
  /// Has no effect when SpaceBeforeAuto is true.
  double? _spaceBefore;

  double? get spaceBefore => _spaceBefore;
  set spaceBefore(double? val) => _spaceBefore = val;


  /// Gets or sets a value indicating whether the amount of spacing before the paragraph is set automatically.
  /// When set to true, overrides the effect of SpaceBefore.
  bool? _spaceBeforeAuto;

  bool? get spaceBeforeAuto => _spaceBeforeAuto;
  set spaceBeforeAuto(bool? val) => _spaceBeforeAuto = val;


  /// Gets or sets the locale independent style identifier of the paragraph style applied to this formatting.
  ParagraphFormatBase_StyleIdentifierEnum? _styleIdentifier;

  ParagraphFormatBase_StyleIdentifierEnum? get styleIdentifier => _styleIdentifier;
  set styleIdentifier(ParagraphFormatBase_StyleIdentifierEnum? val) => _styleIdentifier = val;


  /// Gets or sets the name of the paragraph style applied to this formatting.
  String? _styleName;

  String? get styleName => _styleName;
  set styleName(String? val) => _styleName = val;


  /// Gets or sets a value indicating whether the current paragraph should be exempted from any hyphenation which is applied in the document settings.
  bool? _suppressAutoHyphens;

  bool? get suppressAutoHyphens => _suppressAutoHyphens;
  set suppressAutoHyphens(bool? val) => _suppressAutoHyphens = val;


  /// Gets or sets a value indicating whether the current paragraph's lines should be exempted from line numbering which is applied in the parent section.
  bool? _suppressLineNumbers;

  bool? get suppressLineNumbers => _suppressLineNumbers;
  set suppressLineNumbers(bool? val) => _suppressLineNumbers = val;


  /// Gets or sets a value indicating whether the first and last lines in the paragraph are to remain on the same page as the rest of the paragraph.
  bool? _widowControl;

  bool? get widowControl => _widowControl;
  set widowControl(bool? val) => _widowControl = val;


  /// Gets or sets the Shading object, that refers to the shading formatting for the paragraph.
  Shading? _shading;

  Shading? get shading => _shading;
  set shading(Shading? val) => _shading = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ParagraphFormatBase data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('AddSpaceBetweenFarEastAndAlpha')) {
      addSpaceBetweenFarEastAndAlpha = json['AddSpaceBetweenFarEastAndAlpha'] as bool;
    } else {
      addSpaceBetweenFarEastAndAlpha = null;
    }

    if (json.containsKey('AddSpaceBetweenFarEastAndDigit')) {
      addSpaceBetweenFarEastAndDigit = json['AddSpaceBetweenFarEastAndDigit'] as bool;
    } else {
      addSpaceBetweenFarEastAndDigit = null;
    }

    if (json.containsKey('Alignment')) {
      switch (json['Alignment'] as String) {
        case 'Left': alignment = ParagraphFormatBase_AlignmentEnum.left; break;
        case 'Center': alignment = ParagraphFormatBase_AlignmentEnum.center; break;
        case 'Right': alignment = ParagraphFormatBase_AlignmentEnum.right; break;
        case 'Justify': alignment = ParagraphFormatBase_AlignmentEnum.justify; break;
        case 'Distributed': alignment = ParagraphFormatBase_AlignmentEnum.distributed; break;
        case 'ArabicMediumKashida': alignment = ParagraphFormatBase_AlignmentEnum.arabicMediumKashida; break;
        case 'ArabicHighKashida': alignment = ParagraphFormatBase_AlignmentEnum.arabicHighKashida; break;
        case 'ArabicLowKashida': alignment = ParagraphFormatBase_AlignmentEnum.arabicLowKashida; break;
        case 'ThaiDistributed': alignment = ParagraphFormatBase_AlignmentEnum.thaiDistributed; break;
        case 'MathElementCenterAsGroup': alignment = ParagraphFormatBase_AlignmentEnum.mathElementCenterAsGroup; break;
        default: alignment = null; break;
      }
    } else {
      alignment = null;
    }

    if (json.containsKey('Bidi')) {
      bidi = json['Bidi'] as bool;
    } else {
      bidi = null;
    }

    if (json.containsKey('DropCapPosition')) {
      switch (json['DropCapPosition'] as String) {
        case 'None': dropCapPosition = ParagraphFormatBase_DropCapPositionEnum.none; break;
        case 'Normal': dropCapPosition = ParagraphFormatBase_DropCapPositionEnum.normal; break;
        case 'Margin': dropCapPosition = ParagraphFormatBase_DropCapPositionEnum.margin; break;
        default: dropCapPosition = null; break;
      }
    } else {
      dropCapPosition = null;
    }

    if (json.containsKey('FirstLineIndent')) {
      firstLineIndent = json['FirstLineIndent'] as double;
    } else {
      firstLineIndent = null;
    }

    if (json.containsKey('KeepTogether')) {
      keepTogether = json['KeepTogether'] as bool;
    } else {
      keepTogether = null;
    }

    if (json.containsKey('KeepWithNext')) {
      keepWithNext = json['KeepWithNext'] as bool;
    } else {
      keepWithNext = null;
    }

    if (json.containsKey('LeftIndent')) {
      leftIndent = json['LeftIndent'] as double;
    } else {
      leftIndent = null;
    }

    if (json.containsKey('LineSpacing')) {
      lineSpacing = json['LineSpacing'] as double;
    } else {
      lineSpacing = null;
    }

    if (json.containsKey('LineSpacingRule')) {
      switch (json['LineSpacingRule'] as String) {
        case 'AtLeast': lineSpacingRule = ParagraphFormatBase_LineSpacingRuleEnum.atLeast; break;
        case 'Exactly': lineSpacingRule = ParagraphFormatBase_LineSpacingRuleEnum.exactly; break;
        case 'Multiple': lineSpacingRule = ParagraphFormatBase_LineSpacingRuleEnum.multiple; break;
        default: lineSpacingRule = null; break;
      }
    } else {
      lineSpacingRule = null;
    }

    if (json.containsKey('LinesToDrop')) {
      linesToDrop = json['LinesToDrop'] as int;
    } else {
      linesToDrop = null;
    }

    if (json.containsKey('NoSpaceBetweenParagraphsOfSameStyle')) {
      noSpaceBetweenParagraphsOfSameStyle = json['NoSpaceBetweenParagraphsOfSameStyle'] as bool;
    } else {
      noSpaceBetweenParagraphsOfSameStyle = null;
    }

    if (json.containsKey('OutlineLevel')) {
      switch (json['OutlineLevel'] as String) {
        case 'Level1': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level1; break;
        case 'Level2': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level2; break;
        case 'Level3': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level3; break;
        case 'Level4': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level4; break;
        case 'Level5': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level5; break;
        case 'Level6': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level6; break;
        case 'Level7': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level7; break;
        case 'Level8': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level8; break;
        case 'Level9': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.level9; break;
        case 'BodyText': outlineLevel = ParagraphFormatBase_OutlineLevelEnum.bodyText; break;
        default: outlineLevel = null; break;
      }
    } else {
      outlineLevel = null;
    }

    if (json.containsKey('PageBreakBefore')) {
      pageBreakBefore = json['PageBreakBefore'] as bool;
    } else {
      pageBreakBefore = null;
    }

    if (json.containsKey('RightIndent')) {
      rightIndent = json['RightIndent'] as double;
    } else {
      rightIndent = null;
    }

    if (json.containsKey('SpaceAfter')) {
      spaceAfter = json['SpaceAfter'] as double;
    } else {
      spaceAfter = null;
    }

    if (json.containsKey('SpaceAfterAuto')) {
      spaceAfterAuto = json['SpaceAfterAuto'] as bool;
    } else {
      spaceAfterAuto = null;
    }

    if (json.containsKey('SpaceBefore')) {
      spaceBefore = json['SpaceBefore'] as double;
    } else {
      spaceBefore = null;
    }

    if (json.containsKey('SpaceBeforeAuto')) {
      spaceBeforeAuto = json['SpaceBeforeAuto'] as bool;
    } else {
      spaceBeforeAuto = null;
    }

    if (json.containsKey('StyleIdentifier')) {
      switch (json['StyleIdentifier'] as String) {
        case 'Normal': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.normal; break;
        case 'Heading1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading1; break;
        case 'Heading2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading2; break;
        case 'Heading3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading3; break;
        case 'Heading4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading4; break;
        case 'Heading5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading5; break;
        case 'Heading6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading6; break;
        case 'Heading7': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading7; break;
        case 'Heading8': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading8; break;
        case 'Heading9': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.heading9; break;
        case 'Index1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index1; break;
        case 'Index2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index2; break;
        case 'Index3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index3; break;
        case 'Index4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index4; break;
        case 'Index5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index5; break;
        case 'Index6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index6; break;
        case 'Index7': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index7; break;
        case 'Index8': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index8; break;
        case 'Index9': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.index9; break;
        case 'Toc1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc1; break;
        case 'Toc2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc2; break;
        case 'Toc3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc3; break;
        case 'Toc4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc4; break;
        case 'Toc5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc5; break;
        case 'Toc6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc6; break;
        case 'Toc7': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc7; break;
        case 'Toc8': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc8; break;
        case 'Toc9': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toc9; break;
        case 'NormalIndent': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.normalIndent; break;
        case 'FootnoteText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.footnoteText; break;
        case 'CommentText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.commentText; break;
        case 'Header': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.header; break;
        case 'Footer': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.footer; break;
        case 'IndexHeading': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.indexHeading; break;
        case 'Caption': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.caption; break;
        case 'TableOfFigures': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableOfFigures; break;
        case 'EnvelopeAddress': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.envelopeAddress; break;
        case 'EnvelopeReturn': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.envelopeReturn; break;
        case 'FootnoteReference': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.footnoteReference; break;
        case 'CommentReference': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.commentReference; break;
        case 'LineNumber': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lineNumber; break;
        case 'PageNumber': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.pageNumber; break;
        case 'EndnoteReference': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.endnoteReference; break;
        case 'EndnoteText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.endnoteText; break;
        case 'TableOfAuthorities': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableOfAuthorities; break;
        case 'Macro': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.macro; break;
        case 'ToaHeading': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.toaHeading; break;
        case 'List': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.list; break;
        case 'ListBullet': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listBullet; break;
        case 'ListNumber': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listNumber; break;
        case 'List2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.list2; break;
        case 'List3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.list3; break;
        case 'List4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.list4; break;
        case 'List5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.list5; break;
        case 'ListBullet2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listBullet2; break;
        case 'ListBullet3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listBullet3; break;
        case 'ListBullet4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listBullet4; break;
        case 'ListBullet5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listBullet5; break;
        case 'ListNumber2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listNumber2; break;
        case 'ListNumber3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listNumber3; break;
        case 'ListNumber4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listNumber4; break;
        case 'ListNumber5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listNumber5; break;
        case 'Title': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.title; break;
        case 'Closing': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.closing; break;
        case 'Signature': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.signature; break;
        case 'DefaultParagraphFont': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.defaultParagraphFont; break;
        case 'BodyText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyText; break;
        case 'BodyTextInd': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyTextInd; break;
        case 'ListContinue': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listContinue; break;
        case 'ListContinue2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listContinue2; break;
        case 'ListContinue3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listContinue3; break;
        case 'ListContinue4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listContinue4; break;
        case 'ListContinue5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listContinue5; break;
        case 'MessageHeader': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.messageHeader; break;
        case 'Subtitle': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.subtitle; break;
        case 'Salutation': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.salutation; break;
        case 'Date': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.date; break;
        case 'BodyText1I': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyText1I; break;
        case 'BodyText1I2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyText1I2; break;
        case 'NoteHeading': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.noteHeading; break;
        case 'BodyText2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyText2; break;
        case 'BodyText3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyText3; break;
        case 'BodyTextInd2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyTextInd2; break;
        case 'BodyTextInd3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bodyTextInd3; break;
        case 'BlockText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.blockText; break;
        case 'Hyperlink': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.hyperlink; break;
        case 'FollowedHyperlink': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.followedHyperlink; break;
        case 'Strong': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.strong; break;
        case 'Emphasis': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.emphasis; break;
        case 'DocumentMap': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.documentMap; break;
        case 'PlainText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.plainText; break;
        case 'EmailSignature': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.emailSignature; break;
        case 'HtmlTopOfForm': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlTopOfForm; break;
        case 'HtmlBottomOfForm': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlBottomOfForm; break;
        case 'NormalWeb': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.normalWeb; break;
        case 'HtmlAcronym': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlAcronym; break;
        case 'HtmlAddress': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlAddress; break;
        case 'HtmlCite': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlCite; break;
        case 'HtmlCode': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlCode; break;
        case 'HtmlDefinition': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlDefinition; break;
        case 'HtmlKeyboard': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlKeyboard; break;
        case 'HtmlPreformatted': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlPreformatted; break;
        case 'HtmlSample': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlSample; break;
        case 'HtmlTypewriter': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlTypewriter; break;
        case 'HtmlVariable': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.htmlVariable; break;
        case 'TableNormal': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableNormal; break;
        case 'CommentSubject': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.commentSubject; break;
        case 'NoList': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.noList; break;
        case 'OutlineList1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.outlineList1; break;
        case 'OutlineList2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.outlineList2; break;
        case 'OutlineList3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.outlineList3; break;
        case 'TableSimple1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableSimple1; break;
        case 'TableSimple2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableSimple2; break;
        case 'TableSimple3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableSimple3; break;
        case 'TableClassic1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableClassic1; break;
        case 'TableClassic2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableClassic2; break;
        case 'TableClassic3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableClassic3; break;
        case 'TableClassic4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableClassic4; break;
        case 'TableColorful1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColorful1; break;
        case 'TableColorful2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColorful2; break;
        case 'TableColorful3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColorful3; break;
        case 'TableColumns1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColumns1; break;
        case 'TableColumns2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColumns2; break;
        case 'TableColumns3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColumns3; break;
        case 'TableColumns4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColumns4; break;
        case 'TableColumns5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableColumns5; break;
        case 'TableGrid1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid1; break;
        case 'TableGrid2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid2; break;
        case 'TableGrid3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid3; break;
        case 'TableGrid4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid4; break;
        case 'TableGrid5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid5; break;
        case 'TableGrid6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid6; break;
        case 'TableGrid7': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid7; break;
        case 'TableGrid8': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid8; break;
        case 'TableList1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList1; break;
        case 'TableList2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList2; break;
        case 'TableList3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList3; break;
        case 'TableList4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList4; break;
        case 'TableList5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList5; break;
        case 'TableList6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList6; break;
        case 'TableList7': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList7; break;
        case 'TableList8': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableList8; break;
        case 'Table3DEffects1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.table3DEffects1; break;
        case 'Table3DEffects2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.table3DEffects2; break;
        case 'Table3DEffects3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.table3DEffects3; break;
        case 'TableContemporary': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableContemporary; break;
        case 'TableElegant': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableElegant; break;
        case 'TableProfessional': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableProfessional; break;
        case 'TableSubtle1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableSubtle1; break;
        case 'TableSubtle2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableSubtle2; break;
        case 'TableWeb1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableWeb1; break;
        case 'TableWeb2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableWeb2; break;
        case 'TableWeb3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableWeb3; break;
        case 'BalloonText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.balloonText; break;
        case 'TableGrid': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGrid; break;
        case 'TableTheme': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableTheme; break;
        case 'PlaceholderText': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.placeholderText; break;
        case 'NoSpacing': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.noSpacing; break;
        case 'LightShading': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightShading; break;
        case 'LightList': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightList; break;
        case 'LightGrid': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightGrid; break;
        case 'MediumShading1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading1; break;
        case 'MediumShading2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading2; break;
        case 'MediumList1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList1; break;
        case 'MediumList2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList2; break;
        case 'MediumGrid1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1; break;
        case 'MediumGrid2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2; break;
        case 'MediumGrid3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3; break;
        case 'DarkList': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.darkList; break;
        case 'ColorfulShading': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulShading; break;
        case 'ColorfulList': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulList; break;
        case 'ColorfulGrid': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulGrid; break;
        case 'LightShadingAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent1; break;
        case 'LightListAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightListAccent1; break;
        case 'LightGridAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent1; break;
        case 'MediumShading1Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent1; break;
        case 'MediumShading2Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent1; break;
        case 'MediumList1Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent1; break;
        case 'Revision': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.revision; break;
        case 'ListParagraph': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listParagraph; break;
        case 'Quote': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.quote; break;
        case 'IntenseQuote': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.intenseQuote; break;
        case 'MediumList2Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent1; break;
        case 'MediumGrid1Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent1; break;
        case 'MediumGrid2Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent1; break;
        case 'MediumGrid3Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent1; break;
        case 'DarkListAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.darkListAccent1; break;
        case 'ColorfulShadingAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent1; break;
        case 'ColorfulListAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent1; break;
        case 'ColorfulGridAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent1; break;
        case 'LightShadingAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent2; break;
        case 'LightListAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightListAccent2; break;
        case 'LightGridAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent2; break;
        case 'MediumShading1Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent2; break;
        case 'MediumShading2Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent2; break;
        case 'MediumList1Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent2; break;
        case 'MediumList2Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent2; break;
        case 'MediumGrid1Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent2; break;
        case 'MediumGrid2Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent2; break;
        case 'MediumGrid3Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent2; break;
        case 'DarkListAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.darkListAccent2; break;
        case 'ColorfulShadingAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent2; break;
        case 'ColorfulListAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent2; break;
        case 'ColorfulGridAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent2; break;
        case 'LightShadingAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent3; break;
        case 'LightListAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightListAccent3; break;
        case 'LightGridAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent3; break;
        case 'MediumShading1Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent3; break;
        case 'MediumShading2Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent3; break;
        case 'MediumList1Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent3; break;
        case 'MediumList2Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent3; break;
        case 'MediumGrid1Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent3; break;
        case 'MediumGrid2Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent3; break;
        case 'MediumGrid3Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent3; break;
        case 'DarkListAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.darkListAccent3; break;
        case 'ColorfulShadingAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent3; break;
        case 'ColorfulListAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent3; break;
        case 'ColorfulGridAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent3; break;
        case 'LightShadingAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent4; break;
        case 'LightListAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightListAccent4; break;
        case 'LightGridAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent4; break;
        case 'MediumShading1Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent4; break;
        case 'MediumShading2Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent4; break;
        case 'MediumList1Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent4; break;
        case 'MediumList2Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent4; break;
        case 'MediumGrid1Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent4; break;
        case 'MediumGrid2Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent4; break;
        case 'MediumGrid3Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent4; break;
        case 'DarkListAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.darkListAccent4; break;
        case 'ColorfulShadingAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent4; break;
        case 'ColorfulListAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent4; break;
        case 'ColorfulGridAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent4; break;
        case 'LightShadingAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent5; break;
        case 'LightListAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightListAccent5; break;
        case 'LightGridAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent5; break;
        case 'MediumShading1Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent5; break;
        case 'MediumShading2Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent5; break;
        case 'MediumList1Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent5; break;
        case 'MediumList2Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent5; break;
        case 'MediumGrid1Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent5; break;
        case 'MediumGrid2Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent5; break;
        case 'MediumGrid3Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent5; break;
        case 'DarkListAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.darkListAccent5; break;
        case 'ColorfulShadingAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent5; break;
        case 'ColorfulListAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent5; break;
        case 'ColorfulGridAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent5; break;
        case 'LightShadingAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent6; break;
        case 'LightListAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightListAccent6; break;
        case 'LightGridAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent6; break;
        case 'MediumShading1Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent6; break;
        case 'MediumShading2Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent6; break;
        case 'MediumList1Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent6; break;
        case 'MediumList2Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent6; break;
        case 'MediumGrid1Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent6; break;
        case 'MediumGrid2Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent6; break;
        case 'MediumGrid3Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent6; break;
        case 'DarkListAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.darkListAccent6; break;
        case 'ColorfulShadingAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent6; break;
        case 'ColorfulListAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent6; break;
        case 'ColorfulGridAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent6; break;
        case 'SubtleEmphasis': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.subtleEmphasis; break;
        case 'IntenseEmphasis': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.intenseEmphasis; break;
        case 'SubtleReference': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.subtleReference; break;
        case 'IntenseReference': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.intenseReference; break;
        case 'BookTitle': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bookTitle; break;
        case 'Bibliography': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.bibliography; break;
        case 'TocHeading': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tocHeading; break;
        case 'PlainTable1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.plainTable1; break;
        case 'PlainTable2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.plainTable2; break;
        case 'PlainTable3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.plainTable3; break;
        case 'PlainTable4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.plainTable4; break;
        case 'PlainTable5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.plainTable5; break;
        case 'TableGridLight': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.tableGridLight; break;
        case 'GridTable1Light': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable1Light; break;
        case 'GridTable2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable2; break;
        case 'GridTable3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable3; break;
        case 'GridTable4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable4; break;
        case 'GridTable5Dark': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable5Dark; break;
        case 'GridTable6Colorful': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable6Colorful; break;
        case 'GridTable7Colorful': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable7Colorful; break;
        case 'GridTable1LightAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent1; break;
        case 'GridTable2Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent1; break;
        case 'GridTable3Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent1; break;
        case 'GridTable4Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent1; break;
        case 'GridTable5DarkAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent1; break;
        case 'GridTable6ColorfulAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent1; break;
        case 'GridTable7ColorfulAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent1; break;
        case 'GridTable1LightAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent2; break;
        case 'GridTable2Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent2; break;
        case 'GridTable3Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent2; break;
        case 'GridTable4Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent2; break;
        case 'GridTable5DarkAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent2; break;
        case 'GridTable6ColorfulAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent2; break;
        case 'GridTable7ColorfulAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent2; break;
        case 'GridTable1LightAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent3; break;
        case 'GridTable2Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent3; break;
        case 'GridTable3Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent3; break;
        case 'GridTable4Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent3; break;
        case 'GridTable5DarkAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent3; break;
        case 'GridTable6ColorfulAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent3; break;
        case 'GridTable7ColorfulAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent3; break;
        case 'GridTable1LightAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent4; break;
        case 'GridTable2Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent4; break;
        case 'GridTable3Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent4; break;
        case 'GridTable4Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent4; break;
        case 'GridTable5DarkAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent4; break;
        case 'GridTable6ColorfulAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent4; break;
        case 'GridTable7ColorfulAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent4; break;
        case 'GridTable1LightAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent5; break;
        case 'GridTable2Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent5; break;
        case 'GridTable3Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent5; break;
        case 'GridTable4Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent5; break;
        case 'GridTable5DarkAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent5; break;
        case 'GridTable6ColorfulAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent5; break;
        case 'GridTable7ColorfulAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent5; break;
        case 'GridTable1LightAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent6; break;
        case 'GridTable2Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent6; break;
        case 'GridTable3Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent6; break;
        case 'GridTable4Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent6; break;
        case 'GridTable5DarkAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent6; break;
        case 'GridTable6ColorfulAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent6; break;
        case 'GridTable7ColorfulAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent6; break;
        case 'ListTable1Light': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable1Light; break;
        case 'ListTable2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable2; break;
        case 'ListTable3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable3; break;
        case 'ListTable4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable4; break;
        case 'ListTable5Dark': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable5Dark; break;
        case 'ListTable6Colorful': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable6Colorful; break;
        case 'ListTable7Colorful': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable7Colorful; break;
        case 'ListTable1LightAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent1; break;
        case 'ListTable2Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent1; break;
        case 'ListTable3Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent1; break;
        case 'ListTable4Accent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent1; break;
        case 'ListTable5DarkAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent1; break;
        case 'ListTable6ColorfulAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent1; break;
        case 'ListTable7ColorfulAccent1': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent1; break;
        case 'ListTable1LightAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent2; break;
        case 'ListTable2Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent2; break;
        case 'ListTable3Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent2; break;
        case 'ListTable4Accent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent2; break;
        case 'ListTable5DarkAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent2; break;
        case 'ListTable6ColorfulAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent2; break;
        case 'ListTable7ColorfulAccent2': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent2; break;
        case 'ListTable1LightAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent3; break;
        case 'ListTable2Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent3; break;
        case 'ListTable3Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent3; break;
        case 'ListTable4Accent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent3; break;
        case 'ListTable5DarkAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent3; break;
        case 'ListTable6ColorfulAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent3; break;
        case 'ListTable7ColorfulAccent3': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent3; break;
        case 'ListTable1LightAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent4; break;
        case 'ListTable2Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent4; break;
        case 'ListTable3Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent4; break;
        case 'ListTable4Accent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent4; break;
        case 'ListTable5DarkAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent4; break;
        case 'ListTable6ColorfulAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent4; break;
        case 'ListTable7ColorfulAccent4': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent4; break;
        case 'ListTable1LightAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent5; break;
        case 'ListTable2Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent5; break;
        case 'ListTable3Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent5; break;
        case 'ListTable4Accent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent5; break;
        case 'ListTable5DarkAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent5; break;
        case 'ListTable6ColorfulAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent5; break;
        case 'ListTable7ColorfulAccent5': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent5; break;
        case 'ListTable1LightAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent6; break;
        case 'ListTable2Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent6; break;
        case 'ListTable3Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent6; break;
        case 'ListTable4Accent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent6; break;
        case 'ListTable5DarkAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent6; break;
        case 'ListTable6ColorfulAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent6; break;
        case 'ListTable7ColorfulAccent6': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent6; break;
        case 'SmartLink': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.smartLink; break;
        case 'Mention': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.mention; break;
        case 'SmartHyperlink': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.smartHyperlink; break;
        case 'Hashtag': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.hashtag; break;
        case 'UnresolvedMention': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.unresolvedMention; break;
        case 'User': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.user; break;
        case 'Nil': styleIdentifier = ParagraphFormatBase_StyleIdentifierEnum.nil; break;
        default: styleIdentifier = null; break;
      }
    } else {
      styleIdentifier = null;
    }

    if (json.containsKey('StyleName')) {
      styleName = json['StyleName'] as String;
    } else {
      styleName = null;
    }

    if (json.containsKey('SuppressAutoHyphens')) {
      suppressAutoHyphens = json['SuppressAutoHyphens'] as bool;
    } else {
      suppressAutoHyphens = null;
    }

    if (json.containsKey('SuppressLineNumbers')) {
      suppressLineNumbers = json['SuppressLineNumbers'] as bool;
    } else {
      suppressLineNumbers = null;
    }

    if (json.containsKey('WidowControl')) {
      widowControl = json['WidowControl'] as bool;
    } else {
      widowControl = null;
    }

    if (json.containsKey('Shading')) {
      shading = ModelBase.createInstance< Shading >(json['Shading'] as Map<String, dynamic>);
    } else {
      shading = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (addSpaceBetweenFarEastAndAlpha != null) {
      _result['AddSpaceBetweenFarEastAndAlpha'] = addSpaceBetweenFarEastAndAlpha!;
    }

    if (addSpaceBetweenFarEastAndDigit != null) {
      _result['AddSpaceBetweenFarEastAndDigit'] = addSpaceBetweenFarEastAndDigit!;
    }

    if (alignment != null) {
      switch (alignment!) {
        case ParagraphFormatBase_AlignmentEnum.left: _result['Alignment'] = 'Left'; break;
        case ParagraphFormatBase_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case ParagraphFormatBase_AlignmentEnum.right: _result['Alignment'] = 'Right'; break;
        case ParagraphFormatBase_AlignmentEnum.justify: _result['Alignment'] = 'Justify'; break;
        case ParagraphFormatBase_AlignmentEnum.distributed: _result['Alignment'] = 'Distributed'; break;
        case ParagraphFormatBase_AlignmentEnum.arabicMediumKashida: _result['Alignment'] = 'ArabicMediumKashida'; break;
        case ParagraphFormatBase_AlignmentEnum.arabicHighKashida: _result['Alignment'] = 'ArabicHighKashida'; break;
        case ParagraphFormatBase_AlignmentEnum.arabicLowKashida: _result['Alignment'] = 'ArabicLowKashida'; break;
        case ParagraphFormatBase_AlignmentEnum.thaiDistributed: _result['Alignment'] = 'ThaiDistributed'; break;
        case ParagraphFormatBase_AlignmentEnum.mathElementCenterAsGroup: _result['Alignment'] = 'MathElementCenterAsGroup'; break;
        default: break;
      }
    }

    if (bidi != null) {
      _result['Bidi'] = bidi!;
    }

    if (dropCapPosition != null) {
      switch (dropCapPosition!) {
        case ParagraphFormatBase_DropCapPositionEnum.none: _result['DropCapPosition'] = 'None'; break;
        case ParagraphFormatBase_DropCapPositionEnum.normal: _result['DropCapPosition'] = 'Normal'; break;
        case ParagraphFormatBase_DropCapPositionEnum.margin: _result['DropCapPosition'] = 'Margin'; break;
        default: break;
      }
    }

    if (firstLineIndent != null) {
      _result['FirstLineIndent'] = firstLineIndent!;
    }

    if (keepTogether != null) {
      _result['KeepTogether'] = keepTogether!;
    }

    if (keepWithNext != null) {
      _result['KeepWithNext'] = keepWithNext!;
    }

    if (leftIndent != null) {
      _result['LeftIndent'] = leftIndent!;
    }

    if (lineSpacing != null) {
      _result['LineSpacing'] = lineSpacing!;
    }

    if (lineSpacingRule != null) {
      switch (lineSpacingRule!) {
        case ParagraphFormatBase_LineSpacingRuleEnum.atLeast: _result['LineSpacingRule'] = 'AtLeast'; break;
        case ParagraphFormatBase_LineSpacingRuleEnum.exactly: _result['LineSpacingRule'] = 'Exactly'; break;
        case ParagraphFormatBase_LineSpacingRuleEnum.multiple: _result['LineSpacingRule'] = 'Multiple'; break;
        default: break;
      }
    }

    if (linesToDrop != null) {
      _result['LinesToDrop'] = linesToDrop!;
    }

    if (noSpaceBetweenParagraphsOfSameStyle != null) {
      _result['NoSpaceBetweenParagraphsOfSameStyle'] = noSpaceBetweenParagraphsOfSameStyle!;
    }

    if (outlineLevel != null) {
      switch (outlineLevel!) {
        case ParagraphFormatBase_OutlineLevelEnum.level1: _result['OutlineLevel'] = 'Level1'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level2: _result['OutlineLevel'] = 'Level2'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level3: _result['OutlineLevel'] = 'Level3'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level4: _result['OutlineLevel'] = 'Level4'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level5: _result['OutlineLevel'] = 'Level5'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level6: _result['OutlineLevel'] = 'Level6'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level7: _result['OutlineLevel'] = 'Level7'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level8: _result['OutlineLevel'] = 'Level8'; break;
        case ParagraphFormatBase_OutlineLevelEnum.level9: _result['OutlineLevel'] = 'Level9'; break;
        case ParagraphFormatBase_OutlineLevelEnum.bodyText: _result['OutlineLevel'] = 'BodyText'; break;
        default: break;
      }
    }

    if (pageBreakBefore != null) {
      _result['PageBreakBefore'] = pageBreakBefore!;
    }

    if (rightIndent != null) {
      _result['RightIndent'] = rightIndent!;
    }

    if (spaceAfter != null) {
      _result['SpaceAfter'] = spaceAfter!;
    }

    if (spaceAfterAuto != null) {
      _result['SpaceAfterAuto'] = spaceAfterAuto!;
    }

    if (spaceBefore != null) {
      _result['SpaceBefore'] = spaceBefore!;
    }

    if (spaceBeforeAuto != null) {
      _result['SpaceBeforeAuto'] = spaceBeforeAuto!;
    }

    if (styleIdentifier != null) {
      switch (styleIdentifier!) {
        case ParagraphFormatBase_StyleIdentifierEnum.normal: _result['StyleIdentifier'] = 'Normal'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading1: _result['StyleIdentifier'] = 'Heading1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading2: _result['StyleIdentifier'] = 'Heading2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading3: _result['StyleIdentifier'] = 'Heading3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading4: _result['StyleIdentifier'] = 'Heading4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading5: _result['StyleIdentifier'] = 'Heading5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading6: _result['StyleIdentifier'] = 'Heading6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading7: _result['StyleIdentifier'] = 'Heading7'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading8: _result['StyleIdentifier'] = 'Heading8'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.heading9: _result['StyleIdentifier'] = 'Heading9'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index1: _result['StyleIdentifier'] = 'Index1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index2: _result['StyleIdentifier'] = 'Index2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index3: _result['StyleIdentifier'] = 'Index3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index4: _result['StyleIdentifier'] = 'Index4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index5: _result['StyleIdentifier'] = 'Index5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index6: _result['StyleIdentifier'] = 'Index6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index7: _result['StyleIdentifier'] = 'Index7'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index8: _result['StyleIdentifier'] = 'Index8'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.index9: _result['StyleIdentifier'] = 'Index9'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc1: _result['StyleIdentifier'] = 'Toc1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc2: _result['StyleIdentifier'] = 'Toc2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc3: _result['StyleIdentifier'] = 'Toc3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc4: _result['StyleIdentifier'] = 'Toc4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc5: _result['StyleIdentifier'] = 'Toc5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc6: _result['StyleIdentifier'] = 'Toc6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc7: _result['StyleIdentifier'] = 'Toc7'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc8: _result['StyleIdentifier'] = 'Toc8'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toc9: _result['StyleIdentifier'] = 'Toc9'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.normalIndent: _result['StyleIdentifier'] = 'NormalIndent'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.footnoteText: _result['StyleIdentifier'] = 'FootnoteText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.commentText: _result['StyleIdentifier'] = 'CommentText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.header: _result['StyleIdentifier'] = 'Header'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.footer: _result['StyleIdentifier'] = 'Footer'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.indexHeading: _result['StyleIdentifier'] = 'IndexHeading'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.caption: _result['StyleIdentifier'] = 'Caption'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableOfFigures: _result['StyleIdentifier'] = 'TableOfFigures'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.envelopeAddress: _result['StyleIdentifier'] = 'EnvelopeAddress'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.envelopeReturn: _result['StyleIdentifier'] = 'EnvelopeReturn'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.footnoteReference: _result['StyleIdentifier'] = 'FootnoteReference'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.commentReference: _result['StyleIdentifier'] = 'CommentReference'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lineNumber: _result['StyleIdentifier'] = 'LineNumber'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.pageNumber: _result['StyleIdentifier'] = 'PageNumber'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.endnoteReference: _result['StyleIdentifier'] = 'EndnoteReference'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.endnoteText: _result['StyleIdentifier'] = 'EndnoteText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableOfAuthorities: _result['StyleIdentifier'] = 'TableOfAuthorities'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.macro: _result['StyleIdentifier'] = 'Macro'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.toaHeading: _result['StyleIdentifier'] = 'ToaHeading'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.list: _result['StyleIdentifier'] = 'List'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listBullet: _result['StyleIdentifier'] = 'ListBullet'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listNumber: _result['StyleIdentifier'] = 'ListNumber'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.list2: _result['StyleIdentifier'] = 'List2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.list3: _result['StyleIdentifier'] = 'List3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.list4: _result['StyleIdentifier'] = 'List4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.list5: _result['StyleIdentifier'] = 'List5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listBullet2: _result['StyleIdentifier'] = 'ListBullet2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listBullet3: _result['StyleIdentifier'] = 'ListBullet3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listBullet4: _result['StyleIdentifier'] = 'ListBullet4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listBullet5: _result['StyleIdentifier'] = 'ListBullet5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listNumber2: _result['StyleIdentifier'] = 'ListNumber2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listNumber3: _result['StyleIdentifier'] = 'ListNumber3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listNumber4: _result['StyleIdentifier'] = 'ListNumber4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listNumber5: _result['StyleIdentifier'] = 'ListNumber5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.title: _result['StyleIdentifier'] = 'Title'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.closing: _result['StyleIdentifier'] = 'Closing'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.signature: _result['StyleIdentifier'] = 'Signature'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.defaultParagraphFont: _result['StyleIdentifier'] = 'DefaultParagraphFont'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyText: _result['StyleIdentifier'] = 'BodyText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyTextInd: _result['StyleIdentifier'] = 'BodyTextInd'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listContinue: _result['StyleIdentifier'] = 'ListContinue'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listContinue2: _result['StyleIdentifier'] = 'ListContinue2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listContinue3: _result['StyleIdentifier'] = 'ListContinue3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listContinue4: _result['StyleIdentifier'] = 'ListContinue4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listContinue5: _result['StyleIdentifier'] = 'ListContinue5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.messageHeader: _result['StyleIdentifier'] = 'MessageHeader'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.subtitle: _result['StyleIdentifier'] = 'Subtitle'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.salutation: _result['StyleIdentifier'] = 'Salutation'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.date: _result['StyleIdentifier'] = 'Date'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyText1I: _result['StyleIdentifier'] = 'BodyText1I'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyText1I2: _result['StyleIdentifier'] = 'BodyText1I2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.noteHeading: _result['StyleIdentifier'] = 'NoteHeading'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyText2: _result['StyleIdentifier'] = 'BodyText2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyText3: _result['StyleIdentifier'] = 'BodyText3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyTextInd2: _result['StyleIdentifier'] = 'BodyTextInd2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bodyTextInd3: _result['StyleIdentifier'] = 'BodyTextInd3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.blockText: _result['StyleIdentifier'] = 'BlockText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.hyperlink: _result['StyleIdentifier'] = 'Hyperlink'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.followedHyperlink: _result['StyleIdentifier'] = 'FollowedHyperlink'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.strong: _result['StyleIdentifier'] = 'Strong'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.emphasis: _result['StyleIdentifier'] = 'Emphasis'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.documentMap: _result['StyleIdentifier'] = 'DocumentMap'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.plainText: _result['StyleIdentifier'] = 'PlainText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.emailSignature: _result['StyleIdentifier'] = 'EmailSignature'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlTopOfForm: _result['StyleIdentifier'] = 'HtmlTopOfForm'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlBottomOfForm: _result['StyleIdentifier'] = 'HtmlBottomOfForm'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.normalWeb: _result['StyleIdentifier'] = 'NormalWeb'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlAcronym: _result['StyleIdentifier'] = 'HtmlAcronym'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlAddress: _result['StyleIdentifier'] = 'HtmlAddress'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlCite: _result['StyleIdentifier'] = 'HtmlCite'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlCode: _result['StyleIdentifier'] = 'HtmlCode'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlDefinition: _result['StyleIdentifier'] = 'HtmlDefinition'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlKeyboard: _result['StyleIdentifier'] = 'HtmlKeyboard'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlPreformatted: _result['StyleIdentifier'] = 'HtmlPreformatted'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlSample: _result['StyleIdentifier'] = 'HtmlSample'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlTypewriter: _result['StyleIdentifier'] = 'HtmlTypewriter'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.htmlVariable: _result['StyleIdentifier'] = 'HtmlVariable'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableNormal: _result['StyleIdentifier'] = 'TableNormal'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.commentSubject: _result['StyleIdentifier'] = 'CommentSubject'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.noList: _result['StyleIdentifier'] = 'NoList'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.outlineList1: _result['StyleIdentifier'] = 'OutlineList1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.outlineList2: _result['StyleIdentifier'] = 'OutlineList2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.outlineList3: _result['StyleIdentifier'] = 'OutlineList3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableSimple1: _result['StyleIdentifier'] = 'TableSimple1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableSimple2: _result['StyleIdentifier'] = 'TableSimple2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableSimple3: _result['StyleIdentifier'] = 'TableSimple3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableClassic1: _result['StyleIdentifier'] = 'TableClassic1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableClassic2: _result['StyleIdentifier'] = 'TableClassic2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableClassic3: _result['StyleIdentifier'] = 'TableClassic3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableClassic4: _result['StyleIdentifier'] = 'TableClassic4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColorful1: _result['StyleIdentifier'] = 'TableColorful1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColorful2: _result['StyleIdentifier'] = 'TableColorful2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColorful3: _result['StyleIdentifier'] = 'TableColorful3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColumns1: _result['StyleIdentifier'] = 'TableColumns1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColumns2: _result['StyleIdentifier'] = 'TableColumns2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColumns3: _result['StyleIdentifier'] = 'TableColumns3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColumns4: _result['StyleIdentifier'] = 'TableColumns4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableColumns5: _result['StyleIdentifier'] = 'TableColumns5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid1: _result['StyleIdentifier'] = 'TableGrid1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid2: _result['StyleIdentifier'] = 'TableGrid2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid3: _result['StyleIdentifier'] = 'TableGrid3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid4: _result['StyleIdentifier'] = 'TableGrid4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid5: _result['StyleIdentifier'] = 'TableGrid5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid6: _result['StyleIdentifier'] = 'TableGrid6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid7: _result['StyleIdentifier'] = 'TableGrid7'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid8: _result['StyleIdentifier'] = 'TableGrid8'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList1: _result['StyleIdentifier'] = 'TableList1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList2: _result['StyleIdentifier'] = 'TableList2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList3: _result['StyleIdentifier'] = 'TableList3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList4: _result['StyleIdentifier'] = 'TableList4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList5: _result['StyleIdentifier'] = 'TableList5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList6: _result['StyleIdentifier'] = 'TableList6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList7: _result['StyleIdentifier'] = 'TableList7'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableList8: _result['StyleIdentifier'] = 'TableList8'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.table3DEffects1: _result['StyleIdentifier'] = 'Table3DEffects1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.table3DEffects2: _result['StyleIdentifier'] = 'Table3DEffects2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.table3DEffects3: _result['StyleIdentifier'] = 'Table3DEffects3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableContemporary: _result['StyleIdentifier'] = 'TableContemporary'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableElegant: _result['StyleIdentifier'] = 'TableElegant'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableProfessional: _result['StyleIdentifier'] = 'TableProfessional'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableSubtle1: _result['StyleIdentifier'] = 'TableSubtle1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableSubtle2: _result['StyleIdentifier'] = 'TableSubtle2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableWeb1: _result['StyleIdentifier'] = 'TableWeb1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableWeb2: _result['StyleIdentifier'] = 'TableWeb2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableWeb3: _result['StyleIdentifier'] = 'TableWeb3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.balloonText: _result['StyleIdentifier'] = 'BalloonText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGrid: _result['StyleIdentifier'] = 'TableGrid'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableTheme: _result['StyleIdentifier'] = 'TableTheme'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.placeholderText: _result['StyleIdentifier'] = 'PlaceholderText'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.noSpacing: _result['StyleIdentifier'] = 'NoSpacing'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightShading: _result['StyleIdentifier'] = 'LightShading'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightList: _result['StyleIdentifier'] = 'LightList'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightGrid: _result['StyleIdentifier'] = 'LightGrid'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading1: _result['StyleIdentifier'] = 'MediumShading1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading2: _result['StyleIdentifier'] = 'MediumShading2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList1: _result['StyleIdentifier'] = 'MediumList1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList2: _result['StyleIdentifier'] = 'MediumList2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1: _result['StyleIdentifier'] = 'MediumGrid1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2: _result['StyleIdentifier'] = 'MediumGrid2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3: _result['StyleIdentifier'] = 'MediumGrid3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.darkList: _result['StyleIdentifier'] = 'DarkList'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulShading: _result['StyleIdentifier'] = 'ColorfulShading'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulList: _result['StyleIdentifier'] = 'ColorfulList'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulGrid: _result['StyleIdentifier'] = 'ColorfulGrid'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent1: _result['StyleIdentifier'] = 'LightShadingAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightListAccent1: _result['StyleIdentifier'] = 'LightListAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent1: _result['StyleIdentifier'] = 'LightGridAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent1: _result['StyleIdentifier'] = 'MediumShading1Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent1: _result['StyleIdentifier'] = 'MediumShading2Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent1: _result['StyleIdentifier'] = 'MediumList1Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.revision: _result['StyleIdentifier'] = 'Revision'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listParagraph: _result['StyleIdentifier'] = 'ListParagraph'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.quote: _result['StyleIdentifier'] = 'Quote'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.intenseQuote: _result['StyleIdentifier'] = 'IntenseQuote'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent1: _result['StyleIdentifier'] = 'MediumList2Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent1: _result['StyleIdentifier'] = 'MediumGrid1Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent1: _result['StyleIdentifier'] = 'MediumGrid2Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent1: _result['StyleIdentifier'] = 'MediumGrid3Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.darkListAccent1: _result['StyleIdentifier'] = 'DarkListAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent1: _result['StyleIdentifier'] = 'ColorfulShadingAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent1: _result['StyleIdentifier'] = 'ColorfulListAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent1: _result['StyleIdentifier'] = 'ColorfulGridAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent2: _result['StyleIdentifier'] = 'LightShadingAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightListAccent2: _result['StyleIdentifier'] = 'LightListAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent2: _result['StyleIdentifier'] = 'LightGridAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent2: _result['StyleIdentifier'] = 'MediumShading1Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent2: _result['StyleIdentifier'] = 'MediumShading2Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent2: _result['StyleIdentifier'] = 'MediumList1Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent2: _result['StyleIdentifier'] = 'MediumList2Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent2: _result['StyleIdentifier'] = 'MediumGrid1Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent2: _result['StyleIdentifier'] = 'MediumGrid2Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent2: _result['StyleIdentifier'] = 'MediumGrid3Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.darkListAccent2: _result['StyleIdentifier'] = 'DarkListAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent2: _result['StyleIdentifier'] = 'ColorfulShadingAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent2: _result['StyleIdentifier'] = 'ColorfulListAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent2: _result['StyleIdentifier'] = 'ColorfulGridAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent3: _result['StyleIdentifier'] = 'LightShadingAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightListAccent3: _result['StyleIdentifier'] = 'LightListAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent3: _result['StyleIdentifier'] = 'LightGridAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent3: _result['StyleIdentifier'] = 'MediumShading1Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent3: _result['StyleIdentifier'] = 'MediumShading2Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent3: _result['StyleIdentifier'] = 'MediumList1Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent3: _result['StyleIdentifier'] = 'MediumList2Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent3: _result['StyleIdentifier'] = 'MediumGrid1Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent3: _result['StyleIdentifier'] = 'MediumGrid2Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent3: _result['StyleIdentifier'] = 'MediumGrid3Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.darkListAccent3: _result['StyleIdentifier'] = 'DarkListAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent3: _result['StyleIdentifier'] = 'ColorfulShadingAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent3: _result['StyleIdentifier'] = 'ColorfulListAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent3: _result['StyleIdentifier'] = 'ColorfulGridAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent4: _result['StyleIdentifier'] = 'LightShadingAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightListAccent4: _result['StyleIdentifier'] = 'LightListAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent4: _result['StyleIdentifier'] = 'LightGridAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent4: _result['StyleIdentifier'] = 'MediumShading1Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent4: _result['StyleIdentifier'] = 'MediumShading2Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent4: _result['StyleIdentifier'] = 'MediumList1Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent4: _result['StyleIdentifier'] = 'MediumList2Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent4: _result['StyleIdentifier'] = 'MediumGrid1Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent4: _result['StyleIdentifier'] = 'MediumGrid2Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent4: _result['StyleIdentifier'] = 'MediumGrid3Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.darkListAccent4: _result['StyleIdentifier'] = 'DarkListAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent4: _result['StyleIdentifier'] = 'ColorfulShadingAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent4: _result['StyleIdentifier'] = 'ColorfulListAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent4: _result['StyleIdentifier'] = 'ColorfulGridAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent5: _result['StyleIdentifier'] = 'LightShadingAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightListAccent5: _result['StyleIdentifier'] = 'LightListAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent5: _result['StyleIdentifier'] = 'LightGridAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent5: _result['StyleIdentifier'] = 'MediumShading1Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent5: _result['StyleIdentifier'] = 'MediumShading2Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent5: _result['StyleIdentifier'] = 'MediumList1Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent5: _result['StyleIdentifier'] = 'MediumList2Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent5: _result['StyleIdentifier'] = 'MediumGrid1Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent5: _result['StyleIdentifier'] = 'MediumGrid2Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent5: _result['StyleIdentifier'] = 'MediumGrid3Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.darkListAccent5: _result['StyleIdentifier'] = 'DarkListAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent5: _result['StyleIdentifier'] = 'ColorfulShadingAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent5: _result['StyleIdentifier'] = 'ColorfulListAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent5: _result['StyleIdentifier'] = 'ColorfulGridAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightShadingAccent6: _result['StyleIdentifier'] = 'LightShadingAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightListAccent6: _result['StyleIdentifier'] = 'LightListAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.lightGridAccent6: _result['StyleIdentifier'] = 'LightGridAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading1Accent6: _result['StyleIdentifier'] = 'MediumShading1Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumShading2Accent6: _result['StyleIdentifier'] = 'MediumShading2Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList1Accent6: _result['StyleIdentifier'] = 'MediumList1Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumList2Accent6: _result['StyleIdentifier'] = 'MediumList2Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid1Accent6: _result['StyleIdentifier'] = 'MediumGrid1Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid2Accent6: _result['StyleIdentifier'] = 'MediumGrid2Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mediumGrid3Accent6: _result['StyleIdentifier'] = 'MediumGrid3Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.darkListAccent6: _result['StyleIdentifier'] = 'DarkListAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulShadingAccent6: _result['StyleIdentifier'] = 'ColorfulShadingAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulListAccent6: _result['StyleIdentifier'] = 'ColorfulListAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.colorfulGridAccent6: _result['StyleIdentifier'] = 'ColorfulGridAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.subtleEmphasis: _result['StyleIdentifier'] = 'SubtleEmphasis'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.intenseEmphasis: _result['StyleIdentifier'] = 'IntenseEmphasis'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.subtleReference: _result['StyleIdentifier'] = 'SubtleReference'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.intenseReference: _result['StyleIdentifier'] = 'IntenseReference'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bookTitle: _result['StyleIdentifier'] = 'BookTitle'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.bibliography: _result['StyleIdentifier'] = 'Bibliography'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tocHeading: _result['StyleIdentifier'] = 'TocHeading'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.plainTable1: _result['StyleIdentifier'] = 'PlainTable1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.plainTable2: _result['StyleIdentifier'] = 'PlainTable2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.plainTable3: _result['StyleIdentifier'] = 'PlainTable3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.plainTable4: _result['StyleIdentifier'] = 'PlainTable4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.plainTable5: _result['StyleIdentifier'] = 'PlainTable5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.tableGridLight: _result['StyleIdentifier'] = 'TableGridLight'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable1Light: _result['StyleIdentifier'] = 'GridTable1Light'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable2: _result['StyleIdentifier'] = 'GridTable2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable3: _result['StyleIdentifier'] = 'GridTable3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable4: _result['StyleIdentifier'] = 'GridTable4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable5Dark: _result['StyleIdentifier'] = 'GridTable5Dark'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable6Colorful: _result['StyleIdentifier'] = 'GridTable6Colorful'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable7Colorful: _result['StyleIdentifier'] = 'GridTable7Colorful'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent1: _result['StyleIdentifier'] = 'GridTable1LightAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent1: _result['StyleIdentifier'] = 'GridTable2Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent1: _result['StyleIdentifier'] = 'GridTable3Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent1: _result['StyleIdentifier'] = 'GridTable4Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent1: _result['StyleIdentifier'] = 'GridTable5DarkAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent2: _result['StyleIdentifier'] = 'GridTable1LightAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent2: _result['StyleIdentifier'] = 'GridTable2Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent2: _result['StyleIdentifier'] = 'GridTable3Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent2: _result['StyleIdentifier'] = 'GridTable4Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent2: _result['StyleIdentifier'] = 'GridTable5DarkAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent3: _result['StyleIdentifier'] = 'GridTable1LightAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent3: _result['StyleIdentifier'] = 'GridTable2Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent3: _result['StyleIdentifier'] = 'GridTable3Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent3: _result['StyleIdentifier'] = 'GridTable4Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent3: _result['StyleIdentifier'] = 'GridTable5DarkAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent4: _result['StyleIdentifier'] = 'GridTable1LightAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent4: _result['StyleIdentifier'] = 'GridTable2Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent4: _result['StyleIdentifier'] = 'GridTable3Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent4: _result['StyleIdentifier'] = 'GridTable4Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent4: _result['StyleIdentifier'] = 'GridTable5DarkAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent5: _result['StyleIdentifier'] = 'GridTable1LightAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent5: _result['StyleIdentifier'] = 'GridTable2Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent5: _result['StyleIdentifier'] = 'GridTable3Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent5: _result['StyleIdentifier'] = 'GridTable4Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent5: _result['StyleIdentifier'] = 'GridTable5DarkAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable1LightAccent6: _result['StyleIdentifier'] = 'GridTable1LightAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable2Accent6: _result['StyleIdentifier'] = 'GridTable2Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable3Accent6: _result['StyleIdentifier'] = 'GridTable3Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable4Accent6: _result['StyleIdentifier'] = 'GridTable4Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable5DarkAccent6: _result['StyleIdentifier'] = 'GridTable5DarkAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable6ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.gridTable7ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable1Light: _result['StyleIdentifier'] = 'ListTable1Light'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable2: _result['StyleIdentifier'] = 'ListTable2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable3: _result['StyleIdentifier'] = 'ListTable3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable4: _result['StyleIdentifier'] = 'ListTable4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable5Dark: _result['StyleIdentifier'] = 'ListTable5Dark'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable6Colorful: _result['StyleIdentifier'] = 'ListTable6Colorful'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable7Colorful: _result['StyleIdentifier'] = 'ListTable7Colorful'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent1: _result['StyleIdentifier'] = 'ListTable1LightAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent1: _result['StyleIdentifier'] = 'ListTable2Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent1: _result['StyleIdentifier'] = 'ListTable3Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent1: _result['StyleIdentifier'] = 'ListTable4Accent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent1: _result['StyleIdentifier'] = 'ListTable5DarkAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent1'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent2: _result['StyleIdentifier'] = 'ListTable1LightAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent2: _result['StyleIdentifier'] = 'ListTable2Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent2: _result['StyleIdentifier'] = 'ListTable3Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent2: _result['StyleIdentifier'] = 'ListTable4Accent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent2: _result['StyleIdentifier'] = 'ListTable5DarkAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent2'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent3: _result['StyleIdentifier'] = 'ListTable1LightAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent3: _result['StyleIdentifier'] = 'ListTable2Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent3: _result['StyleIdentifier'] = 'ListTable3Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent3: _result['StyleIdentifier'] = 'ListTable4Accent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent3: _result['StyleIdentifier'] = 'ListTable5DarkAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent3'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent4: _result['StyleIdentifier'] = 'ListTable1LightAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent4: _result['StyleIdentifier'] = 'ListTable2Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent4: _result['StyleIdentifier'] = 'ListTable3Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent4: _result['StyleIdentifier'] = 'ListTable4Accent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent4: _result['StyleIdentifier'] = 'ListTable5DarkAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent4'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent5: _result['StyleIdentifier'] = 'ListTable1LightAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent5: _result['StyleIdentifier'] = 'ListTable2Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent5: _result['StyleIdentifier'] = 'ListTable3Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent5: _result['StyleIdentifier'] = 'ListTable4Accent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent5: _result['StyleIdentifier'] = 'ListTable5DarkAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent5'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable1LightAccent6: _result['StyleIdentifier'] = 'ListTable1LightAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable2Accent6: _result['StyleIdentifier'] = 'ListTable2Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable3Accent6: _result['StyleIdentifier'] = 'ListTable3Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable4Accent6: _result['StyleIdentifier'] = 'ListTable4Accent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable5DarkAccent6: _result['StyleIdentifier'] = 'ListTable5DarkAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable6ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.listTable7ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent6'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.smartLink: _result['StyleIdentifier'] = 'SmartLink'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.mention: _result['StyleIdentifier'] = 'Mention'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.smartHyperlink: _result['StyleIdentifier'] = 'SmartHyperlink'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.hashtag: _result['StyleIdentifier'] = 'Hashtag'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.unresolvedMention: _result['StyleIdentifier'] = 'UnresolvedMention'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.user: _result['StyleIdentifier'] = 'User'; break;
        case ParagraphFormatBase_StyleIdentifierEnum.nil: _result['StyleIdentifier'] = 'Nil'; break;
        default: break;
      }
    }

    if (styleName != null) {
      _result['StyleName'] = styleName!;
    }

    if (suppressAutoHyphens != null) {
      _result['SuppressAutoHyphens'] = suppressAutoHyphens!;
    }

    if (suppressLineNumbers != null) {
      _result['SuppressLineNumbers'] = suppressLineNumbers!;
    }

    if (widowControl != null) {
      _result['WidowControl'] = widowControl!;
    }

    if (shading != null) {
      _result['Shading'] = shading!.serialize();
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    shading?.validate();

  }
}

/// Gets or sets text alignment for the paragraph.
enum ParagraphFormatBase_AlignmentEnum
{ 
  left,
  center,
  right,
  justify,
  distributed,
  arabicMediumKashida,
  arabicHighKashida,
  arabicLowKashida,
  thaiDistributed,
  mathElementCenterAsGroup
}

/// Gets or sets the position for a drop cap text.
enum ParagraphFormatBase_DropCapPositionEnum
{ 
  none,
  normal,
  margin
}

/// Gets or sets the line spacing for the paragraph.
enum ParagraphFormatBase_LineSpacingRuleEnum
{ 
  atLeast,
  exactly,
  multiple
}

/// Gets or sets the outline level of the paragraph in the document.
enum ParagraphFormatBase_OutlineLevelEnum
{ 
  level1,
  level2,
  level3,
  level4,
  level5,
  level6,
  level7,
  level8,
  level9,
  bodyText
}

/// Gets or sets the locale independent style identifier of the paragraph style applied to this formatting.
enum ParagraphFormatBase_StyleIdentifierEnum
{ 
  normal,
  heading1,
  heading2,
  heading3,
  heading4,
  heading5,
  heading6,
  heading7,
  heading8,
  heading9,
  index1,
  index2,
  index3,
  index4,
  index5,
  index6,
  index7,
  index8,
  index9,
  toc1,
  toc2,
  toc3,
  toc4,
  toc5,
  toc6,
  toc7,
  toc8,
  toc9,
  normalIndent,
  footnoteText,
  commentText,
  header,
  footer,
  indexHeading,
  caption,
  tableOfFigures,
  envelopeAddress,
  envelopeReturn,
  footnoteReference,
  commentReference,
  lineNumber,
  pageNumber,
  endnoteReference,
  endnoteText,
  tableOfAuthorities,
  macro,
  toaHeading,
  list,
  listBullet,
  listNumber,
  list2,
  list3,
  list4,
  list5,
  listBullet2,
  listBullet3,
  listBullet4,
  listBullet5,
  listNumber2,
  listNumber3,
  listNumber4,
  listNumber5,
  title,
  closing,
  signature,
  defaultParagraphFont,
  bodyText,
  bodyTextInd,
  listContinue,
  listContinue2,
  listContinue3,
  listContinue4,
  listContinue5,
  messageHeader,
  subtitle,
  salutation,
  date,
  bodyText1I,
  bodyText1I2,
  noteHeading,
  bodyText2,
  bodyText3,
  bodyTextInd2,
  bodyTextInd3,
  blockText,
  hyperlink,
  followedHyperlink,
  strong,
  emphasis,
  documentMap,
  plainText,
  emailSignature,
  htmlTopOfForm,
  htmlBottomOfForm,
  normalWeb,
  htmlAcronym,
  htmlAddress,
  htmlCite,
  htmlCode,
  htmlDefinition,
  htmlKeyboard,
  htmlPreformatted,
  htmlSample,
  htmlTypewriter,
  htmlVariable,
  tableNormal,
  commentSubject,
  noList,
  outlineList1,
  outlineList2,
  outlineList3,
  tableSimple1,
  tableSimple2,
  tableSimple3,
  tableClassic1,
  tableClassic2,
  tableClassic3,
  tableClassic4,
  tableColorful1,
  tableColorful2,
  tableColorful3,
  tableColumns1,
  tableColumns2,
  tableColumns3,
  tableColumns4,
  tableColumns5,
  tableGrid1,
  tableGrid2,
  tableGrid3,
  tableGrid4,
  tableGrid5,
  tableGrid6,
  tableGrid7,
  tableGrid8,
  tableList1,
  tableList2,
  tableList3,
  tableList4,
  tableList5,
  tableList6,
  tableList7,
  tableList8,
  table3DEffects1,
  table3DEffects2,
  table3DEffects3,
  tableContemporary,
  tableElegant,
  tableProfessional,
  tableSubtle1,
  tableSubtle2,
  tableWeb1,
  tableWeb2,
  tableWeb3,
  balloonText,
  tableGrid,
  tableTheme,
  placeholderText,
  noSpacing,
  lightShading,
  lightList,
  lightGrid,
  mediumShading1,
  mediumShading2,
  mediumList1,
  mediumList2,
  mediumGrid1,
  mediumGrid2,
  mediumGrid3,
  darkList,
  colorfulShading,
  colorfulList,
  colorfulGrid,
  lightShadingAccent1,
  lightListAccent1,
  lightGridAccent1,
  mediumShading1Accent1,
  mediumShading2Accent1,
  mediumList1Accent1,
  revision,
  listParagraph,
  quote,
  intenseQuote,
  mediumList2Accent1,
  mediumGrid1Accent1,
  mediumGrid2Accent1,
  mediumGrid3Accent1,
  darkListAccent1,
  colorfulShadingAccent1,
  colorfulListAccent1,
  colorfulGridAccent1,
  lightShadingAccent2,
  lightListAccent2,
  lightGridAccent2,
  mediumShading1Accent2,
  mediumShading2Accent2,
  mediumList1Accent2,
  mediumList2Accent2,
  mediumGrid1Accent2,
  mediumGrid2Accent2,
  mediumGrid3Accent2,
  darkListAccent2,
  colorfulShadingAccent2,
  colorfulListAccent2,
  colorfulGridAccent2,
  lightShadingAccent3,
  lightListAccent3,
  lightGridAccent3,
  mediumShading1Accent3,
  mediumShading2Accent3,
  mediumList1Accent3,
  mediumList2Accent3,
  mediumGrid1Accent3,
  mediumGrid2Accent3,
  mediumGrid3Accent3,
  darkListAccent3,
  colorfulShadingAccent3,
  colorfulListAccent3,
  colorfulGridAccent3,
  lightShadingAccent4,
  lightListAccent4,
  lightGridAccent4,
  mediumShading1Accent4,
  mediumShading2Accent4,
  mediumList1Accent4,
  mediumList2Accent4,
  mediumGrid1Accent4,
  mediumGrid2Accent4,
  mediumGrid3Accent4,
  darkListAccent4,
  colorfulShadingAccent4,
  colorfulListAccent4,
  colorfulGridAccent4,
  lightShadingAccent5,
  lightListAccent5,
  lightGridAccent5,
  mediumShading1Accent5,
  mediumShading2Accent5,
  mediumList1Accent5,
  mediumList2Accent5,
  mediumGrid1Accent5,
  mediumGrid2Accent5,
  mediumGrid3Accent5,
  darkListAccent5,
  colorfulShadingAccent5,
  colorfulListAccent5,
  colorfulGridAccent5,
  lightShadingAccent6,
  lightListAccent6,
  lightGridAccent6,
  mediumShading1Accent6,
  mediumShading2Accent6,
  mediumList1Accent6,
  mediumList2Accent6,
  mediumGrid1Accent6,
  mediumGrid2Accent6,
  mediumGrid3Accent6,
  darkListAccent6,
  colorfulShadingAccent6,
  colorfulListAccent6,
  colorfulGridAccent6,
  subtleEmphasis,
  intenseEmphasis,
  subtleReference,
  intenseReference,
  bookTitle,
  bibliography,
  tocHeading,
  plainTable1,
  plainTable2,
  plainTable3,
  plainTable4,
  plainTable5,
  tableGridLight,
  gridTable1Light,
  gridTable2,
  gridTable3,
  gridTable4,
  gridTable5Dark,
  gridTable6Colorful,
  gridTable7Colorful,
  gridTable1LightAccent1,
  gridTable2Accent1,
  gridTable3Accent1,
  gridTable4Accent1,
  gridTable5DarkAccent1,
  gridTable6ColorfulAccent1,
  gridTable7ColorfulAccent1,
  gridTable1LightAccent2,
  gridTable2Accent2,
  gridTable3Accent2,
  gridTable4Accent2,
  gridTable5DarkAccent2,
  gridTable6ColorfulAccent2,
  gridTable7ColorfulAccent2,
  gridTable1LightAccent3,
  gridTable2Accent3,
  gridTable3Accent3,
  gridTable4Accent3,
  gridTable5DarkAccent3,
  gridTable6ColorfulAccent3,
  gridTable7ColorfulAccent3,
  gridTable1LightAccent4,
  gridTable2Accent4,
  gridTable3Accent4,
  gridTable4Accent4,
  gridTable5DarkAccent4,
  gridTable6ColorfulAccent4,
  gridTable7ColorfulAccent4,
  gridTable1LightAccent5,
  gridTable2Accent5,
  gridTable3Accent5,
  gridTable4Accent5,
  gridTable5DarkAccent5,
  gridTable6ColorfulAccent5,
  gridTable7ColorfulAccent5,
  gridTable1LightAccent6,
  gridTable2Accent6,
  gridTable3Accent6,
  gridTable4Accent6,
  gridTable5DarkAccent6,
  gridTable6ColorfulAccent6,
  gridTable7ColorfulAccent6,
  listTable1Light,
  listTable2,
  listTable3,
  listTable4,
  listTable5Dark,
  listTable6Colorful,
  listTable7Colorful,
  listTable1LightAccent1,
  listTable2Accent1,
  listTable3Accent1,
  listTable4Accent1,
  listTable5DarkAccent1,
  listTable6ColorfulAccent1,
  listTable7ColorfulAccent1,
  listTable1LightAccent2,
  listTable2Accent2,
  listTable3Accent2,
  listTable4Accent2,
  listTable5DarkAccent2,
  listTable6ColorfulAccent2,
  listTable7ColorfulAccent2,
  listTable1LightAccent3,
  listTable2Accent3,
  listTable3Accent3,
  listTable4Accent3,
  listTable5DarkAccent3,
  listTable6ColorfulAccent3,
  listTable7ColorfulAccent3,
  listTable1LightAccent4,
  listTable2Accent4,
  listTable3Accent4,
  listTable4Accent4,
  listTable5DarkAccent4,
  listTable6ColorfulAccent4,
  listTable7ColorfulAccent4,
  listTable1LightAccent5,
  listTable2Accent5,
  listTable3Accent5,
  listTable4Accent5,
  listTable5DarkAccent5,
  listTable6ColorfulAccent5,
  listTable7ColorfulAccent5,
  listTable1LightAccent6,
  listTable2Accent6,
  listTable3Accent6,
  listTable4Accent6,
  listTable5DarkAccent6,
  listTable6ColorfulAccent6,
  listTable7ColorfulAccent6,
  smartLink,
  mention,
  smartHyperlink,
  hashtag,
  unresolvedMention,
  user,
  nil
}

