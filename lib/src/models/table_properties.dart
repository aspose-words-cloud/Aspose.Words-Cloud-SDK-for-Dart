/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="table_properties.dart">
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

/// DTO container with table properties.
class TableProperties extends LinkElement {
  /// Gets or sets the option that controls how an inline table is aligned in the document.
  /// The default value is Left.
  TableProperties_AlignmentEnum? _alignment;

  TableProperties_AlignmentEnum? get alignment => _alignment;
  set alignment(TableProperties_AlignmentEnum? val) => _alignment = val;


  /// Gets or sets a value indicating whether to automatically resize cells in a table to fit their contents.
  /// The default value is true.
  bool? _allowAutoFit;

  bool? get allowAutoFit => _allowAutoFit;
  set allowAutoFit(bool? val) => _allowAutoFit = val;


  /// Gets or sets a value indicating whether this is a right-to-left table.
  /// When true, the cells in this row are laid out right to left.The default value is false.
  bool? _bidi;

  bool? get bidi => _bidi;
  set bidi(bool? val) => _bidi = val;


  /// Gets or sets the amount of space (in points) to add below the contents of cells.
  double? _bottomPadding;

  double? get bottomPadding => _bottomPadding;
  set bottomPadding(double? val) => _bottomPadding = val;


  /// Gets or sets the amount of space (in points) between the cells.
  double? _cellSpacing;

  double? get cellSpacing => _cellSpacing;
  set cellSpacing(double? val) => _cellSpacing = val;


  /// Gets or sets the value, that represents the left indent of the table.
  double? _leftIndent;

  double? get leftIndent => _leftIndent;
  set leftIndent(double? val) => _leftIndent = val;


  /// Gets or sets the amount of space (in points) to add to the left of the contents of cells.
  double? _leftPadding;

  double? get leftPadding => _leftPadding;
  set leftPadding(double? val) => _leftPadding = val;


  /// Gets or sets the table preferred width.
  /// Preferred width can be specified as a percentage, number of points or a special "auto" value.
  PreferredWidth? _preferredWidth;

  PreferredWidth? get preferredWidth => _preferredWidth;
  set preferredWidth(PreferredWidth? val) => _preferredWidth = val;


  /// Gets or sets the amount of space (in points) to add to the right of the contents of cells.
  double? _rightPadding;

  double? get rightPadding => _rightPadding;
  set rightPadding(double? val) => _rightPadding = val;


  /// Gets or sets the locale independent style identifier of the table style applied to this table.
  TableProperties_StyleIdentifierEnum? _styleIdentifier;

  TableProperties_StyleIdentifierEnum? get styleIdentifier => _styleIdentifier;
  set styleIdentifier(TableProperties_StyleIdentifierEnum? val) => _styleIdentifier = val;


  /// Gets or sets the name of the table style applied to this table.
  String? _styleName;

  String? get styleName => _styleName;
  set styleName(String? val) => _styleName = val;


  /// Gets or sets the bit flags, that specify how a table style is applied to this table.
  TableProperties_StyleOptionsEnum? _styleOptions;

  TableProperties_StyleOptionsEnum? get styleOptions => _styleOptions;
  set styleOptions(TableProperties_StyleOptionsEnum? val) => _styleOptions = val;


  /// Gets or sets the option that controls text wrapping for the table.
  TableProperties_TextWrappingEnum? _textWrapping;

  TableProperties_TextWrappingEnum? get textWrapping => _textWrapping;
  set textWrapping(TableProperties_TextWrappingEnum? val) => _textWrapping = val;


  /// Gets or sets the amount of space (in points) to add above the contents of cells.
  double? _topPadding;

