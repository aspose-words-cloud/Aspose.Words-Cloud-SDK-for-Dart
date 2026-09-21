/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="paragraph_format.dart">
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

/// Paragraph format element.
class ParagraphFormat extends ParagraphFormatBase {
  /// Gets or sets a value indicating whether the paragraph is an item in a bulleted or numbered list.
  bool? _isListItem;

  bool? get isListItem => _isListItem;
  set isListItem(bool? val) => _isListItem = val;


  /// Gets or sets a value indicating whether the paragraph style is one of the built-in Heading styles.
  bool? _isHeading;

  bool? get isHeading => _isHeading;
  set isHeading(bool? val) => _isHeading = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ParagraphFormat data model.');
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

    if (json.containsKey('IsListItem')) {
      isListItem = json['IsListItem'] as bool;
    } else {
      isListItem = null;
    }

    if (json.containsKey('IsHeading')) {
      isHeading = json['IsHeading'] as bool;
    } else {
      isHeading = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (isListItem != null) {
      _result['IsListItem'] = isListItem!;
    }

    if (isHeading != null) {
      _result['IsHeading'] = isHeading!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
  }
}