  double? get topPadding => _topPadding;
  set topPadding(double? val) => _topPadding = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize TableProperties data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('Alignment')) {
      switch (json['Alignment'] as String) {
        case 'Left': alignment = TableProperties_AlignmentEnum.left; break;
        case 'Center': alignment = TableProperties_AlignmentEnum.center; break;
        case 'Right': alignment = TableProperties_AlignmentEnum.right; break;
        default: alignment = null; break;
      }
    } else {
      alignment = null;
    }

    if (json.containsKey('AllowAutoFit')) {
      allowAutoFit = json['AllowAutoFit'] as bool;
    } else {
      allowAutoFit = null;
    }

    if (json.containsKey('Bidi')) {
      bidi = json['Bidi'] as bool;
    } else {
      bidi = null;
    }

    if (json.containsKey('BottomPadding')) {
      bottomPadding = json['BottomPadding'] as double;
    } else {
      bottomPadding = null;
    }

    if (json.containsKey('CellSpacing')) {
      cellSpacing = json['CellSpacing'] as double;
    } else {
      cellSpacing = null;
    }

    if (json.containsKey('LeftIndent')) {
      leftIndent = json['LeftIndent'] as double;
    } else {
      leftIndent = null;
    }

    if (json.containsKey('LeftPadding')) {
      leftPadding = json['LeftPadding'] as double;
    } else {
      leftPadding = null;
    }

    if (json.containsKey('PreferredWidth')) {
      preferredWidth = ModelBase.createInstance< PreferredWidth >(json['PreferredWidth'] as Map<String, dynamic>);
    } else {
      preferredWidth = null;
    }

    if (json.containsKey('RightPadding')) {
      rightPadding = json['RightPadding'] as double;
    } else {
      rightPadding = null;
    }

    if (json.containsKey('StyleIdentifier')) {
      switch (json['StyleIdentifier'] as String) {
        case 'Normal': styleIdentifier = TableProperties_StyleIdentifierEnum.normal; break;
        case 'Heading1': styleIdentifier = TableProperties_StyleIdentifierEnum.heading1; break;
        case 'Heading2': styleIdentifier = TableProperties_StyleIdentifierEnum.heading2; break;
        case 'Heading3': styleIdentifier = TableProperties_StyleIdentifierEnum.heading3; break;
        case 'Heading4': styleIdentifier = TableProperties_StyleIdentifierEnum.heading4; break;
        case 'Heading5': styleIdentifier = TableProperties_StyleIdentifierEnum.heading5; break;
        case 'Heading6': styleIdentifier = TableProperties_StyleIdentifierEnum.heading6; break;
        case 'Heading7': styleIdentifier = TableProperties_StyleIdentifierEnum.heading7; break;
        case 'Heading8': styleIdentifier = TableProperties_StyleIdentifierEnum.heading8; break;
        case 'Heading9': styleIdentifier = TableProperties_StyleIdentifierEnum.heading9; break;
        case 'Index1': styleIdentifier = TableProperties_StyleIdentifierEnum.index1; break;
        case 'Index2': styleIdentifier = TableProperties_StyleIdentifierEnum.index2; break;
        case 'Index3': styleIdentifier = TableProperties_StyleIdentifierEnum.index3; break;
        case 'Index4': styleIdentifier = TableProperties_StyleIdentifierEnum.index4; break;
        case 'Index5': styleIdentifier = TableProperties_StyleIdentifierEnum.index5; break;
        case 'Index6': styleIdentifier = TableProperties_StyleIdentifierEnum.index6; break;
        case 'Index7': styleIdentifier = TableProperties_StyleIdentifierEnum.index7; break;
        case 'Index8': styleIdentifier = TableProperties_StyleIdentifierEnum.index8; break;
        case 'Index9': styleIdentifier = TableProperties_StyleIdentifierEnum.index9; break;
        case 'Toc1': styleIdentifier = TableProperties_StyleIdentifierEnum.toc1; break;
        case 'Toc2': styleIdentifier = TableProperties_StyleIdentifierEnum.toc2; break;
        case 'Toc3': styleIdentifier = TableProperties_StyleIdentifierEnum.toc3; break;
        case 'Toc4': styleIdentifier = TableProperties_StyleIdentifierEnum.toc4; break;
        case 'Toc5': styleIdentifier = TableProperties_StyleIdentifierEnum.toc5; break;
        case 'Toc6': styleIdentifier = TableProperties_StyleIdentifierEnum.toc6; break;
        case 'Toc7': styleIdentifier = TableProperties_StyleIdentifierEnum.toc7; break;
        case 'Toc8': styleIdentifier = TableProperties_StyleIdentifierEnum.toc8; break;
        case 'Toc9': styleIdentifier = TableProperties_StyleIdentifierEnum.toc9; break;
        case 'NormalIndent': styleIdentifier = TableProperties_StyleIdentifierEnum.normalIndent; break;
        case 'FootnoteText': styleIdentifier = TableProperties_StyleIdentifierEnum.footnoteText; break;
        case 'CommentText': styleIdentifier = TableProperties_StyleIdentifierEnum.commentText; break;
        case 'Header': styleIdentifier = TableProperties_StyleIdentifierEnum.header; break;
        case 'Footer': styleIdentifier = TableProperties_StyleIdentifierEnum.footer; break;
        case 'IndexHeading': styleIdentifier = TableProperties_StyleIdentifierEnum.indexHeading; break;
        case 'Caption': styleIdentifier = TableProperties_StyleIdentifierEnum.caption; break;
        case 'TableOfFigures': styleIdentifier = TableProperties_StyleIdentifierEnum.tableOfFigures; break;
        case 'EnvelopeAddress': styleIdentifier = TableProperties_StyleIdentifierEnum.envelopeAddress; break;
        case 'EnvelopeReturn': styleIdentifier = TableProperties_StyleIdentifierEnum.envelopeReturn; break;
        case 'FootnoteReference': styleIdentifier = TableProperties_StyleIdentifierEnum.footnoteReference; break;
        case 'CommentReference': styleIdentifier = TableProperties_StyleIdentifierEnum.commentReference; break;
        case 'LineNumber': styleIdentifier = TableProperties_StyleIdentifierEnum.lineNumber; break;
        case 'PageNumber': styleIdentifier = TableProperties_StyleIdentifierEnum.pageNumber; break;
        case 'EndnoteReference': styleIdentifier = TableProperties_StyleIdentifierEnum.endnoteReference; break;
        case 'EndnoteText': styleIdentifier = TableProperties_StyleIdentifierEnum.endnoteText; break;
        case 'TableOfAuthorities': styleIdentifier = TableProperties_StyleIdentifierEnum.tableOfAuthorities; break;
        case 'Macro': styleIdentifier = TableProperties_StyleIdentifierEnum.macro; break;
        case 'ToaHeading': styleIdentifier = TableProperties_StyleIdentifierEnum.toaHeading; break;
        case 'List': styleIdentifier = TableProperties_StyleIdentifierEnum.list; break;
        case 'ListBullet': styleIdentifier = TableProperties_StyleIdentifierEnum.listBullet; break;
        case 'ListNumber': styleIdentifier = TableProperties_StyleIdentifierEnum.listNumber; break;
        case 'List2': styleIdentifier = TableProperties_StyleIdentifierEnum.list2; break;
        case 'List3': styleIdentifier = TableProperties_StyleIdentifierEnum.list3; break;
        case 'List4': styleIdentifier = TableProperties_StyleIdentifierEnum.list4; break;
        case 'List5': styleIdentifier = TableProperties_StyleIdentifierEnum.list5; break;
        case 'ListBullet2': styleIdentifier = TableProperties_StyleIdentifierEnum.listBullet2; break;
        case 'ListBullet3': styleIdentifier = TableProperties_StyleIdentifierEnum.listBullet3; break;
        case 'ListBullet4': styleIdentifier = TableProperties_StyleIdentifierEnum.listBullet4; break;
        case 'ListBullet5': styleIdentifier = TableProperties_StyleIdentifierEnum.listBullet5; break;
        case 'ListNumber2': styleIdentifier = TableProperties_StyleIdentifierEnum.listNumber2; break;
        case 'ListNumber3': styleIdentifier = TableProperties_StyleIdentifierEnum.listNumber3; break;
        case 'ListNumber4': styleIdentifier = TableProperties_StyleIdentifierEnum.listNumber4; break;
        case 'ListNumber5': styleIdentifier = TableProperties_StyleIdentifierEnum.listNumber5; break;
        case 'Title': styleIdentifier = TableProperties_StyleIdentifierEnum.title; break;
        case 'Closing': styleIdentifier = TableProperties_StyleIdentifierEnum.closing; break;
        case 'Signature': styleIdentifier = TableProperties_StyleIdentifierEnum.signature; break;
        case 'DefaultParagraphFont': styleIdentifier = TableProperties_StyleIdentifierEnum.defaultParagraphFont; break;
        case 'BodyText': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyText; break;
        case 'BodyTextInd': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyTextInd; break;
        case 'ListContinue': styleIdentifier = TableProperties_StyleIdentifierEnum.listContinue; break;
        case 'ListContinue2': styleIdentifier = TableProperties_StyleIdentifierEnum.listContinue2; break;
        case 'ListContinue3': styleIdentifier = TableProperties_StyleIdentifierEnum.listContinue3; break;
        case 'ListContinue4': styleIdentifier = TableProperties_StyleIdentifierEnum.listContinue4; break;
        case 'ListContinue5': styleIdentifier = TableProperties_StyleIdentifierEnum.listContinue5; break;
        case 'MessageHeader': styleIdentifier = TableProperties_StyleIdentifierEnum.messageHeader; break;
        case 'Subtitle': styleIdentifier = TableProperties_StyleIdentifierEnum.subtitle; break;
        case 'Salutation': styleIdentifier = TableProperties_StyleIdentifierEnum.salutation; break;
        case 'Date': styleIdentifier = TableProperties_StyleIdentifierEnum.date; break;
        case 'BodyText1I': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyText1I; break;
        case 'BodyText1I2': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyText1I2; break;
        case 'NoteHeading': styleIdentifier = TableProperties_StyleIdentifierEnum.noteHeading; break;
        case 'BodyText2': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyText2; break;
        case 'BodyText3': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyText3; break;
        case 'BodyTextInd2': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyTextInd2; break;
        case 'BodyTextInd3': styleIdentifier = TableProperties_StyleIdentifierEnum.bodyTextInd3; break;
        case 'BlockText': styleIdentifier = TableProperties_StyleIdentifierEnum.blockText; break;
        case 'Hyperlink': styleIdentifier = TableProperties_StyleIdentifierEnum.hyperlink; break;
        case 'FollowedHyperlink': styleIdentifier = TableProperties_StyleIdentifierEnum.followedHyperlink; break;
        case 'Strong': styleIdentifier = TableProperties_StyleIdentifierEnum.strong; break;
        case 'Emphasis': styleIdentifier = TableProperties_StyleIdentifierEnum.emphasis; break;
        case 'DocumentMap': styleIdentifier = TableProperties_StyleIdentifierEnum.documentMap; break;
        case 'PlainText': styleIdentifier = TableProperties_StyleIdentifierEnum.plainText; break;
        case 'EmailSignature': styleIdentifier = TableProperties_StyleIdentifierEnum.emailSignature; break;
        case 'HtmlTopOfForm': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlTopOfForm; break;
        case 'HtmlBottomOfForm': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlBottomOfForm; break;
        case 'NormalWeb': styleIdentifier = TableProperties_StyleIdentifierEnum.normalWeb; break;
        case 'HtmlAcronym': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlAcronym; break;
        case 'HtmlAddress': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlAddress; break;
        case 'HtmlCite': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlCite; break;
        case 'HtmlCode': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlCode; break;
        case 'HtmlDefinition': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlDefinition; break;
        case 'HtmlKeyboard': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlKeyboard; break;
        case 'HtmlPreformatted': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlPreformatted; break;
        case 'HtmlSample': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlSample; break;
        case 'HtmlTypewriter': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlTypewriter; break;
        case 'HtmlVariable': styleIdentifier = TableProperties_StyleIdentifierEnum.htmlVariable; break;
        case 'TableNormal': styleIdentifier = TableProperties_StyleIdentifierEnum.tableNormal; break;
        case 'CommentSubject': styleIdentifier = TableProperties_StyleIdentifierEnum.commentSubject; break;
        case 'NoList': styleIdentifier = TableProperties_StyleIdentifierEnum.noList; break;
        case 'OutlineList1': styleIdentifier = TableProperties_StyleIdentifierEnum.outlineList1; break;
        case 'OutlineList2': styleIdentifier = TableProperties_StyleIdentifierEnum.outlineList2; break;
        case 'OutlineList3': styleIdentifier = TableProperties_StyleIdentifierEnum.outlineList3; break;
        case 'TableSimple1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableSimple1; break;
        case 'TableSimple2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableSimple2; break;
        case 'TableSimple3': styleIdentifier = TableProperties_StyleIdentifierEnum.tableSimple3; break;
        case 'TableClassic1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableClassic1; break;
        case 'TableClassic2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableClassic2; break;
        case 'TableClassic3': styleIdentifier = TableProperties_StyleIdentifierEnum.tableClassic3; break;
        case 'TableClassic4': styleIdentifier = TableProperties_StyleIdentifierEnum.tableClassic4; break;
        case 'TableColorful1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColorful1; break;
        case 'TableColorful2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColorful2; break;
        case 'TableColorful3': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColorful3; break;
        case 'TableColumns1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColumns1; break;
        case 'TableColumns2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColumns2; break;
        case 'TableColumns3': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColumns3; break;
        case 'TableColumns4': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColumns4; break;
        case 'TableColumns5': styleIdentifier = TableProperties_StyleIdentifierEnum.tableColumns5; break;
        case 'TableGrid1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid1; break;
        case 'TableGrid2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid2; break;
        case 'TableGrid3': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid3; break;
        case 'TableGrid4': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid4; break;
        case 'TableGrid5': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid5; break;
        case 'TableGrid6': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid6; break;
        case 'TableGrid7': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid7; break;
        case 'TableGrid8': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid8; break;
        case 'TableList1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList1; break;
        case 'TableList2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList2; break;
        case 'TableList3': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList3; break;
        case 'TableList4': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList4; break;
        case 'TableList5': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList5; break;
        case 'TableList6': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList6; break;
        case 'TableList7': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList7; break;
        case 'TableList8': styleIdentifier = TableProperties_StyleIdentifierEnum.tableList8; break;
        case 'Table3DEffects1': styleIdentifier = TableProperties_StyleIdentifierEnum.table3DEffects1; break;
        case 'Table3DEffects2': styleIdentifier = TableProperties_StyleIdentifierEnum.table3DEffects2; break;
        case 'Table3DEffects3': styleIdentifier = TableProperties_StyleIdentifierEnum.table3DEffects3; break;
        case 'TableContemporary': styleIdentifier = TableProperties_StyleIdentifierEnum.tableContemporary; break;
        case 'TableElegant': styleIdentifier = TableProperties_StyleIdentifierEnum.tableElegant; break;
        case 'TableProfessional': styleIdentifier = TableProperties_StyleIdentifierEnum.tableProfessional; break;
        case 'TableSubtle1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableSubtle1; break;
        case 'TableSubtle2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableSubtle2; break;
        case 'TableWeb1': styleIdentifier = TableProperties_StyleIdentifierEnum.tableWeb1; break;
        case 'TableWeb2': styleIdentifier = TableProperties_StyleIdentifierEnum.tableWeb2; break;
        case 'TableWeb3': styleIdentifier = TableProperties_StyleIdentifierEnum.tableWeb3; break;
        case 'BalloonText': styleIdentifier = TableProperties_StyleIdentifierEnum.balloonText; break;
        case 'TableGrid': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGrid; break;
        case 'TableTheme': styleIdentifier = TableProperties_StyleIdentifierEnum.tableTheme; break;
        case 'PlaceholderText': styleIdentifier = TableProperties_StyleIdentifierEnum.placeholderText; break;
        case 'NoSpacing': styleIdentifier = TableProperties_StyleIdentifierEnum.noSpacing; break;
        case 'LightShading': styleIdentifier = TableProperties_StyleIdentifierEnum.lightShading; break;
        case 'LightList': styleIdentifier = TableProperties_StyleIdentifierEnum.lightList; break;
        case 'LightGrid': styleIdentifier = TableProperties_StyleIdentifierEnum.lightGrid; break;
        case 'MediumShading1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading1; break;
        case 'MediumShading2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading2; break;
        case 'MediumList1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList1; break;
        case 'MediumList2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList2; break;
        case 'MediumGrid1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid1; break;
        case 'MediumGrid2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid2; break;
        case 'MediumGrid3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid3; break;
        case 'DarkList': styleIdentifier = TableProperties_StyleIdentifierEnum.darkList; break;
        case 'ColorfulShading': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulShading; break;
        case 'ColorfulList': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulList; break;
        case 'ColorfulGrid': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulGrid; break;
        case 'LightShadingAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.lightShadingAccent1; break;
        case 'LightListAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.lightListAccent1; break;
        case 'LightGridAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.lightGridAccent1; break;
        case 'MediumShading1Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading1Accent1; break;
        case 'MediumShading2Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading2Accent1; break;
        case 'MediumList1Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList1Accent1; break;
        case 'Revision': styleIdentifier = TableProperties_StyleIdentifierEnum.revision; break;
        case 'ListParagraph': styleIdentifier = TableProperties_StyleIdentifierEnum.listParagraph; break;
        case 'Quote': styleIdentifier = TableProperties_StyleIdentifierEnum.quote; break;
        case 'IntenseQuote': styleIdentifier = TableProperties_StyleIdentifierEnum.intenseQuote; break;
        case 'MediumList2Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList2Accent1; break;
        case 'MediumGrid1Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid1Accent1; break;
        case 'MediumGrid2Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid2Accent1; break;
        case 'MediumGrid3Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid3Accent1; break;
        case 'DarkListAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.darkListAccent1; break;
        case 'ColorfulShadingAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulShadingAccent1; break;
        case 'ColorfulListAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulListAccent1; break;
        case 'ColorfulGridAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulGridAccent1; break;
        case 'LightShadingAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.lightShadingAccent2; break;
        case 'LightListAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.lightListAccent2; break;
        case 'LightGridAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.lightGridAccent2; break;
        case 'MediumShading1Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading1Accent2; break;
        case 'MediumShading2Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading2Accent2; break;
        case 'MediumList1Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList1Accent2; break;
        case 'MediumList2Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList2Accent2; break;
        case 'MediumGrid1Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid1Accent2; break;
        case 'MediumGrid2Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid2Accent2; break;
        case 'MediumGrid3Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid3Accent2; break;
        case 'DarkListAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.darkListAccent2; break;
        case 'ColorfulShadingAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulShadingAccent2; break;
        case 'ColorfulListAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulListAccent2; break;
        case 'ColorfulGridAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulGridAccent2; break;
        case 'LightShadingAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.lightShadingAccent3; break;
        case 'LightListAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.lightListAccent3; break;
        case 'LightGridAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.lightGridAccent3; break;
        case 'MediumShading1Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading1Accent3; break;
        case 'MediumShading2Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading2Accent3; break;
        case 'MediumList1Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList1Accent3; break;
        case 'MediumList2Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList2Accent3; break;
        case 'MediumGrid1Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid1Accent3; break;
        case 'MediumGrid2Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid2Accent3; break;
        case 'MediumGrid3Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid3Accent3; break;
        case 'DarkListAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.darkListAccent3; break;
        case 'ColorfulShadingAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulShadingAccent3; break;
        case 'ColorfulListAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulListAccent3; break;
        case 'ColorfulGridAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulGridAccent3; break;
        case 'LightShadingAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.lightShadingAccent4; break;
        case 'LightListAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.lightListAccent4; break;
        case 'LightGridAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.lightGridAccent4; break;
        case 'MediumShading1Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading1Accent4; break;
        case 'MediumShading2Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading2Accent4; break;
        case 'MediumList1Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList1Accent4; break;
        case 'MediumList2Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList2Accent4; break;
        case 'MediumGrid1Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid1Accent4; break;
        case 'MediumGrid2Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid2Accent4; break;
        case 'MediumGrid3Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid3Accent4; break;
        case 'DarkListAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.darkListAccent4; break;
        case 'ColorfulShadingAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulShadingAccent4; break;
        case 'ColorfulListAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulListAccent4; break;
        case 'ColorfulGridAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulGridAccent4; break;
        case 'LightShadingAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.lightShadingAccent5; break;
        case 'LightListAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.lightListAccent5; break;
        case 'LightGridAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.lightGridAccent5; break;
        case 'MediumShading1Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading1Accent5; break;
        case 'MediumShading2Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading2Accent5; break;
        case 'MediumList1Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList1Accent5; break;
        case 'MediumList2Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList2Accent5; break;
        case 'MediumGrid1Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid1Accent5; break;
        case 'MediumGrid2Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid2Accent5; break;
        case 'MediumGrid3Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid3Accent5; break;
        case 'DarkListAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.darkListAccent5; break;
        case 'ColorfulShadingAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulShadingAccent5; break;
        case 'ColorfulListAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulListAccent5; break;
        case 'ColorfulGridAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulGridAccent5; break;
        case 'LightShadingAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.lightShadingAccent6; break;
        case 'LightListAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.lightListAccent6; break;
        case 'LightGridAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.lightGridAccent6; break;
        case 'MediumShading1Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading1Accent6; break;
        case 'MediumShading2Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumShading2Accent6; break;
        case 'MediumList1Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList1Accent6; break;
        case 'MediumList2Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumList2Accent6; break;
        case 'MediumGrid1Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid1Accent6; break;
        case 'MediumGrid2Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid2Accent6; break;
        case 'MediumGrid3Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.mediumGrid3Accent6; break;
        case 'DarkListAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.darkListAccent6; break;
        case 'ColorfulShadingAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulShadingAccent6; break;
        case 'ColorfulListAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulListAccent6; break;
        case 'ColorfulGridAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.colorfulGridAccent6; break;
        case 'SubtleEmphasis': styleIdentifier = TableProperties_StyleIdentifierEnum.subtleEmphasis; break;
        case 'IntenseEmphasis': styleIdentifier = TableProperties_StyleIdentifierEnum.intenseEmphasis; break;
        case 'SubtleReference': styleIdentifier = TableProperties_StyleIdentifierEnum.subtleReference; break;
        case 'IntenseReference': styleIdentifier = TableProperties_StyleIdentifierEnum.intenseReference; break;
        case 'BookTitle': styleIdentifier = TableProperties_StyleIdentifierEnum.bookTitle; break;
        case 'Bibliography': styleIdentifier = TableProperties_StyleIdentifierEnum.bibliography; break;
        case 'TocHeading': styleIdentifier = TableProperties_StyleIdentifierEnum.tocHeading; break;
        case 'PlainTable1': styleIdentifier = TableProperties_StyleIdentifierEnum.plainTable1; break;
        case 'PlainTable2': styleIdentifier = TableProperties_StyleIdentifierEnum.plainTable2; break;
        case 'PlainTable3': styleIdentifier = TableProperties_StyleIdentifierEnum.plainTable3; break;
        case 'PlainTable4': styleIdentifier = TableProperties_StyleIdentifierEnum.plainTable4; break;
        case 'PlainTable5': styleIdentifier = TableProperties_StyleIdentifierEnum.plainTable5; break;
        case 'TableGridLight': styleIdentifier = TableProperties_StyleIdentifierEnum.tableGridLight; break;
        case 'GridTable1Light': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable1Light; break;
        case 'GridTable2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable2; break;
        case 'GridTable3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable3; break;
        case 'GridTable4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable4; break;
        case 'GridTable5Dark': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable5Dark; break;
        case 'GridTable6Colorful': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable6Colorful; break;
        case 'GridTable7Colorful': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable7Colorful; break;
        case 'GridTable1LightAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable1LightAccent1; break;
        case 'GridTable2Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable2Accent1; break;
        case 'GridTable3Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable3Accent1; break;
        case 'GridTable4Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable4Accent1; break;
        case 'GridTable5DarkAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable5DarkAccent1; break;
        case 'GridTable6ColorfulAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent1; break;
        case 'GridTable7ColorfulAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent1; break;
        case 'GridTable1LightAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable1LightAccent2; break;
        case 'GridTable2Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable2Accent2; break;
        case 'GridTable3Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable3Accent2; break;
        case 'GridTable4Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable4Accent2; break;
        case 'GridTable5DarkAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable5DarkAccent2; break;
        case 'GridTable6ColorfulAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent2; break;
        case 'GridTable7ColorfulAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent2; break;
        case 'GridTable1LightAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable1LightAccent3; break;
        case 'GridTable2Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable2Accent3; break;
        case 'GridTable3Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable3Accent3; break;
        case 'GridTable4Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable4Accent3; break;
        case 'GridTable5DarkAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable5DarkAccent3; break;
        case 'GridTable6ColorfulAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent3; break;
        case 'GridTable7ColorfulAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent3; break;
        case 'GridTable1LightAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable1LightAccent4; break;
        case 'GridTable2Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable2Accent4; break;
        case 'GridTable3Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable3Accent4; break;
        case 'GridTable4Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable4Accent4; break;
        case 'GridTable5DarkAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable5DarkAccent4; break;
        case 'GridTable6ColorfulAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent4; break;
        case 'GridTable7ColorfulAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent4; break;
        case 'GridTable1LightAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable1LightAccent5; break;
        case 'GridTable2Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable2Accent5; break;
        case 'GridTable3Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable3Accent5; break;
        case 'GridTable4Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable4Accent5; break;
        case 'GridTable5DarkAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable5DarkAccent5; break;
        case 'GridTable6ColorfulAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent5; break;
        case 'GridTable7ColorfulAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent5; break;
        case 'GridTable1LightAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable1LightAccent6; break;
        case 'GridTable2Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable2Accent6; break;
        case 'GridTable3Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable3Accent6; break;
        case 'GridTable4Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable4Accent6; break;
        case 'GridTable5DarkAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable5DarkAccent6; break;
        case 'GridTable6ColorfulAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent6; break;
        case 'GridTable7ColorfulAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent6; break;
        case 'ListTable1Light': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable1Light; break;
        case 'ListTable2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable2; break;
        case 'ListTable3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable3; break;
        case 'ListTable4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable4; break;
        case 'ListTable5Dark': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable5Dark; break;
        case 'ListTable6Colorful': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable6Colorful; break;
        case 'ListTable7Colorful': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable7Colorful; break;
        case 'ListTable1LightAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable1LightAccent1; break;
        case 'ListTable2Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable2Accent1; break;
        case 'ListTable3Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable3Accent1; break;
        case 'ListTable4Accent1': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable4Accent1; break;
        case 'ListTable5DarkAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable5DarkAccent1; break;
        case 'ListTable6ColorfulAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent1; break;
        case 'ListTable7ColorfulAccent1': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent1; break;
        case 'ListTable1LightAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable1LightAccent2; break;
        case 'ListTable2Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable2Accent2; break;
        case 'ListTable3Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable3Accent2; break;
        case 'ListTable4Accent2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable4Accent2; break;
        case 'ListTable5DarkAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable5DarkAccent2; break;
        case 'ListTable6ColorfulAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent2; break;
        case 'ListTable7ColorfulAccent2': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent2; break;
        case 'ListTable1LightAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable1LightAccent3; break;
        case 'ListTable2Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable2Accent3; break;
        case 'ListTable3Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable3Accent3; break;
        case 'ListTable4Accent3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable4Accent3; break;
        case 'ListTable5DarkAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable5DarkAccent3; break;
        case 'ListTable6ColorfulAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent3; break;
        case 'ListTable7ColorfulAccent3': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent3; break;
        case 'ListTable1LightAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable1LightAccent4; break;
        case 'ListTable2Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable2Accent4; break;
        case 'ListTable3Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable3Accent4; break;
        case 'ListTable4Accent4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable4Accent4; break;
        case 'ListTable5DarkAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable5DarkAccent4; break;
        case 'ListTable6ColorfulAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent4; break;
        case 'ListTable7ColorfulAccent4': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent4; break;
        case 'ListTable1LightAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable1LightAccent5; break;
        case 'ListTable2Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable2Accent5; break;
        case 'ListTable3Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable3Accent5; break;
        case 'ListTable4Accent5': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable4Accent5; break;
        case 'ListTable5DarkAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable5DarkAccent5; break;
        case 'ListTable6ColorfulAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent5; break;
        case 'ListTable7ColorfulAccent5': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent5; break;
        case 'ListTable1LightAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable1LightAccent6; break;
        case 'ListTable2Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable2Accent6; break;
        case 'ListTable3Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable3Accent6; break;
        case 'ListTable4Accent6': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable4Accent6; break;
        case 'ListTable5DarkAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable5DarkAccent6; break;
        case 'ListTable6ColorfulAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent6; break;
        case 'ListTable7ColorfulAccent6': styleIdentifier = TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent6; break;
        case 'SmartLink': styleIdentifier = TableProperties_StyleIdentifierEnum.smartLink; break;
        case 'Mention': styleIdentifier = TableProperties_StyleIdentifierEnum.mention; break;
        case 'SmartHyperlink': styleIdentifier = TableProperties_StyleIdentifierEnum.smartHyperlink; break;
        case 'Hashtag': styleIdentifier = TableProperties_StyleIdentifierEnum.hashtag; break;
        case 'UnresolvedMention': styleIdentifier = TableProperties_StyleIdentifierEnum.unresolvedMention; break;
        case 'User': styleIdentifier = TableProperties_StyleIdentifierEnum.user; break;
        case 'Nil': styleIdentifier = TableProperties_StyleIdentifierEnum.nil; break;
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

    if (json.containsKey('StyleOptions')) {
      switch (json['StyleOptions'] as String) {
        case 'None': styleOptions = TableProperties_StyleOptionsEnum.none; break;
        case 'FirstRow': styleOptions = TableProperties_StyleOptionsEnum.firstRow; break;
        case 'LastRow': styleOptions = TableProperties_StyleOptionsEnum.lastRow; break;
        case 'FirstColumn': styleOptions = TableProperties_StyleOptionsEnum.firstColumn; break;
        case 'LastColumn': styleOptions = TableProperties_StyleOptionsEnum.lastColumn; break;
        case 'RowBands': styleOptions = TableProperties_StyleOptionsEnum.rowBands; break;
        case 'Default': styleOptions = TableProperties_StyleOptionsEnum.defaultValue; break;
        case 'ColumnBands': styleOptions = TableProperties_StyleOptionsEnum.columnBands; break;
        case 'Default2003': styleOptions = TableProperties_StyleOptionsEnum.default2003; break;
        default: styleOptions = null; break;
      }
    } else {
      styleOptions = null;
    }

    if (json.containsKey('TextWrapping')) {
      switch (json['TextWrapping'] as String) {
        case 'None': textWrapping = TableProperties_TextWrappingEnum.none; break;
        case 'Default': textWrapping = TableProperties_TextWrappingEnum.defaultValue; break;
        case 'Around': textWrapping = TableProperties_TextWrappingEnum.around; break;
        default: textWrapping = null; break;
      }
    } else {
      textWrapping = null;
    }

    if (json.containsKey('TopPadding')) {
      topPadding = json['TopPadding'] as double;
    } else {
      topPadding = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (alignment != null) {
      switch (alignment!) {
        case TableProperties_AlignmentEnum.left: _result['Alignment'] = 'Left'; break;
        case TableProperties_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case TableProperties_AlignmentEnum.right: _result['Alignment'] = 'Right'; break;
        default: break;
      }
    }

    if (allowAutoFit != null) {
      _result['AllowAutoFit'] = allowAutoFit!;
    }

    if (bidi != null) {
      _result['Bidi'] = bidi!;
    }

    if (bottomPadding != null) {
      _result['BottomPadding'] = bottomPadding!;
    }

    if (cellSpacing != null) {
      _result['CellSpacing'] = cellSpacing!;
    }

    if (leftIndent != null) {
      _result['LeftIndent'] = leftIndent!;
    }

    if (leftPadding != null) {
      _result['LeftPadding'] = leftPadding!;
    }

    if (preferredWidth != null) {
      _result['PreferredWidth'] = preferredWidth!.serialize();
    }

    if (rightPadding != null) {
      _result['RightPadding'] = rightPadding!;
    }

    if (styleIdentifier != null) {
      switch (styleIdentifier!) {
        case TableProperties_StyleIdentifierEnum.normal: _result['StyleIdentifier'] = 'Normal'; break;
        case TableProperties_StyleIdentifierEnum.heading1: _result['StyleIdentifier'] = 'Heading1'; break;
        case TableProperties_StyleIdentifierEnum.heading2: _result['StyleIdentifier'] = 'Heading2'; break;
        case TableProperties_StyleIdentifierEnum.heading3: _result['StyleIdentifier'] = 'Heading3'; break;
        case TableProperties_StyleIdentifierEnum.heading4: _result['StyleIdentifier'] = 'Heading4'; break;
        case TableProperties_StyleIdentifierEnum.heading5: _result['StyleIdentifier'] = 'Heading5'; break;
        case TableProperties_StyleIdentifierEnum.heading6: _result['StyleIdentifier'] = 'Heading6'; break;
        case TableProperties_StyleIdentifierEnum.heading7: _result['StyleIdentifier'] = 'Heading7'; break;
        case TableProperties_StyleIdentifierEnum.heading8: _result['StyleIdentifier'] = 'Heading8'; break;
        case TableProperties_StyleIdentifierEnum.heading9: _result['StyleIdentifier'] = 'Heading9'; break;
        case TableProperties_StyleIdentifierEnum.index1: _result['StyleIdentifier'] = 'Index1'; break;
        case TableProperties_StyleIdentifierEnum.index2: _result['StyleIdentifier'] = 'Index2'; break;
        case TableProperties_StyleIdentifierEnum.index3: _result['StyleIdentifier'] = 'Index3'; break;
        case TableProperties_StyleIdentifierEnum.index4: _result['StyleIdentifier'] = 'Index4'; break;
        case TableProperties_StyleIdentifierEnum.index5: _result['StyleIdentifier'] = 'Index5'; break;
        case TableProperties_StyleIdentifierEnum.index6: _result['StyleIdentifier'] = 'Index6'; break;
        case TableProperties_StyleIdentifierEnum.index7: _result['StyleIdentifier'] = 'Index7'; break;
        case TableProperties_StyleIdentifierEnum.index8: _result['StyleIdentifier'] = 'Index8'; break;
        case TableProperties_StyleIdentifierEnum.index9: _result['StyleIdentifier'] = 'Index9'; break;
        case TableProperties_StyleIdentifierEnum.toc1: _result['StyleIdentifier'] = 'Toc1'; break;
        case TableProperties_StyleIdentifierEnum.toc2: _result['StyleIdentifier'] = 'Toc2'; break;
        case TableProperties_StyleIdentifierEnum.toc3: _result['StyleIdentifier'] = 'Toc3'; break;
        case TableProperties_StyleIdentifierEnum.toc4: _result['StyleIdentifier'] = 'Toc4'; break;
        case TableProperties_StyleIdentifierEnum.toc5: _result['StyleIdentifier'] = 'Toc5'; break;
        case TableProperties_StyleIdentifierEnum.toc6: _result['StyleIdentifier'] = 'Toc6'; break;
        case TableProperties_StyleIdentifierEnum.toc7: _result['StyleIdentifier'] = 'Toc7'; break;
        case TableProperties_StyleIdentifierEnum.toc8: _result['StyleIdentifier'] = 'Toc8'; break;
        case TableProperties_StyleIdentifierEnum.toc9: _result['StyleIdentifier'] = 'Toc9'; break;
        case TableProperties_StyleIdentifierEnum.normalIndent: _result['StyleIdentifier'] = 'NormalIndent'; break;
        case TableProperties_StyleIdentifierEnum.footnoteText: _result['StyleIdentifier'] = 'FootnoteText'; break;
        case TableProperties_StyleIdentifierEnum.commentText: _result['StyleIdentifier'] = 'CommentText'; break;
        case TableProperties_StyleIdentifierEnum.header: _result['StyleIdentifier'] = 'Header'; break;
        case TableProperties_StyleIdentifierEnum.footer: _result['StyleIdentifier'] = 'Footer'; break;
        case TableProperties_StyleIdentifierEnum.indexHeading: _result['StyleIdentifier'] = 'IndexHeading'; break;
        case TableProperties_StyleIdentifierEnum.caption: _result['StyleIdentifier'] = 'Caption'; break;
        case TableProperties_StyleIdentifierEnum.tableOfFigures: _result['StyleIdentifier'] = 'TableOfFigures'; break;
        case TableProperties_StyleIdentifierEnum.envelopeAddress: _result['StyleIdentifier'] = 'EnvelopeAddress'; break;
        case TableProperties_StyleIdentifierEnum.envelopeReturn: _result['StyleIdentifier'] = 'EnvelopeReturn'; break;
        case TableProperties_StyleIdentifierEnum.footnoteReference: _result['StyleIdentifier'] = 'FootnoteReference'; break;
        case TableProperties_StyleIdentifierEnum.commentReference: _result['StyleIdentifier'] = 'CommentReference'; break;
        case TableProperties_StyleIdentifierEnum.lineNumber: _result['StyleIdentifier'] = 'LineNumber'; break;
        case TableProperties_StyleIdentifierEnum.pageNumber: _result['StyleIdentifier'] = 'PageNumber'; break;
        case TableProperties_StyleIdentifierEnum.endnoteReference: _result['StyleIdentifier'] = 'EndnoteReference'; break;
        case TableProperties_StyleIdentifierEnum.endnoteText: _result['StyleIdentifier'] = 'EndnoteText'; break;
        case TableProperties_StyleIdentifierEnum.tableOfAuthorities: _result['StyleIdentifier'] = 'TableOfAuthorities'; break;
        case TableProperties_StyleIdentifierEnum.macro: _result['StyleIdentifier'] = 'Macro'; break;
        case TableProperties_StyleIdentifierEnum.toaHeading: _result['StyleIdentifier'] = 'ToaHeading'; break;
        case TableProperties_StyleIdentifierEnum.list: _result['StyleIdentifier'] = 'List'; break;
        case TableProperties_StyleIdentifierEnum.listBullet: _result['StyleIdentifier'] = 'ListBullet'; break;
        case TableProperties_StyleIdentifierEnum.listNumber: _result['StyleIdentifier'] = 'ListNumber'; break;
        case TableProperties_StyleIdentifierEnum.list2: _result['StyleIdentifier'] = 'List2'; break;
        case TableProperties_StyleIdentifierEnum.list3: _result['StyleIdentifier'] = 'List3'; break;
        case TableProperties_StyleIdentifierEnum.list4: _result['StyleIdentifier'] = 'List4'; break;
        case TableProperties_StyleIdentifierEnum.list5: _result['StyleIdentifier'] = 'List5'; break;
        case TableProperties_StyleIdentifierEnum.listBullet2: _result['StyleIdentifier'] = 'ListBullet2'; break;
        case TableProperties_StyleIdentifierEnum.listBullet3: _result['StyleIdentifier'] = 'ListBullet3'; break;
        case TableProperties_StyleIdentifierEnum.listBullet4: _result['StyleIdentifier'] = 'ListBullet4'; break;
        case TableProperties_StyleIdentifierEnum.listBullet5: _result['StyleIdentifier'] = 'ListBullet5'; break;
        case TableProperties_StyleIdentifierEnum.listNumber2: _result['StyleIdentifier'] = 'ListNumber2'; break;
        case TableProperties_StyleIdentifierEnum.listNumber3: _result['StyleIdentifier'] = 'ListNumber3'; break;
        case TableProperties_StyleIdentifierEnum.listNumber4: _result['StyleIdentifier'] = 'ListNumber4'; break;
        case TableProperties_StyleIdentifierEnum.listNumber5: _result['StyleIdentifier'] = 'ListNumber5'; break;
        case TableProperties_StyleIdentifierEnum.title: _result['StyleIdentifier'] = 'Title'; break;
        case TableProperties_StyleIdentifierEnum.closing: _result['StyleIdentifier'] = 'Closing'; break;
        case TableProperties_StyleIdentifierEnum.signature: _result['StyleIdentifier'] = 'Signature'; break;
        case TableProperties_StyleIdentifierEnum.defaultParagraphFont: _result['StyleIdentifier'] = 'DefaultParagraphFont'; break;
        case TableProperties_StyleIdentifierEnum.bodyText: _result['StyleIdentifier'] = 'BodyText'; break;
        case TableProperties_StyleIdentifierEnum.bodyTextInd: _result['StyleIdentifier'] = 'BodyTextInd'; break;
        case TableProperties_StyleIdentifierEnum.listContinue: _result['StyleIdentifier'] = 'ListContinue'; break;
        case TableProperties_StyleIdentifierEnum.listContinue2: _result['StyleIdentifier'] = 'ListContinue2'; break;
        case TableProperties_StyleIdentifierEnum.listContinue3: _result['StyleIdentifier'] = 'ListContinue3'; break;
        case TableProperties_StyleIdentifierEnum.listContinue4: _result['StyleIdentifier'] = 'ListContinue4'; break;
        case TableProperties_StyleIdentifierEnum.listContinue5: _result['StyleIdentifier'] = 'ListContinue5'; break;
        case TableProperties_StyleIdentifierEnum.messageHeader: _result['StyleIdentifier'] = 'MessageHeader'; break;
        case TableProperties_StyleIdentifierEnum.subtitle: _result['StyleIdentifier'] = 'Subtitle'; break;
        case TableProperties_StyleIdentifierEnum.salutation: _result['StyleIdentifier'] = 'Salutation'; break;
        case TableProperties_StyleIdentifierEnum.date: _result['StyleIdentifier'] = 'Date'; break;
        case TableProperties_StyleIdentifierEnum.bodyText1I: _result['StyleIdentifier'] = 'BodyText1I'; break;
        case TableProperties_StyleIdentifierEnum.bodyText1I2: _result['StyleIdentifier'] = 'BodyText1I2'; break;
        case TableProperties_StyleIdentifierEnum.noteHeading: _result['StyleIdentifier'] = 'NoteHeading'; break;
        case TableProperties_StyleIdentifierEnum.bodyText2: _result['StyleIdentifier'] = 'BodyText2'; break;
        case TableProperties_StyleIdentifierEnum.bodyText3: _result['StyleIdentifier'] = 'BodyText3'; break;
        case TableProperties_StyleIdentifierEnum.bodyTextInd2: _result['StyleIdentifier'] = 'BodyTextInd2'; break;
        case TableProperties_StyleIdentifierEnum.bodyTextInd3: _result['StyleIdentifier'] = 'BodyTextInd3'; break;
        case TableProperties_StyleIdentifierEnum.blockText: _result['StyleIdentifier'] = 'BlockText'; break;
        case TableProperties_StyleIdentifierEnum.hyperlink: _result['StyleIdentifier'] = 'Hyperlink'; break;
        case TableProperties_StyleIdentifierEnum.followedHyperlink: _result['StyleIdentifier'] = 'FollowedHyperlink'; break;
        case TableProperties_StyleIdentifierEnum.strong: _result['StyleIdentifier'] = 'Strong'; break;
        case TableProperties_StyleIdentifierEnum.emphasis: _result['StyleIdentifier'] = 'Emphasis'; break;
        case TableProperties_StyleIdentifierEnum.documentMap: _result['StyleIdentifier'] = 'DocumentMap'; break;
        case TableProperties_StyleIdentifierEnum.plainText: _result['StyleIdentifier'] = 'PlainText'; break;
        case TableProperties_StyleIdentifierEnum.emailSignature: _result['StyleIdentifier'] = 'EmailSignature'; break;
        case TableProperties_StyleIdentifierEnum.htmlTopOfForm: _result['StyleIdentifier'] = 'HtmlTopOfForm'; break;
        case TableProperties_StyleIdentifierEnum.htmlBottomOfForm: _result['StyleIdentifier'] = 'HtmlBottomOfForm'; break;
        case TableProperties_StyleIdentifierEnum.normalWeb: _result['StyleIdentifier'] = 'NormalWeb'; break;
        case TableProperties_StyleIdentifierEnum.htmlAcronym: _result['StyleIdentifier'] = 'HtmlAcronym'; break;
        case TableProperties_StyleIdentifierEnum.htmlAddress: _result['StyleIdentifier'] = 'HtmlAddress'; break;
        case TableProperties_StyleIdentifierEnum.htmlCite: _result['StyleIdentifier'] = 'HtmlCite'; break;
        case TableProperties_StyleIdentifierEnum.htmlCode: _result['StyleIdentifier'] = 'HtmlCode'; break;
        case TableProperties_StyleIdentifierEnum.htmlDefinition: _result['StyleIdentifier'] = 'HtmlDefinition'; break;
        case TableProperties_StyleIdentifierEnum.htmlKeyboard: _result['StyleIdentifier'] = 'HtmlKeyboard'; break;
        case TableProperties_StyleIdentifierEnum.htmlPreformatted: _result['StyleIdentifier'] = 'HtmlPreformatted'; break;
        case TableProperties_StyleIdentifierEnum.htmlSample: _result['StyleIdentifier'] = 'HtmlSample'; break;
        case TableProperties_StyleIdentifierEnum.htmlTypewriter: _result['StyleIdentifier'] = 'HtmlTypewriter'; break;
        case TableProperties_StyleIdentifierEnum.htmlVariable: _result['StyleIdentifier'] = 'HtmlVariable'; break;
        case TableProperties_StyleIdentifierEnum.tableNormal: _result['StyleIdentifier'] = 'TableNormal'; break;
        case TableProperties_StyleIdentifierEnum.commentSubject: _result['StyleIdentifier'] = 'CommentSubject'; break;
        case TableProperties_StyleIdentifierEnum.noList: _result['StyleIdentifier'] = 'NoList'; break;
        case TableProperties_StyleIdentifierEnum.outlineList1: _result['StyleIdentifier'] = 'OutlineList1'; break;
        case TableProperties_StyleIdentifierEnum.outlineList2: _result['StyleIdentifier'] = 'OutlineList2'; break;
        case TableProperties_StyleIdentifierEnum.outlineList3: _result['StyleIdentifier'] = 'OutlineList3'; break;
        case TableProperties_StyleIdentifierEnum.tableSimple1: _result['StyleIdentifier'] = 'TableSimple1'; break;
        case TableProperties_StyleIdentifierEnum.tableSimple2: _result['StyleIdentifier'] = 'TableSimple2'; break;
        case TableProperties_StyleIdentifierEnum.tableSimple3: _result['StyleIdentifier'] = 'TableSimple3'; break;
        case TableProperties_StyleIdentifierEnum.tableClassic1: _result['StyleIdentifier'] = 'TableClassic1'; break;
        case TableProperties_StyleIdentifierEnum.tableClassic2: _result['StyleIdentifier'] = 'TableClassic2'; break;
        case TableProperties_StyleIdentifierEnum.tableClassic3: _result['StyleIdentifier'] = 'TableClassic3'; break;
        case TableProperties_StyleIdentifierEnum.tableClassic4: _result['StyleIdentifier'] = 'TableClassic4'; break;
        case TableProperties_StyleIdentifierEnum.tableColorful1: _result['StyleIdentifier'] = 'TableColorful1'; break;
        case TableProperties_StyleIdentifierEnum.tableColorful2: _result['StyleIdentifier'] = 'TableColorful2'; break;
        case TableProperties_StyleIdentifierEnum.tableColorful3: _result['StyleIdentifier'] = 'TableColorful3'; break;
        case TableProperties_StyleIdentifierEnum.tableColumns1: _result['StyleIdentifier'] = 'TableColumns1'; break;
        case TableProperties_StyleIdentifierEnum.tableColumns2: _result['StyleIdentifier'] = 'TableColumns2'; break;
        case TableProperties_StyleIdentifierEnum.tableColumns3: _result['StyleIdentifier'] = 'TableColumns3'; break;
        case TableProperties_StyleIdentifierEnum.tableColumns4: _result['StyleIdentifier'] = 'TableColumns4'; break;
        case TableProperties_StyleIdentifierEnum.tableColumns5: _result['StyleIdentifier'] = 'TableColumns5'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid1: _result['StyleIdentifier'] = 'TableGrid1'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid2: _result['StyleIdentifier'] = 'TableGrid2'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid3: _result['StyleIdentifier'] = 'TableGrid3'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid4: _result['StyleIdentifier'] = 'TableGrid4'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid5: _result['StyleIdentifier'] = 'TableGrid5'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid6: _result['StyleIdentifier'] = 'TableGrid6'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid7: _result['StyleIdentifier'] = 'TableGrid7'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid8: _result['StyleIdentifier'] = 'TableGrid8'; break;
        case TableProperties_StyleIdentifierEnum.tableList1: _result['StyleIdentifier'] = 'TableList1'; break;
        case TableProperties_StyleIdentifierEnum.tableList2: _result['StyleIdentifier'] = 'TableList2'; break;
        case TableProperties_StyleIdentifierEnum.tableList3: _result['StyleIdentifier'] = 'TableList3'; break;
        case TableProperties_StyleIdentifierEnum.tableList4: _result['StyleIdentifier'] = 'TableList4'; break;
        case TableProperties_StyleIdentifierEnum.tableList5: _result['StyleIdentifier'] = 'TableList5'; break;
        case TableProperties_StyleIdentifierEnum.tableList6: _result['StyleIdentifier'] = 'TableList6'; break;
        case TableProperties_StyleIdentifierEnum.tableList7: _result['StyleIdentifier'] = 'TableList7'; break;
        case TableProperties_StyleIdentifierEnum.tableList8: _result['StyleIdentifier'] = 'TableList8'; break;
        case TableProperties_StyleIdentifierEnum.table3DEffects1: _result['StyleIdentifier'] = 'Table3DEffects1'; break;
        case TableProperties_StyleIdentifierEnum.table3DEffects2: _result['StyleIdentifier'] = 'Table3DEffects2'; break;
        case TableProperties_StyleIdentifierEnum.table3DEffects3: _result['StyleIdentifier'] = 'Table3DEffects3'; break;
        case TableProperties_StyleIdentifierEnum.tableContemporary: _result['StyleIdentifier'] = 'TableContemporary'; break;
        case TableProperties_StyleIdentifierEnum.tableElegant: _result['StyleIdentifier'] = 'TableElegant'; break;
        case TableProperties_StyleIdentifierEnum.tableProfessional: _result['StyleIdentifier'] = 'TableProfessional'; break;
        case TableProperties_StyleIdentifierEnum.tableSubtle1: _result['StyleIdentifier'] = 'TableSubtle1'; break;
        case TableProperties_StyleIdentifierEnum.tableSubtle2: _result['StyleIdentifier'] = 'TableSubtle2'; break;
        case TableProperties_StyleIdentifierEnum.tableWeb1: _result['StyleIdentifier'] = 'TableWeb1'; break;
        case TableProperties_StyleIdentifierEnum.tableWeb2: _result['StyleIdentifier'] = 'TableWeb2'; break;
        case TableProperties_StyleIdentifierEnum.tableWeb3: _result['StyleIdentifier'] = 'TableWeb3'; break;
        case TableProperties_StyleIdentifierEnum.balloonText: _result['StyleIdentifier'] = 'BalloonText'; break;
        case TableProperties_StyleIdentifierEnum.tableGrid: _result['StyleIdentifier'] = 'TableGrid'; break;
        case TableProperties_StyleIdentifierEnum.tableTheme: _result['StyleIdentifier'] = 'TableTheme'; break;
        case TableProperties_StyleIdentifierEnum.placeholderText: _result['StyleIdentifier'] = 'PlaceholderText'; break;
        case TableProperties_StyleIdentifierEnum.noSpacing: _result['StyleIdentifier'] = 'NoSpacing'; break;
        case TableProperties_StyleIdentifierEnum.lightShading: _result['StyleIdentifier'] = 'LightShading'; break;
        case TableProperties_StyleIdentifierEnum.lightList: _result['StyleIdentifier'] = 'LightList'; break;
        case TableProperties_StyleIdentifierEnum.lightGrid: _result['StyleIdentifier'] = 'LightGrid'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading1: _result['StyleIdentifier'] = 'MediumShading1'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading2: _result['StyleIdentifier'] = 'MediumShading2'; break;
        case TableProperties_StyleIdentifierEnum.mediumList1: _result['StyleIdentifier'] = 'MediumList1'; break;
        case TableProperties_StyleIdentifierEnum.mediumList2: _result['StyleIdentifier'] = 'MediumList2'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid1: _result['StyleIdentifier'] = 'MediumGrid1'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid2: _result['StyleIdentifier'] = 'MediumGrid2'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid3: _result['StyleIdentifier'] = 'MediumGrid3'; break;
        case TableProperties_StyleIdentifierEnum.darkList: _result['StyleIdentifier'] = 'DarkList'; break;
        case TableProperties_StyleIdentifierEnum.colorfulShading: _result['StyleIdentifier'] = 'ColorfulShading'; break;
        case TableProperties_StyleIdentifierEnum.colorfulList: _result['StyleIdentifier'] = 'ColorfulList'; break;
        case TableProperties_StyleIdentifierEnum.colorfulGrid: _result['StyleIdentifier'] = 'ColorfulGrid'; break;
        case TableProperties_StyleIdentifierEnum.lightShadingAccent1: _result['StyleIdentifier'] = 'LightShadingAccent1'; break;
        case TableProperties_StyleIdentifierEnum.lightListAccent1: _result['StyleIdentifier'] = 'LightListAccent1'; break;
        case TableProperties_StyleIdentifierEnum.lightGridAccent1: _result['StyleIdentifier'] = 'LightGridAccent1'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading1Accent1: _result['StyleIdentifier'] = 'MediumShading1Accent1'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading2Accent1: _result['StyleIdentifier'] = 'MediumShading2Accent1'; break;
        case TableProperties_StyleIdentifierEnum.mediumList1Accent1: _result['StyleIdentifier'] = 'MediumList1Accent1'; break;
        case TableProperties_StyleIdentifierEnum.revision: _result['StyleIdentifier'] = 'Revision'; break;
        case TableProperties_StyleIdentifierEnum.listParagraph: _result['StyleIdentifier'] = 'ListParagraph'; break;
        case TableProperties_StyleIdentifierEnum.quote: _result['StyleIdentifier'] = 'Quote'; break;
        case TableProperties_StyleIdentifierEnum.intenseQuote: _result['StyleIdentifier'] = 'IntenseQuote'; break;
        case TableProperties_StyleIdentifierEnum.mediumList2Accent1: _result['StyleIdentifier'] = 'MediumList2Accent1'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid1Accent1: _result['StyleIdentifier'] = 'MediumGrid1Accent1'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid2Accent1: _result['StyleIdentifier'] = 'MediumGrid2Accent1'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid3Accent1: _result['StyleIdentifier'] = 'MediumGrid3Accent1'; break;
        case TableProperties_StyleIdentifierEnum.darkListAccent1: _result['StyleIdentifier'] = 'DarkListAccent1'; break;
        case TableProperties_StyleIdentifierEnum.colorfulShadingAccent1: _result['StyleIdentifier'] = 'ColorfulShadingAccent1'; break;
        case TableProperties_StyleIdentifierEnum.colorfulListAccent1: _result['StyleIdentifier'] = 'ColorfulListAccent1'; break;
        case TableProperties_StyleIdentifierEnum.colorfulGridAccent1: _result['StyleIdentifier'] = 'ColorfulGridAccent1'; break;
        case TableProperties_StyleIdentifierEnum.lightShadingAccent2: _result['StyleIdentifier'] = 'LightShadingAccent2'; break;
        case TableProperties_StyleIdentifierEnum.lightListAccent2: _result['StyleIdentifier'] = 'LightListAccent2'; break;
        case TableProperties_StyleIdentifierEnum.lightGridAccent2: _result['StyleIdentifier'] = 'LightGridAccent2'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading1Accent2: _result['StyleIdentifier'] = 'MediumShading1Accent2'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading2Accent2: _result['StyleIdentifier'] = 'MediumShading2Accent2'; break;
        case TableProperties_StyleIdentifierEnum.mediumList1Accent2: _result['StyleIdentifier'] = 'MediumList1Accent2'; break;
        case TableProperties_StyleIdentifierEnum.mediumList2Accent2: _result['StyleIdentifier'] = 'MediumList2Accent2'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid1Accent2: _result['StyleIdentifier'] = 'MediumGrid1Accent2'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid2Accent2: _result['StyleIdentifier'] = 'MediumGrid2Accent2'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid3Accent2: _result['StyleIdentifier'] = 'MediumGrid3Accent2'; break;
        case TableProperties_StyleIdentifierEnum.darkListAccent2: _result['StyleIdentifier'] = 'DarkListAccent2'; break;
        case TableProperties_StyleIdentifierEnum.colorfulShadingAccent2: _result['StyleIdentifier'] = 'ColorfulShadingAccent2'; break;
        case TableProperties_StyleIdentifierEnum.colorfulListAccent2: _result['StyleIdentifier'] = 'ColorfulListAccent2'; break;
        case TableProperties_StyleIdentifierEnum.colorfulGridAccent2: _result['StyleIdentifier'] = 'ColorfulGridAccent2'; break;
        case TableProperties_StyleIdentifierEnum.lightShadingAccent3: _result['StyleIdentifier'] = 'LightShadingAccent3'; break;
        case TableProperties_StyleIdentifierEnum.lightListAccent3: _result['StyleIdentifier'] = 'LightListAccent3'; break;
        case TableProperties_StyleIdentifierEnum.lightGridAccent3: _result['StyleIdentifier'] = 'LightGridAccent3'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading1Accent3: _result['StyleIdentifier'] = 'MediumShading1Accent3'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading2Accent3: _result['StyleIdentifier'] = 'MediumShading2Accent3'; break;
        case TableProperties_StyleIdentifierEnum.mediumList1Accent3: _result['StyleIdentifier'] = 'MediumList1Accent3'; break;
        case TableProperties_StyleIdentifierEnum.mediumList2Accent3: _result['StyleIdentifier'] = 'MediumList2Accent3'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid1Accent3: _result['StyleIdentifier'] = 'MediumGrid1Accent3'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid2Accent3: _result['StyleIdentifier'] = 'MediumGrid2Accent3'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid3Accent3: _result['StyleIdentifier'] = 'MediumGrid3Accent3'; break;
        case TableProperties_StyleIdentifierEnum.darkListAccent3: _result['StyleIdentifier'] = 'DarkListAccent3'; break;
        case TableProperties_StyleIdentifierEnum.colorfulShadingAccent3: _result['StyleIdentifier'] = 'ColorfulShadingAccent3'; break;
        case TableProperties_StyleIdentifierEnum.colorfulListAccent3: _result['StyleIdentifier'] = 'ColorfulListAccent3'; break;
        case TableProperties_StyleIdentifierEnum.colorfulGridAccent3: _result['StyleIdentifier'] = 'ColorfulGridAccent3'; break;
        case TableProperties_StyleIdentifierEnum.lightShadingAccent4: _result['StyleIdentifier'] = 'LightShadingAccent4'; break;
        case TableProperties_StyleIdentifierEnum.lightListAccent4: _result['StyleIdentifier'] = 'LightListAccent4'; break;
        case TableProperties_StyleIdentifierEnum.lightGridAccent4: _result['StyleIdentifier'] = 'LightGridAccent4'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading1Accent4: _result['StyleIdentifier'] = 'MediumShading1Accent4'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading2Accent4: _result['StyleIdentifier'] = 'MediumShading2Accent4'; break;
        case TableProperties_StyleIdentifierEnum.mediumList1Accent4: _result['StyleIdentifier'] = 'MediumList1Accent4'; break;
        case TableProperties_StyleIdentifierEnum.mediumList2Accent4: _result['StyleIdentifier'] = 'MediumList2Accent4'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid1Accent4: _result['StyleIdentifier'] = 'MediumGrid1Accent4'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid2Accent4: _result['StyleIdentifier'] = 'MediumGrid2Accent4'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid3Accent4: _result['StyleIdentifier'] = 'MediumGrid3Accent4'; break;
        case TableProperties_StyleIdentifierEnum.darkListAccent4: _result['StyleIdentifier'] = 'DarkListAccent4'; break;
        case TableProperties_StyleIdentifierEnum.colorfulShadingAccent4: _result['StyleIdentifier'] = 'ColorfulShadingAccent4'; break;
        case TableProperties_StyleIdentifierEnum.colorfulListAccent4: _result['StyleIdentifier'] = 'ColorfulListAccent4'; break;
        case TableProperties_StyleIdentifierEnum.colorfulGridAccent4: _result['StyleIdentifier'] = 'ColorfulGridAccent4'; break;
        case TableProperties_StyleIdentifierEnum.lightShadingAccent5: _result['StyleIdentifier'] = 'LightShadingAccent5'; break;
        case TableProperties_StyleIdentifierEnum.lightListAccent5: _result['StyleIdentifier'] = 'LightListAccent5'; break;
        case TableProperties_StyleIdentifierEnum.lightGridAccent5: _result['StyleIdentifier'] = 'LightGridAccent5'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading1Accent5: _result['StyleIdentifier'] = 'MediumShading1Accent5'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading2Accent5: _result['StyleIdentifier'] = 'MediumShading2Accent5'; break;
        case TableProperties_StyleIdentifierEnum.mediumList1Accent5: _result['StyleIdentifier'] = 'MediumList1Accent5'; break;
        case TableProperties_StyleIdentifierEnum.mediumList2Accent5: _result['StyleIdentifier'] = 'MediumList2Accent5'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid1Accent5: _result['StyleIdentifier'] = 'MediumGrid1Accent5'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid2Accent5: _result['StyleIdentifier'] = 'MediumGrid2Accent5'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid3Accent5: _result['StyleIdentifier'] = 'MediumGrid3Accent5'; break;
        case TableProperties_StyleIdentifierEnum.darkListAccent5: _result['StyleIdentifier'] = 'DarkListAccent5'; break;
        case TableProperties_StyleIdentifierEnum.colorfulShadingAccent5: _result['StyleIdentifier'] = 'ColorfulShadingAccent5'; break;
        case TableProperties_StyleIdentifierEnum.colorfulListAccent5: _result['StyleIdentifier'] = 'ColorfulListAccent5'; break;
        case TableProperties_StyleIdentifierEnum.colorfulGridAccent5: _result['StyleIdentifier'] = 'ColorfulGridAccent5'; break;
        case TableProperties_StyleIdentifierEnum.lightShadingAccent6: _result['StyleIdentifier'] = 'LightShadingAccent6'; break;
        case TableProperties_StyleIdentifierEnum.lightListAccent6: _result['StyleIdentifier'] = 'LightListAccent6'; break;
        case TableProperties_StyleIdentifierEnum.lightGridAccent6: _result['StyleIdentifier'] = 'LightGridAccent6'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading1Accent6: _result['StyleIdentifier'] = 'MediumShading1Accent6'; break;
        case TableProperties_StyleIdentifierEnum.mediumShading2Accent6: _result['StyleIdentifier'] = 'MediumShading2Accent6'; break;
        case TableProperties_StyleIdentifierEnum.mediumList1Accent6: _result['StyleIdentifier'] = 'MediumList1Accent6'; break;
        case TableProperties_StyleIdentifierEnum.mediumList2Accent6: _result['StyleIdentifier'] = 'MediumList2Accent6'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid1Accent6: _result['StyleIdentifier'] = 'MediumGrid1Accent6'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid2Accent6: _result['StyleIdentifier'] = 'MediumGrid2Accent6'; break;
        case TableProperties_StyleIdentifierEnum.mediumGrid3Accent6: _result['StyleIdentifier'] = 'MediumGrid3Accent6'; break;
        case TableProperties_StyleIdentifierEnum.darkListAccent6: _result['StyleIdentifier'] = 'DarkListAccent6'; break;
        case TableProperties_StyleIdentifierEnum.colorfulShadingAccent6: _result['StyleIdentifier'] = 'ColorfulShadingAccent6'; break;
        case TableProperties_StyleIdentifierEnum.colorfulListAccent6: _result['StyleIdentifier'] = 'ColorfulListAccent6'; break;
        case TableProperties_StyleIdentifierEnum.colorfulGridAccent6: _result['StyleIdentifier'] = 'ColorfulGridAccent6'; break;
        case TableProperties_StyleIdentifierEnum.subtleEmphasis: _result['StyleIdentifier'] = 'SubtleEmphasis'; break;
        case TableProperties_StyleIdentifierEnum.intenseEmphasis: _result['StyleIdentifier'] = 'IntenseEmphasis'; break;
        case TableProperties_StyleIdentifierEnum.subtleReference: _result['StyleIdentifier'] = 'SubtleReference'; break;
        case TableProperties_StyleIdentifierEnum.intenseReference: _result['StyleIdentifier'] = 'IntenseReference'; break;
        case TableProperties_StyleIdentifierEnum.bookTitle: _result['StyleIdentifier'] = 'BookTitle'; break;
        case TableProperties_StyleIdentifierEnum.bibliography: _result['StyleIdentifier'] = 'Bibliography'; break;
        case TableProperties_StyleIdentifierEnum.tocHeading: _result['StyleIdentifier'] = 'TocHeading'; break;
        case TableProperties_StyleIdentifierEnum.plainTable1: _result['StyleIdentifier'] = 'PlainTable1'; break;
        case TableProperties_StyleIdentifierEnum.plainTable2: _result['StyleIdentifier'] = 'PlainTable2'; break;
        case TableProperties_StyleIdentifierEnum.plainTable3: _result['StyleIdentifier'] = 'PlainTable3'; break;
        case TableProperties_StyleIdentifierEnum.plainTable4: _result['StyleIdentifier'] = 'PlainTable4'; break;
        case TableProperties_StyleIdentifierEnum.plainTable5: _result['StyleIdentifier'] = 'PlainTable5'; break;
        case TableProperties_StyleIdentifierEnum.tableGridLight: _result['StyleIdentifier'] = 'TableGridLight'; break;
        case TableProperties_StyleIdentifierEnum.gridTable1Light: _result['StyleIdentifier'] = 'GridTable1Light'; break;
        case TableProperties_StyleIdentifierEnum.gridTable2: _result['StyleIdentifier'] = 'GridTable2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable3: _result['StyleIdentifier'] = 'GridTable3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable4: _result['StyleIdentifier'] = 'GridTable4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable5Dark: _result['StyleIdentifier'] = 'GridTable5Dark'; break;
        case TableProperties_StyleIdentifierEnum.gridTable6Colorful: _result['StyleIdentifier'] = 'GridTable6Colorful'; break;
        case TableProperties_StyleIdentifierEnum.gridTable7Colorful: _result['StyleIdentifier'] = 'GridTable7Colorful'; break;
        case TableProperties_StyleIdentifierEnum.gridTable1LightAccent1: _result['StyleIdentifier'] = 'GridTable1LightAccent1'; break;
        case TableProperties_StyleIdentifierEnum.gridTable2Accent1: _result['StyleIdentifier'] = 'GridTable2Accent1'; break;
        case TableProperties_StyleIdentifierEnum.gridTable3Accent1: _result['StyleIdentifier'] = 'GridTable3Accent1'; break;
        case TableProperties_StyleIdentifierEnum.gridTable4Accent1: _result['StyleIdentifier'] = 'GridTable4Accent1'; break;
        case TableProperties_StyleIdentifierEnum.gridTable5DarkAccent1: _result['StyleIdentifier'] = 'GridTable5DarkAccent1'; break;
        case TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent1'; break;
        case TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent1'; break;
        case TableProperties_StyleIdentifierEnum.gridTable1LightAccent2: _result['StyleIdentifier'] = 'GridTable1LightAccent2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable2Accent2: _result['StyleIdentifier'] = 'GridTable2Accent2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable3Accent2: _result['StyleIdentifier'] = 'GridTable3Accent2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable4Accent2: _result['StyleIdentifier'] = 'GridTable4Accent2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable5DarkAccent2: _result['StyleIdentifier'] = 'GridTable5DarkAccent2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent2'; break;
        case TableProperties_StyleIdentifierEnum.gridTable1LightAccent3: _result['StyleIdentifier'] = 'GridTable1LightAccent3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable2Accent3: _result['StyleIdentifier'] = 'GridTable2Accent3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable3Accent3: _result['StyleIdentifier'] = 'GridTable3Accent3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable4Accent3: _result['StyleIdentifier'] = 'GridTable4Accent3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable5DarkAccent3: _result['StyleIdentifier'] = 'GridTable5DarkAccent3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent3'; break;
        case TableProperties_StyleIdentifierEnum.gridTable1LightAccent4: _result['StyleIdentifier'] = 'GridTable1LightAccent4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable2Accent4: _result['StyleIdentifier'] = 'GridTable2Accent4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable3Accent4: _result['StyleIdentifier'] = 'GridTable3Accent4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable4Accent4: _result['StyleIdentifier'] = 'GridTable4Accent4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable5DarkAccent4: _result['StyleIdentifier'] = 'GridTable5DarkAccent4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent4'; break;
        case TableProperties_StyleIdentifierEnum.gridTable1LightAccent5: _result['StyleIdentifier'] = 'GridTable1LightAccent5'; break;
        case TableProperties_StyleIdentifierEnum.gridTable2Accent5: _result['StyleIdentifier'] = 'GridTable2Accent5'; break;
        case TableProperties_StyleIdentifierEnum.gridTable3Accent5: _result['StyleIdentifier'] = 'GridTable3Accent5'; break;
        case TableProperties_StyleIdentifierEnum.gridTable4Accent5: _result['StyleIdentifier'] = 'GridTable4Accent5'; break;
        case TableProperties_StyleIdentifierEnum.gridTable5DarkAccent5: _result['StyleIdentifier'] = 'GridTable5DarkAccent5'; break;
        case TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent5'; break;
        case TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent5'; break;
        case TableProperties_StyleIdentifierEnum.gridTable1LightAccent6: _result['StyleIdentifier'] = 'GridTable1LightAccent6'; break;
        case TableProperties_StyleIdentifierEnum.gridTable2Accent6: _result['StyleIdentifier'] = 'GridTable2Accent6'; break;
        case TableProperties_StyleIdentifierEnum.gridTable3Accent6: _result['StyleIdentifier'] = 'GridTable3Accent6'; break;
        case TableProperties_StyleIdentifierEnum.gridTable4Accent6: _result['StyleIdentifier'] = 'GridTable4Accent6'; break;
        case TableProperties_StyleIdentifierEnum.gridTable5DarkAccent6: _result['StyleIdentifier'] = 'GridTable5DarkAccent6'; break;
        case TableProperties_StyleIdentifierEnum.gridTable6ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent6'; break;
        case TableProperties_StyleIdentifierEnum.gridTable7ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent6'; break;
        case TableProperties_StyleIdentifierEnum.listTable1Light: _result['StyleIdentifier'] = 'ListTable1Light'; break;
        case TableProperties_StyleIdentifierEnum.listTable2: _result['StyleIdentifier'] = 'ListTable2'; break;
        case TableProperties_StyleIdentifierEnum.listTable3: _result['StyleIdentifier'] = 'ListTable3'; break;
        case TableProperties_StyleIdentifierEnum.listTable4: _result['StyleIdentifier'] = 'ListTable4'; break;
        case TableProperties_StyleIdentifierEnum.listTable5Dark: _result['StyleIdentifier'] = 'ListTable5Dark'; break;
        case TableProperties_StyleIdentifierEnum.listTable6Colorful: _result['StyleIdentifier'] = 'ListTable6Colorful'; break;
        case TableProperties_StyleIdentifierEnum.listTable7Colorful: _result['StyleIdentifier'] = 'ListTable7Colorful'; break;
        case TableProperties_StyleIdentifierEnum.listTable1LightAccent1: _result['StyleIdentifier'] = 'ListTable1LightAccent1'; break;
        case TableProperties_StyleIdentifierEnum.listTable2Accent1: _result['StyleIdentifier'] = 'ListTable2Accent1'; break;
        case TableProperties_StyleIdentifierEnum.listTable3Accent1: _result['StyleIdentifier'] = 'ListTable3Accent1'; break;
        case TableProperties_StyleIdentifierEnum.listTable4Accent1: _result['StyleIdentifier'] = 'ListTable4Accent1'; break;
        case TableProperties_StyleIdentifierEnum.listTable5DarkAccent1: _result['StyleIdentifier'] = 'ListTable5DarkAccent1'; break;
        case TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent1'; break;
        case TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent1'; break;
        case TableProperties_StyleIdentifierEnum.listTable1LightAccent2: _result['StyleIdentifier'] = 'ListTable1LightAccent2'; break;
        case TableProperties_StyleIdentifierEnum.listTable2Accent2: _result['StyleIdentifier'] = 'ListTable2Accent2'; break;
        case TableProperties_StyleIdentifierEnum.listTable3Accent2: _result['StyleIdentifier'] = 'ListTable3Accent2'; break;
        case TableProperties_StyleIdentifierEnum.listTable4Accent2: _result['StyleIdentifier'] = 'ListTable4Accent2'; break;
        case TableProperties_StyleIdentifierEnum.listTable5DarkAccent2: _result['StyleIdentifier'] = 'ListTable5DarkAccent2'; break;
        case TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent2'; break;
        case TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent2'; break;
        case TableProperties_StyleIdentifierEnum.listTable1LightAccent3: _result['StyleIdentifier'] = 'ListTable1LightAccent3'; break;
        case TableProperties_StyleIdentifierEnum.listTable2Accent3: _result['StyleIdentifier'] = 'ListTable2Accent3'; break;
        case TableProperties_StyleIdentifierEnum.listTable3Accent3: _result['StyleIdentifier'] = 'ListTable3Accent3'; break;
        case TableProperties_StyleIdentifierEnum.listTable4Accent3: _result['StyleIdentifier'] = 'ListTable4Accent3'; break;
        case TableProperties_StyleIdentifierEnum.listTable5DarkAccent3: _result['StyleIdentifier'] = 'ListTable5DarkAccent3'; break;
        case TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent3'; break;
        case TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent3'; break;
        case TableProperties_StyleIdentifierEnum.listTable1LightAccent4: _result['StyleIdentifier'] = 'ListTable1LightAccent4'; break;
        case TableProperties_StyleIdentifierEnum.listTable2Accent4: _result['StyleIdentifier'] = 'ListTable2Accent4'; break;
        case TableProperties_StyleIdentifierEnum.listTable3Accent4: _result['StyleIdentifier'] = 'ListTable3Accent4'; break;
        case TableProperties_StyleIdentifierEnum.listTable4Accent4: _result['StyleIdentifier'] = 'ListTable4Accent4'; break;
        case TableProperties_StyleIdentifierEnum.listTable5DarkAccent4: _result['StyleIdentifier'] = 'ListTable5DarkAccent4'; break;
        case TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent4'; break;
        case TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent4'; break;
        case TableProperties_StyleIdentifierEnum.listTable1LightAccent5: _result['StyleIdentifier'] = 'ListTable1LightAccent5'; break;
        case TableProperties_StyleIdentifierEnum.listTable2Accent5: _result['StyleIdentifier'] = 'ListTable2Accent5'; break;
        case TableProperties_StyleIdentifierEnum.listTable3Accent5: _result['StyleIdentifier'] = 'ListTable3Accent5'; break;
        case TableProperties_StyleIdentifierEnum.listTable4Accent5: _result['StyleIdentifier'] = 'ListTable4Accent5'; break;
        case TableProperties_StyleIdentifierEnum.listTable5DarkAccent5: _result['StyleIdentifier'] = 'ListTable5DarkAccent5'; break;
        case TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent5'; break;
        case TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent5'; break;
        case TableProperties_StyleIdentifierEnum.listTable1LightAccent6: _result['StyleIdentifier'] = 'ListTable1LightAccent6'; break;
        case TableProperties_StyleIdentifierEnum.listTable2Accent6: _result['StyleIdentifier'] = 'ListTable2Accent6'; break;
        case TableProperties_StyleIdentifierEnum.listTable3Accent6: _result['StyleIdentifier'] = 'ListTable3Accent6'; break;
        case TableProperties_StyleIdentifierEnum.listTable4Accent6: _result['StyleIdentifier'] = 'ListTable4Accent6'; break;
        case TableProperties_StyleIdentifierEnum.listTable5DarkAccent6: _result['StyleIdentifier'] = 'ListTable5DarkAccent6'; break;
        case TableProperties_StyleIdentifierEnum.listTable6ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent6'; break;
        case TableProperties_StyleIdentifierEnum.listTable7ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent6'; break;
        case TableProperties_StyleIdentifierEnum.smartLink: _result['StyleIdentifier'] = 'SmartLink'; break;
        case TableProperties_StyleIdentifierEnum.mention: _result['StyleIdentifier'] = 'Mention'; break;
        case TableProperties_StyleIdentifierEnum.smartHyperlink: _result['StyleIdentifier'] = 'SmartHyperlink'; break;
        case TableProperties_StyleIdentifierEnum.hashtag: _result['StyleIdentifier'] = 'Hashtag'; break;
        case TableProperties_StyleIdentifierEnum.unresolvedMention: _result['StyleIdentifier'] = 'UnresolvedMention'; break;
        case TableProperties_StyleIdentifierEnum.user: _result['StyleIdentifier'] = 'User'; break;
        case TableProperties_StyleIdentifierEnum.nil: _result['StyleIdentifier'] = 'Nil'; break;
        default: break;
      }
    }

    if (styleName != null) {
      _result['StyleName'] = styleName!;
    }

    if (styleOptions != null) {
      switch (styleOptions!) {
        case TableProperties_StyleOptionsEnum.none: _result['StyleOptions'] = 'None'; break;
        case TableProperties_StyleOptionsEnum.firstRow: _result['StyleOptions'] = 'FirstRow'; break;
        case TableProperties_StyleOptionsEnum.lastRow: _result['StyleOptions'] = 'LastRow'; break;
        case TableProperties_StyleOptionsEnum.firstColumn: _result['StyleOptions'] = 'FirstColumn'; break;
        case TableProperties_StyleOptionsEnum.lastColumn: _result['StyleOptions'] = 'LastColumn'; break;
        case TableProperties_StyleOptionsEnum.rowBands: _result['StyleOptions'] = 'RowBands'; break;
        case TableProperties_StyleOptionsEnum.defaultValue: _result['StyleOptions'] = 'Default'; break;
        case TableProperties_StyleOptionsEnum.columnBands: _result['StyleOptions'] = 'ColumnBands'; break;
        case TableProperties_StyleOptionsEnum.default2003: _result['StyleOptions'] = 'Default2003'; break;
        default: break;
      }
    }

    if (textWrapping != null) {
      switch (textWrapping!) {
        case TableProperties_TextWrappingEnum.none: _result['TextWrapping'] = 'None'; break;
        case TableProperties_TextWrappingEnum.defaultValue: _result['TextWrapping'] = 'Default'; break;
        case TableProperties_TextWrappingEnum.around: _result['TextWrapping'] = 'Around'; break;
        default: break;
      }
    }

    if (topPadding != null) {
      _result['TopPadding'] = topPadding!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();

    preferredWidth?.validate();







  }
}

/// Gets or sets the option that controls how an inline table is aligned in the document.
/// The default value is Left.
enum TableProperties_AlignmentEnum
{ 
  left,
  center,
  right
}

/// Gets or sets the locale independent style identifier of the table style applied to this table.
enum TableProperties_StyleIdentifierEnum
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

/// Gets or sets the bit flags, that specify how a table style is applied to this table.
enum TableProperties_StyleOptionsEnum
{ 
  none,
  firstRow,
  lastRow,
  firstColumn,
  lastColumn,
  rowBands,
  defaultValue,
  columnBands,
  default2003
}

/// Gets or sets the option that controls text wrapping for the table.
enum TableProperties_TextWrappingEnum
{ 
  none,
  defaultValue,
  around
}

