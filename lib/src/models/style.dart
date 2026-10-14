/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="style.dart">
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

/// DTO container with a single document style.
class Style extends LinkElement {
  /// Gets or sets the character formatting of the style.
  /// For list styles this property returns null.
  Font? _font;

  Font? get font => _font;
  set font(Font? val) => _font = val;


  /// Gets or sets a value indicating whether this style is one of the built-in styles in MS Word.
  bool? _builtIn;

  bool? get builtIn => _builtIn;
  set builtIn(bool? val) => _builtIn = val;


  /// Gets or sets the name of the style to be applied automatically to a new paragraph inserted after a paragraph formatted with the specified style.
  /// This property is not used by Aspose.Words. The next paragraph style will only be applied automatically when you edit the document in MS Word.
  String? _nextParagraphStyleName;

  String? get nextParagraphStyleName => _nextParagraphStyleName;
  set nextParagraphStyleName(String? val) => _nextParagraphStyleName = val;


  /// Gets or sets the name of the style this style is based on.
  /// This will be an empty string if the style is not based on any other style and it can be set to an empty string.
  String? _baseStyleName;

  String? get baseStyleName => _baseStyleName;
  set baseStyleName(String? val) => _baseStyleName = val;


  /// Gets or sets a value indicating whether this style is shown in the Quick Style gallery inside MS Word UI.
  bool? _isQuickStyle;

  bool? get isQuickStyle => _isQuickStyle;
  set isQuickStyle(bool? val) => _isQuickStyle = val;


  /// Gets or sets the name of the Style linked to this one. Returns Empty string if no styles are linked.
  String? _linkedStyleName;

  String? get linkedStyleName => _linkedStyleName;
  set linkedStyleName(String? val) => _linkedStyleName = val;


  /// Gets or sets the style type (paragraph or character).
  Style_TypeEnum? _type;

  Style_TypeEnum? get type => _type;
  set type(Style_TypeEnum? val) => _type = val;


  /// Gets or sets a value indicating whether the style is one of the built-in Heading styles.
  bool? _isHeading;

  bool? get isHeading => _isHeading;
  set isHeading(bool? val) => _isHeading = val;


  /// Gets or sets all aliases of this style. If style has no aliases then empty array of string is returned.
  List<String?>? _aliases;

  List<String?>? get aliases => _aliases;
  set aliases(List<String?>? val) => _aliases = val;


  /// Gets or sets the locale independent style identifier for a built-in style.
  /// For user defined (custom) styles, this property returns Aspose.Words.StyleIdentifier.User.
  /// Aspose.Words.Style.Name.
  Style_StyleIdentifierEnum? _styleIdentifier;

  Style_StyleIdentifierEnum? get styleIdentifier => _styleIdentifier;
  set styleIdentifier(Style_StyleIdentifierEnum? val) => _styleIdentifier = val;


  /// Gets or sets the name of the style.
  /// Cannot be an empty string. If there already is a style with such name in the collection, then this style will override it. All affected nodes will reference new style.
  String? _name;

  String? get name => _name;
  set name(String? val) => _name = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Style data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('Font')) {
      font = ModelBase.createInstance< Font >(json['Font'] as Map<String, dynamic>);
    } else {
      font = null;
    }

    if (json.containsKey('BuiltIn')) {
      builtIn = json['BuiltIn'] as bool;
    } else {
      builtIn = null;
    }

    if (json.containsKey('NextParagraphStyleName')) {
      nextParagraphStyleName = json['NextParagraphStyleName'] as String;
    } else {
      nextParagraphStyleName = null;
    }

    if (json.containsKey('BaseStyleName')) {
      baseStyleName = json['BaseStyleName'] as String;
    } else {
      baseStyleName = null;
    }

    if (json.containsKey('IsQuickStyle')) {
      isQuickStyle = json['IsQuickStyle'] as bool;
    } else {
      isQuickStyle = null;
    }

    if (json.containsKey('LinkedStyleName')) {
      linkedStyleName = json['LinkedStyleName'] as String;
    } else {
      linkedStyleName = null;
    }

    if (json.containsKey('Type')) {
      switch (json['Type'] as String) {
        case 'Paragraph': type = Style_TypeEnum.paragraph; break;
        case 'Character': type = Style_TypeEnum.character; break;
        case 'Table': type = Style_TypeEnum.table; break;
        case 'List': type = Style_TypeEnum.list; break;
        default: type = null; break;
      }
    } else {
      type = null;
    }

    if (json.containsKey('IsHeading')) {
      isHeading = json['IsHeading'] as bool;
    } else {
      isHeading = null;
    }

    if (json.containsKey('Aliases')) {
      // Array processing
      aliases = <String>[];
      for(final _element in json['Aliases']) {
        aliases!.add(_element as String);
      }
    } else {
      aliases = null;
    }

    if (json.containsKey('StyleIdentifier')) {
      switch (json['StyleIdentifier'] as String) {
        case 'Normal': styleIdentifier = Style_StyleIdentifierEnum.normal; break;
        case 'Heading1': styleIdentifier = Style_StyleIdentifierEnum.heading1; break;
        case 'Heading2': styleIdentifier = Style_StyleIdentifierEnum.heading2; break;
        case 'Heading3': styleIdentifier = Style_StyleIdentifierEnum.heading3; break;
        case 'Heading4': styleIdentifier = Style_StyleIdentifierEnum.heading4; break;
        case 'Heading5': styleIdentifier = Style_StyleIdentifierEnum.heading5; break;
        case 'Heading6': styleIdentifier = Style_StyleIdentifierEnum.heading6; break;
        case 'Heading7': styleIdentifier = Style_StyleIdentifierEnum.heading7; break;
        case 'Heading8': styleIdentifier = Style_StyleIdentifierEnum.heading8; break;
        case 'Heading9': styleIdentifier = Style_StyleIdentifierEnum.heading9; break;
        case 'Index1': styleIdentifier = Style_StyleIdentifierEnum.index1; break;
        case 'Index2': styleIdentifier = Style_StyleIdentifierEnum.index2; break;
        case 'Index3': styleIdentifier = Style_StyleIdentifierEnum.index3; break;
        case 'Index4': styleIdentifier = Style_StyleIdentifierEnum.index4; break;
        case 'Index5': styleIdentifier = Style_StyleIdentifierEnum.index5; break;
        case 'Index6': styleIdentifier = Style_StyleIdentifierEnum.index6; break;
        case 'Index7': styleIdentifier = Style_StyleIdentifierEnum.index7; break;
        case 'Index8': styleIdentifier = Style_StyleIdentifierEnum.index8; break;
        case 'Index9': styleIdentifier = Style_StyleIdentifierEnum.index9; break;
        case 'Toc1': styleIdentifier = Style_StyleIdentifierEnum.toc1; break;
        case 'Toc2': styleIdentifier = Style_StyleIdentifierEnum.toc2; break;
        case 'Toc3': styleIdentifier = Style_StyleIdentifierEnum.toc3; break;
        case 'Toc4': styleIdentifier = Style_StyleIdentifierEnum.toc4; break;
        case 'Toc5': styleIdentifier = Style_StyleIdentifierEnum.toc5; break;
        case 'Toc6': styleIdentifier = Style_StyleIdentifierEnum.toc6; break;
        case 'Toc7': styleIdentifier = Style_StyleIdentifierEnum.toc7; break;
        case 'Toc8': styleIdentifier = Style_StyleIdentifierEnum.toc8; break;
        case 'Toc9': styleIdentifier = Style_StyleIdentifierEnum.toc9; break;
        case 'NormalIndent': styleIdentifier = Style_StyleIdentifierEnum.normalIndent; break;
        case 'FootnoteText': styleIdentifier = Style_StyleIdentifierEnum.footnoteText; break;
        case 'CommentText': styleIdentifier = Style_StyleIdentifierEnum.commentText; break;
        case 'Header': styleIdentifier = Style_StyleIdentifierEnum.header; break;
        case 'Footer': styleIdentifier = Style_StyleIdentifierEnum.footer; break;
        case 'IndexHeading': styleIdentifier = Style_StyleIdentifierEnum.indexHeading; break;
        case 'Caption': styleIdentifier = Style_StyleIdentifierEnum.caption; break;
        case 'TableOfFigures': styleIdentifier = Style_StyleIdentifierEnum.tableOfFigures; break;
        case 'EnvelopeAddress': styleIdentifier = Style_StyleIdentifierEnum.envelopeAddress; break;
        case 'EnvelopeReturn': styleIdentifier = Style_StyleIdentifierEnum.envelopeReturn; break;
        case 'FootnoteReference': styleIdentifier = Style_StyleIdentifierEnum.footnoteReference; break;
        case 'CommentReference': styleIdentifier = Style_StyleIdentifierEnum.commentReference; break;
        case 'LineNumber': styleIdentifier = Style_StyleIdentifierEnum.lineNumber; break;
        case 'PageNumber': styleIdentifier = Style_StyleIdentifierEnum.pageNumber; break;
        case 'EndnoteReference': styleIdentifier = Style_StyleIdentifierEnum.endnoteReference; break;
        case 'EndnoteText': styleIdentifier = Style_StyleIdentifierEnum.endnoteText; break;
        case 'TableOfAuthorities': styleIdentifier = Style_StyleIdentifierEnum.tableOfAuthorities; break;
        case 'Macro': styleIdentifier = Style_StyleIdentifierEnum.macro; break;
        case 'ToaHeading': styleIdentifier = Style_StyleIdentifierEnum.toaHeading; break;
        case 'List': styleIdentifier = Style_StyleIdentifierEnum.list; break;
        case 'ListBullet': styleIdentifier = Style_StyleIdentifierEnum.listBullet; break;
        case 'ListNumber': styleIdentifier = Style_StyleIdentifierEnum.listNumber; break;
        case 'List2': styleIdentifier = Style_StyleIdentifierEnum.list2; break;
        case 'List3': styleIdentifier = Style_StyleIdentifierEnum.list3; break;
        case 'List4': styleIdentifier = Style_StyleIdentifierEnum.list4; break;
        case 'List5': styleIdentifier = Style_StyleIdentifierEnum.list5; break;
        case 'ListBullet2': styleIdentifier = Style_StyleIdentifierEnum.listBullet2; break;
        case 'ListBullet3': styleIdentifier = Style_StyleIdentifierEnum.listBullet3; break;
        case 'ListBullet4': styleIdentifier = Style_StyleIdentifierEnum.listBullet4; break;
        case 'ListBullet5': styleIdentifier = Style_StyleIdentifierEnum.listBullet5; break;
        case 'ListNumber2': styleIdentifier = Style_StyleIdentifierEnum.listNumber2; break;
        case 'ListNumber3': styleIdentifier = Style_StyleIdentifierEnum.listNumber3; break;
        case 'ListNumber4': styleIdentifier = Style_StyleIdentifierEnum.listNumber4; break;
        case 'ListNumber5': styleIdentifier = Style_StyleIdentifierEnum.listNumber5; break;
        case 'Title': styleIdentifier = Style_StyleIdentifierEnum.title; break;
        case 'Closing': styleIdentifier = Style_StyleIdentifierEnum.closing; break;
        case 'Signature': styleIdentifier = Style_StyleIdentifierEnum.signature; break;
        case 'DefaultParagraphFont': styleIdentifier = Style_StyleIdentifierEnum.defaultParagraphFont; break;
        case 'BodyText': styleIdentifier = Style_StyleIdentifierEnum.bodyText; break;
        case 'BodyTextInd': styleIdentifier = Style_StyleIdentifierEnum.bodyTextInd; break;
        case 'ListContinue': styleIdentifier = Style_StyleIdentifierEnum.listContinue; break;
        case 'ListContinue2': styleIdentifier = Style_StyleIdentifierEnum.listContinue2; break;
        case 'ListContinue3': styleIdentifier = Style_StyleIdentifierEnum.listContinue3; break;
        case 'ListContinue4': styleIdentifier = Style_StyleIdentifierEnum.listContinue4; break;
        case 'ListContinue5': styleIdentifier = Style_StyleIdentifierEnum.listContinue5; break;
        case 'MessageHeader': styleIdentifier = Style_StyleIdentifierEnum.messageHeader; break;
        case 'Subtitle': styleIdentifier = Style_StyleIdentifierEnum.subtitle; break;
        case 'Salutation': styleIdentifier = Style_StyleIdentifierEnum.salutation; break;
        case 'Date': styleIdentifier = Style_StyleIdentifierEnum.date; break;
        case 'BodyText1I': styleIdentifier = Style_StyleIdentifierEnum.bodyText1I; break;
        case 'BodyText1I2': styleIdentifier = Style_StyleIdentifierEnum.bodyText1I2; break;
        case 'NoteHeading': styleIdentifier = Style_StyleIdentifierEnum.noteHeading; break;
        case 'BodyText2': styleIdentifier = Style_StyleIdentifierEnum.bodyText2; break;
        case 'BodyText3': styleIdentifier = Style_StyleIdentifierEnum.bodyText3; break;
        case 'BodyTextInd2': styleIdentifier = Style_StyleIdentifierEnum.bodyTextInd2; break;
        case 'BodyTextInd3': styleIdentifier = Style_StyleIdentifierEnum.bodyTextInd3; break;
        case 'BlockText': styleIdentifier = Style_StyleIdentifierEnum.blockText; break;
        case 'Hyperlink': styleIdentifier = Style_StyleIdentifierEnum.hyperlink; break;
        case 'FollowedHyperlink': styleIdentifier = Style_StyleIdentifierEnum.followedHyperlink; break;
        case 'Strong': styleIdentifier = Style_StyleIdentifierEnum.strong; break;
        case 'Emphasis': styleIdentifier = Style_StyleIdentifierEnum.emphasis; break;
        case 'DocumentMap': styleIdentifier = Style_StyleIdentifierEnum.documentMap; break;
        case 'PlainText': styleIdentifier = Style_StyleIdentifierEnum.plainText; break;
        case 'EmailSignature': styleIdentifier = Style_StyleIdentifierEnum.emailSignature; break;
        case 'HtmlTopOfForm': styleIdentifier = Style_StyleIdentifierEnum.htmlTopOfForm; break;
        case 'HtmlBottomOfForm': styleIdentifier = Style_StyleIdentifierEnum.htmlBottomOfForm; break;
        case 'NormalWeb': styleIdentifier = Style_StyleIdentifierEnum.normalWeb; break;
        case 'HtmlAcronym': styleIdentifier = Style_StyleIdentifierEnum.htmlAcronym; break;
        case 'HtmlAddress': styleIdentifier = Style_StyleIdentifierEnum.htmlAddress; break;
        case 'HtmlCite': styleIdentifier = Style_StyleIdentifierEnum.htmlCite; break;
        case 'HtmlCode': styleIdentifier = Style_StyleIdentifierEnum.htmlCode; break;
        case 'HtmlDefinition': styleIdentifier = Style_StyleIdentifierEnum.htmlDefinition; break;
        case 'HtmlKeyboard': styleIdentifier = Style_StyleIdentifierEnum.htmlKeyboard; break;
        case 'HtmlPreformatted': styleIdentifier = Style_StyleIdentifierEnum.htmlPreformatted; break;
        case 'HtmlSample': styleIdentifier = Style_StyleIdentifierEnum.htmlSample; break;
        case 'HtmlTypewriter': styleIdentifier = Style_StyleIdentifierEnum.htmlTypewriter; break;
        case 'HtmlVariable': styleIdentifier = Style_StyleIdentifierEnum.htmlVariable; break;
        case 'TableNormal': styleIdentifier = Style_StyleIdentifierEnum.tableNormal; break;
        case 'CommentSubject': styleIdentifier = Style_StyleIdentifierEnum.commentSubject; break;
        case 'NoList': styleIdentifier = Style_StyleIdentifierEnum.noList; break;
        case 'OutlineList1': styleIdentifier = Style_StyleIdentifierEnum.outlineList1; break;
        case 'OutlineList2': styleIdentifier = Style_StyleIdentifierEnum.outlineList2; break;
        case 'OutlineList3': styleIdentifier = Style_StyleIdentifierEnum.outlineList3; break;
        case 'TableSimple1': styleIdentifier = Style_StyleIdentifierEnum.tableSimple1; break;
        case 'TableSimple2': styleIdentifier = Style_StyleIdentifierEnum.tableSimple2; break;
        case 'TableSimple3': styleIdentifier = Style_StyleIdentifierEnum.tableSimple3; break;
        case 'TableClassic1': styleIdentifier = Style_StyleIdentifierEnum.tableClassic1; break;
        case 'TableClassic2': styleIdentifier = Style_StyleIdentifierEnum.tableClassic2; break;
        case 'TableClassic3': styleIdentifier = Style_StyleIdentifierEnum.tableClassic3; break;
        case 'TableClassic4': styleIdentifier = Style_StyleIdentifierEnum.tableClassic4; break;
        case 'TableColorful1': styleIdentifier = Style_StyleIdentifierEnum.tableColorful1; break;
        case 'TableColorful2': styleIdentifier = Style_StyleIdentifierEnum.tableColorful2; break;
        case 'TableColorful3': styleIdentifier = Style_StyleIdentifierEnum.tableColorful3; break;
        case 'TableColumns1': styleIdentifier = Style_StyleIdentifierEnum.tableColumns1; break;
        case 'TableColumns2': styleIdentifier = Style_StyleIdentifierEnum.tableColumns2; break;
        case 'TableColumns3': styleIdentifier = Style_StyleIdentifierEnum.tableColumns3; break;
        case 'TableColumns4': styleIdentifier = Style_StyleIdentifierEnum.tableColumns4; break;
        case 'TableColumns5': styleIdentifier = Style_StyleIdentifierEnum.tableColumns5; break;
        case 'TableGrid1': styleIdentifier = Style_StyleIdentifierEnum.tableGrid1; break;
        case 'TableGrid2': styleIdentifier = Style_StyleIdentifierEnum.tableGrid2; break;
        case 'TableGrid3': styleIdentifier = Style_StyleIdentifierEnum.tableGrid3; break;
        case 'TableGrid4': styleIdentifier = Style_StyleIdentifierEnum.tableGrid4; break;
        case 'TableGrid5': styleIdentifier = Style_StyleIdentifierEnum.tableGrid5; break;
        case 'TableGrid6': styleIdentifier = Style_StyleIdentifierEnum.tableGrid6; break;
        case 'TableGrid7': styleIdentifier = Style_StyleIdentifierEnum.tableGrid7; break;
        case 'TableGrid8': styleIdentifier = Style_StyleIdentifierEnum.tableGrid8; break;
        case 'TableList1': styleIdentifier = Style_StyleIdentifierEnum.tableList1; break;
        case 'TableList2': styleIdentifier = Style_StyleIdentifierEnum.tableList2; break;
        case 'TableList3': styleIdentifier = Style_StyleIdentifierEnum.tableList3; break;
        case 'TableList4': styleIdentifier = Style_StyleIdentifierEnum.tableList4; break;
        case 'TableList5': styleIdentifier = Style_StyleIdentifierEnum.tableList5; break;
        case 'TableList6': styleIdentifier = Style_StyleIdentifierEnum.tableList6; break;
        case 'TableList7': styleIdentifier = Style_StyleIdentifierEnum.tableList7; break;
        case 'TableList8': styleIdentifier = Style_StyleIdentifierEnum.tableList8; break;
        case 'Table3DEffects1': styleIdentifier = Style_StyleIdentifierEnum.table3DEffects1; break;
        case 'Table3DEffects2': styleIdentifier = Style_StyleIdentifierEnum.table3DEffects2; break;
        case 'Table3DEffects3': styleIdentifier = Style_StyleIdentifierEnum.table3DEffects3; break;
        case 'TableContemporary': styleIdentifier = Style_StyleIdentifierEnum.tableContemporary; break;
        case 'TableElegant': styleIdentifier = Style_StyleIdentifierEnum.tableElegant; break;
        case 'TableProfessional': styleIdentifier = Style_StyleIdentifierEnum.tableProfessional; break;
        case 'TableSubtle1': styleIdentifier = Style_StyleIdentifierEnum.tableSubtle1; break;
        case 'TableSubtle2': styleIdentifier = Style_StyleIdentifierEnum.tableSubtle2; break;
        case 'TableWeb1': styleIdentifier = Style_StyleIdentifierEnum.tableWeb1; break;
        case 'TableWeb2': styleIdentifier = Style_StyleIdentifierEnum.tableWeb2; break;
        case 'TableWeb3': styleIdentifier = Style_StyleIdentifierEnum.tableWeb3; break;
        case 'BalloonText': styleIdentifier = Style_StyleIdentifierEnum.balloonText; break;
        case 'TableGrid': styleIdentifier = Style_StyleIdentifierEnum.tableGrid; break;
        case 'TableTheme': styleIdentifier = Style_StyleIdentifierEnum.tableTheme; break;
        case 'PlaceholderText': styleIdentifier = Style_StyleIdentifierEnum.placeholderText; break;
        case 'NoSpacing': styleIdentifier = Style_StyleIdentifierEnum.noSpacing; break;
        case 'LightShading': styleIdentifier = Style_StyleIdentifierEnum.lightShading; break;
        case 'LightList': styleIdentifier = Style_StyleIdentifierEnum.lightList; break;
        case 'LightGrid': styleIdentifier = Style_StyleIdentifierEnum.lightGrid; break;
        case 'MediumShading1': styleIdentifier = Style_StyleIdentifierEnum.mediumShading1; break;
        case 'MediumShading2': styleIdentifier = Style_StyleIdentifierEnum.mediumShading2; break;
        case 'MediumList1': styleIdentifier = Style_StyleIdentifierEnum.mediumList1; break;
        case 'MediumList2': styleIdentifier = Style_StyleIdentifierEnum.mediumList2; break;
        case 'MediumGrid1': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid1; break;
        case 'MediumGrid2': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid2; break;
        case 'MediumGrid3': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid3; break;
        case 'DarkList': styleIdentifier = Style_StyleIdentifierEnum.darkList; break;
        case 'ColorfulShading': styleIdentifier = Style_StyleIdentifierEnum.colorfulShading; break;
        case 'ColorfulList': styleIdentifier = Style_StyleIdentifierEnum.colorfulList; break;
        case 'ColorfulGrid': styleIdentifier = Style_StyleIdentifierEnum.colorfulGrid; break;
        case 'LightShadingAccent1': styleIdentifier = Style_StyleIdentifierEnum.lightShadingAccent1; break;
        case 'LightListAccent1': styleIdentifier = Style_StyleIdentifierEnum.lightListAccent1; break;
        case 'LightGridAccent1': styleIdentifier = Style_StyleIdentifierEnum.lightGridAccent1; break;
        case 'MediumShading1Accent1': styleIdentifier = Style_StyleIdentifierEnum.mediumShading1Accent1; break;
        case 'MediumShading2Accent1': styleIdentifier = Style_StyleIdentifierEnum.mediumShading2Accent1; break;
        case 'MediumList1Accent1': styleIdentifier = Style_StyleIdentifierEnum.mediumList1Accent1; break;
        case 'Revision': styleIdentifier = Style_StyleIdentifierEnum.revision; break;
        case 'ListParagraph': styleIdentifier = Style_StyleIdentifierEnum.listParagraph; break;
        case 'Quote': styleIdentifier = Style_StyleIdentifierEnum.quote; break;
        case 'IntenseQuote': styleIdentifier = Style_StyleIdentifierEnum.intenseQuote; break;
        case 'MediumList2Accent1': styleIdentifier = Style_StyleIdentifierEnum.mediumList2Accent1; break;
        case 'MediumGrid1Accent1': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid1Accent1; break;
        case 'MediumGrid2Accent1': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid2Accent1; break;
        case 'MediumGrid3Accent1': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid3Accent1; break;
        case 'DarkListAccent1': styleIdentifier = Style_StyleIdentifierEnum.darkListAccent1; break;
        case 'ColorfulShadingAccent1': styleIdentifier = Style_StyleIdentifierEnum.colorfulShadingAccent1; break;
        case 'ColorfulListAccent1': styleIdentifier = Style_StyleIdentifierEnum.colorfulListAccent1; break;
        case 'ColorfulGridAccent1': styleIdentifier = Style_StyleIdentifierEnum.colorfulGridAccent1; break;
        case 'LightShadingAccent2': styleIdentifier = Style_StyleIdentifierEnum.lightShadingAccent2; break;
        case 'LightListAccent2': styleIdentifier = Style_StyleIdentifierEnum.lightListAccent2; break;
        case 'LightGridAccent2': styleIdentifier = Style_StyleIdentifierEnum.lightGridAccent2; break;
        case 'MediumShading1Accent2': styleIdentifier = Style_StyleIdentifierEnum.mediumShading1Accent2; break;
        case 'MediumShading2Accent2': styleIdentifier = Style_StyleIdentifierEnum.mediumShading2Accent2; break;
        case 'MediumList1Accent2': styleIdentifier = Style_StyleIdentifierEnum.mediumList1Accent2; break;
        case 'MediumList2Accent2': styleIdentifier = Style_StyleIdentifierEnum.mediumList2Accent2; break;
        case 'MediumGrid1Accent2': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid1Accent2; break;
        case 'MediumGrid2Accent2': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid2Accent2; break;
        case 'MediumGrid3Accent2': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid3Accent2; break;
        case 'DarkListAccent2': styleIdentifier = Style_StyleIdentifierEnum.darkListAccent2; break;
        case 'ColorfulShadingAccent2': styleIdentifier = Style_StyleIdentifierEnum.colorfulShadingAccent2; break;
        case 'ColorfulListAccent2': styleIdentifier = Style_StyleIdentifierEnum.colorfulListAccent2; break;
        case 'ColorfulGridAccent2': styleIdentifier = Style_StyleIdentifierEnum.colorfulGridAccent2; break;
        case 'LightShadingAccent3': styleIdentifier = Style_StyleIdentifierEnum.lightShadingAccent3; break;
        case 'LightListAccent3': styleIdentifier = Style_StyleIdentifierEnum.lightListAccent3; break;
        case 'LightGridAccent3': styleIdentifier = Style_StyleIdentifierEnum.lightGridAccent3; break;
        case 'MediumShading1Accent3': styleIdentifier = Style_StyleIdentifierEnum.mediumShading1Accent3; break;
        case 'MediumShading2Accent3': styleIdentifier = Style_StyleIdentifierEnum.mediumShading2Accent3; break;
        case 'MediumList1Accent3': styleIdentifier = Style_StyleIdentifierEnum.mediumList1Accent3; break;
        case 'MediumList2Accent3': styleIdentifier = Style_StyleIdentifierEnum.mediumList2Accent3; break;
        case 'MediumGrid1Accent3': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid1Accent3; break;
        case 'MediumGrid2Accent3': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid2Accent3; break;
        case 'MediumGrid3Accent3': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid3Accent3; break;
        case 'DarkListAccent3': styleIdentifier = Style_StyleIdentifierEnum.darkListAccent3; break;
        case 'ColorfulShadingAccent3': styleIdentifier = Style_StyleIdentifierEnum.colorfulShadingAccent3; break;
        case 'ColorfulListAccent3': styleIdentifier = Style_StyleIdentifierEnum.colorfulListAccent3; break;
        case 'ColorfulGridAccent3': styleIdentifier = Style_StyleIdentifierEnum.colorfulGridAccent3; break;
        case 'LightShadingAccent4': styleIdentifier = Style_StyleIdentifierEnum.lightShadingAccent4; break;
        case 'LightListAccent4': styleIdentifier = Style_StyleIdentifierEnum.lightListAccent4; break;
        case 'LightGridAccent4': styleIdentifier = Style_StyleIdentifierEnum.lightGridAccent4; break;
        case 'MediumShading1Accent4': styleIdentifier = Style_StyleIdentifierEnum.mediumShading1Accent4; break;
        case 'MediumShading2Accent4': styleIdentifier = Style_StyleIdentifierEnum.mediumShading2Accent4; break;
        case 'MediumList1Accent4': styleIdentifier = Style_StyleIdentifierEnum.mediumList1Accent4; break;
        case 'MediumList2Accent4': styleIdentifier = Style_StyleIdentifierEnum.mediumList2Accent4; break;
        case 'MediumGrid1Accent4': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid1Accent4; break;
        case 'MediumGrid2Accent4': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid2Accent4; break;
        case 'MediumGrid3Accent4': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid3Accent4; break;
        case 'DarkListAccent4': styleIdentifier = Style_StyleIdentifierEnum.darkListAccent4; break;
        case 'ColorfulShadingAccent4': styleIdentifier = Style_StyleIdentifierEnum.colorfulShadingAccent4; break;
        case 'ColorfulListAccent4': styleIdentifier = Style_StyleIdentifierEnum.colorfulListAccent4; break;
        case 'ColorfulGridAccent4': styleIdentifier = Style_StyleIdentifierEnum.colorfulGridAccent4; break;
        case 'LightShadingAccent5': styleIdentifier = Style_StyleIdentifierEnum.lightShadingAccent5; break;
        case 'LightListAccent5': styleIdentifier = Style_StyleIdentifierEnum.lightListAccent5; break;
        case 'LightGridAccent5': styleIdentifier = Style_StyleIdentifierEnum.lightGridAccent5; break;
        case 'MediumShading1Accent5': styleIdentifier = Style_StyleIdentifierEnum.mediumShading1Accent5; break;
        case 'MediumShading2Accent5': styleIdentifier = Style_StyleIdentifierEnum.mediumShading2Accent5; break;
        case 'MediumList1Accent5': styleIdentifier = Style_StyleIdentifierEnum.mediumList1Accent5; break;
        case 'MediumList2Accent5': styleIdentifier = Style_StyleIdentifierEnum.mediumList2Accent5; break;
        case 'MediumGrid1Accent5': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid1Accent5; break;
        case 'MediumGrid2Accent5': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid2Accent5; break;
        case 'MediumGrid3Accent5': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid3Accent5; break;
        case 'DarkListAccent5': styleIdentifier = Style_StyleIdentifierEnum.darkListAccent5; break;
        case 'ColorfulShadingAccent5': styleIdentifier = Style_StyleIdentifierEnum.colorfulShadingAccent5; break;
        case 'ColorfulListAccent5': styleIdentifier = Style_StyleIdentifierEnum.colorfulListAccent5; break;
        case 'ColorfulGridAccent5': styleIdentifier = Style_StyleIdentifierEnum.colorfulGridAccent5; break;
        case 'LightShadingAccent6': styleIdentifier = Style_StyleIdentifierEnum.lightShadingAccent6; break;
        case 'LightListAccent6': styleIdentifier = Style_StyleIdentifierEnum.lightListAccent6; break;
        case 'LightGridAccent6': styleIdentifier = Style_StyleIdentifierEnum.lightGridAccent6; break;
        case 'MediumShading1Accent6': styleIdentifier = Style_StyleIdentifierEnum.mediumShading1Accent6; break;
        case 'MediumShading2Accent6': styleIdentifier = Style_StyleIdentifierEnum.mediumShading2Accent6; break;
        case 'MediumList1Accent6': styleIdentifier = Style_StyleIdentifierEnum.mediumList1Accent6; break;
        case 'MediumList2Accent6': styleIdentifier = Style_StyleIdentifierEnum.mediumList2Accent6; break;
        case 'MediumGrid1Accent6': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid1Accent6; break;
        case 'MediumGrid2Accent6': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid2Accent6; break;
        case 'MediumGrid3Accent6': styleIdentifier = Style_StyleIdentifierEnum.mediumGrid3Accent6; break;
        case 'DarkListAccent6': styleIdentifier = Style_StyleIdentifierEnum.darkListAccent6; break;
        case 'ColorfulShadingAccent6': styleIdentifier = Style_StyleIdentifierEnum.colorfulShadingAccent6; break;
        case 'ColorfulListAccent6': styleIdentifier = Style_StyleIdentifierEnum.colorfulListAccent6; break;
        case 'ColorfulGridAccent6': styleIdentifier = Style_StyleIdentifierEnum.colorfulGridAccent6; break;
        case 'SubtleEmphasis': styleIdentifier = Style_StyleIdentifierEnum.subtleEmphasis; break;
        case 'IntenseEmphasis': styleIdentifier = Style_StyleIdentifierEnum.intenseEmphasis; break;
        case 'SubtleReference': styleIdentifier = Style_StyleIdentifierEnum.subtleReference; break;
        case 'IntenseReference': styleIdentifier = Style_StyleIdentifierEnum.intenseReference; break;
        case 'BookTitle': styleIdentifier = Style_StyleIdentifierEnum.bookTitle; break;
        case 'Bibliography': styleIdentifier = Style_StyleIdentifierEnum.bibliography; break;
        case 'TocHeading': styleIdentifier = Style_StyleIdentifierEnum.tocHeading; break;
        case 'PlainTable1': styleIdentifier = Style_StyleIdentifierEnum.plainTable1; break;
        case 'PlainTable2': styleIdentifier = Style_StyleIdentifierEnum.plainTable2; break;
        case 'PlainTable3': styleIdentifier = Style_StyleIdentifierEnum.plainTable3; break;
        case 'PlainTable4': styleIdentifier = Style_StyleIdentifierEnum.plainTable4; break;
        case 'PlainTable5': styleIdentifier = Style_StyleIdentifierEnum.plainTable5; break;
        case 'TableGridLight': styleIdentifier = Style_StyleIdentifierEnum.tableGridLight; break;
        case 'GridTable1Light': styleIdentifier = Style_StyleIdentifierEnum.gridTable1Light; break;
        case 'GridTable2': styleIdentifier = Style_StyleIdentifierEnum.gridTable2; break;
        case 'GridTable3': styleIdentifier = Style_StyleIdentifierEnum.gridTable3; break;
        case 'GridTable4': styleIdentifier = Style_StyleIdentifierEnum.gridTable4; break;
        case 'GridTable5Dark': styleIdentifier = Style_StyleIdentifierEnum.gridTable5Dark; break;
        case 'GridTable6Colorful': styleIdentifier = Style_StyleIdentifierEnum.gridTable6Colorful; break;
        case 'GridTable7Colorful': styleIdentifier = Style_StyleIdentifierEnum.gridTable7Colorful; break;
        case 'GridTable1LightAccent1': styleIdentifier = Style_StyleIdentifierEnum.gridTable1LightAccent1; break;
        case 'GridTable2Accent1': styleIdentifier = Style_StyleIdentifierEnum.gridTable2Accent1; break;
        case 'GridTable3Accent1': styleIdentifier = Style_StyleIdentifierEnum.gridTable3Accent1; break;
        case 'GridTable4Accent1': styleIdentifier = Style_StyleIdentifierEnum.gridTable4Accent1; break;
        case 'GridTable5DarkAccent1': styleIdentifier = Style_StyleIdentifierEnum.gridTable5DarkAccent1; break;
        case 'GridTable6ColorfulAccent1': styleIdentifier = Style_StyleIdentifierEnum.gridTable6ColorfulAccent1; break;
        case 'GridTable7ColorfulAccent1': styleIdentifier = Style_StyleIdentifierEnum.gridTable7ColorfulAccent1; break;
        case 'GridTable1LightAccent2': styleIdentifier = Style_StyleIdentifierEnum.gridTable1LightAccent2; break;
        case 'GridTable2Accent2': styleIdentifier = Style_StyleIdentifierEnum.gridTable2Accent2; break;
        case 'GridTable3Accent2': styleIdentifier = Style_StyleIdentifierEnum.gridTable3Accent2; break;
        case 'GridTable4Accent2': styleIdentifier = Style_StyleIdentifierEnum.gridTable4Accent2; break;
        case 'GridTable5DarkAccent2': styleIdentifier = Style_StyleIdentifierEnum.gridTable5DarkAccent2; break;
        case 'GridTable6ColorfulAccent2': styleIdentifier = Style_StyleIdentifierEnum.gridTable6ColorfulAccent2; break;
        case 'GridTable7ColorfulAccent2': styleIdentifier = Style_StyleIdentifierEnum.gridTable7ColorfulAccent2; break;
        case 'GridTable1LightAccent3': styleIdentifier = Style_StyleIdentifierEnum.gridTable1LightAccent3; break;
        case 'GridTable2Accent3': styleIdentifier = Style_StyleIdentifierEnum.gridTable2Accent3; break;
        case 'GridTable3Accent3': styleIdentifier = Style_StyleIdentifierEnum.gridTable3Accent3; break;
        case 'GridTable4Accent3': styleIdentifier = Style_StyleIdentifierEnum.gridTable4Accent3; break;
        case 'GridTable5DarkAccent3': styleIdentifier = Style_StyleIdentifierEnum.gridTable5DarkAccent3; break;
        case 'GridTable6ColorfulAccent3': styleIdentifier = Style_StyleIdentifierEnum.gridTable6ColorfulAccent3; break;
        case 'GridTable7ColorfulAccent3': styleIdentifier = Style_StyleIdentifierEnum.gridTable7ColorfulAccent3; break;
        case 'GridTable1LightAccent4': styleIdentifier = Style_StyleIdentifierEnum.gridTable1LightAccent4; break;
        case 'GridTable2Accent4': styleIdentifier = Style_StyleIdentifierEnum.gridTable2Accent4; break;
        case 'GridTable3Accent4': styleIdentifier = Style_StyleIdentifierEnum.gridTable3Accent4; break;
        case 'GridTable4Accent4': styleIdentifier = Style_StyleIdentifierEnum.gridTable4Accent4; break;
        case 'GridTable5DarkAccent4': styleIdentifier = Style_StyleIdentifierEnum.gridTable5DarkAccent4; break;
        case 'GridTable6ColorfulAccent4': styleIdentifier = Style_StyleIdentifierEnum.gridTable6ColorfulAccent4; break;
        case 'GridTable7ColorfulAccent4': styleIdentifier = Style_StyleIdentifierEnum.gridTable7ColorfulAccent4; break;
        case 'GridTable1LightAccent5': styleIdentifier = Style_StyleIdentifierEnum.gridTable1LightAccent5; break;
        case 'GridTable2Accent5': styleIdentifier = Style_StyleIdentifierEnum.gridTable2Accent5; break;
        case 'GridTable3Accent5': styleIdentifier = Style_StyleIdentifierEnum.gridTable3Accent5; break;
        case 'GridTable4Accent5': styleIdentifier = Style_StyleIdentifierEnum.gridTable4Accent5; break;
        case 'GridTable5DarkAccent5': styleIdentifier = Style_StyleIdentifierEnum.gridTable5DarkAccent5; break;
        case 'GridTable6ColorfulAccent5': styleIdentifier = Style_StyleIdentifierEnum.gridTable6ColorfulAccent5; break;
        case 'GridTable7ColorfulAccent5': styleIdentifier = Style_StyleIdentifierEnum.gridTable7ColorfulAccent5; break;
        case 'GridTable1LightAccent6': styleIdentifier = Style_StyleIdentifierEnum.gridTable1LightAccent6; break;
        case 'GridTable2Accent6': styleIdentifier = Style_StyleIdentifierEnum.gridTable2Accent6; break;
        case 'GridTable3Accent6': styleIdentifier = Style_StyleIdentifierEnum.gridTable3Accent6; break;
        case 'GridTable4Accent6': styleIdentifier = Style_StyleIdentifierEnum.gridTable4Accent6; break;
        case 'GridTable5DarkAccent6': styleIdentifier = Style_StyleIdentifierEnum.gridTable5DarkAccent6; break;
        case 'GridTable6ColorfulAccent6': styleIdentifier = Style_StyleIdentifierEnum.gridTable6ColorfulAccent6; break;
        case 'GridTable7ColorfulAccent6': styleIdentifier = Style_StyleIdentifierEnum.gridTable7ColorfulAccent6; break;
        case 'ListTable1Light': styleIdentifier = Style_StyleIdentifierEnum.listTable1Light; break;
        case 'ListTable2': styleIdentifier = Style_StyleIdentifierEnum.listTable2; break;
        case 'ListTable3': styleIdentifier = Style_StyleIdentifierEnum.listTable3; break;
        case 'ListTable4': styleIdentifier = Style_StyleIdentifierEnum.listTable4; break;
        case 'ListTable5Dark': styleIdentifier = Style_StyleIdentifierEnum.listTable5Dark; break;
        case 'ListTable6Colorful': styleIdentifier = Style_StyleIdentifierEnum.listTable6Colorful; break;
        case 'ListTable7Colorful': styleIdentifier = Style_StyleIdentifierEnum.listTable7Colorful; break;
        case 'ListTable1LightAccent1': styleIdentifier = Style_StyleIdentifierEnum.listTable1LightAccent1; break;
        case 'ListTable2Accent1': styleIdentifier = Style_StyleIdentifierEnum.listTable2Accent1; break;
        case 'ListTable3Accent1': styleIdentifier = Style_StyleIdentifierEnum.listTable3Accent1; break;
        case 'ListTable4Accent1': styleIdentifier = Style_StyleIdentifierEnum.listTable4Accent1; break;
        case 'ListTable5DarkAccent1': styleIdentifier = Style_StyleIdentifierEnum.listTable5DarkAccent1; break;
        case 'ListTable6ColorfulAccent1': styleIdentifier = Style_StyleIdentifierEnum.listTable6ColorfulAccent1; break;
        case 'ListTable7ColorfulAccent1': styleIdentifier = Style_StyleIdentifierEnum.listTable7ColorfulAccent1; break;
        case 'ListTable1LightAccent2': styleIdentifier = Style_StyleIdentifierEnum.listTable1LightAccent2; break;
        case 'ListTable2Accent2': styleIdentifier = Style_StyleIdentifierEnum.listTable2Accent2; break;
        case 'ListTable3Accent2': styleIdentifier = Style_StyleIdentifierEnum.listTable3Accent2; break;
        case 'ListTable4Accent2': styleIdentifier = Style_StyleIdentifierEnum.listTable4Accent2; break;
        case 'ListTable5DarkAccent2': styleIdentifier = Style_StyleIdentifierEnum.listTable5DarkAccent2; break;
        case 'ListTable6ColorfulAccent2': styleIdentifier = Style_StyleIdentifierEnum.listTable6ColorfulAccent2; break;
        case 'ListTable7ColorfulAccent2': styleIdentifier = Style_StyleIdentifierEnum.listTable7ColorfulAccent2; break;
        case 'ListTable1LightAccent3': styleIdentifier = Style_StyleIdentifierEnum.listTable1LightAccent3; break;
        case 'ListTable2Accent3': styleIdentifier = Style_StyleIdentifierEnum.listTable2Accent3; break;
        case 'ListTable3Accent3': styleIdentifier = Style_StyleIdentifierEnum.listTable3Accent3; break;
        case 'ListTable4Accent3': styleIdentifier = Style_StyleIdentifierEnum.listTable4Accent3; break;
        case 'ListTable5DarkAccent3': styleIdentifier = Style_StyleIdentifierEnum.listTable5DarkAccent3; break;
        case 'ListTable6ColorfulAccent3': styleIdentifier = Style_StyleIdentifierEnum.listTable6ColorfulAccent3; break;
        case 'ListTable7ColorfulAccent3': styleIdentifier = Style_StyleIdentifierEnum.listTable7ColorfulAccent3; break;
        case 'ListTable1LightAccent4': styleIdentifier = Style_StyleIdentifierEnum.listTable1LightAccent4; break;
        case 'ListTable2Accent4': styleIdentifier = Style_StyleIdentifierEnum.listTable2Accent4; break;
        case 'ListTable3Accent4': styleIdentifier = Style_StyleIdentifierEnum.listTable3Accent4; break;
        case 'ListTable4Accent4': styleIdentifier = Style_StyleIdentifierEnum.listTable4Accent4; break;
        case 'ListTable5DarkAccent4': styleIdentifier = Style_StyleIdentifierEnum.listTable5DarkAccent4; break;
        case 'ListTable6ColorfulAccent4': styleIdentifier = Style_StyleIdentifierEnum.listTable6ColorfulAccent4; break;
        case 'ListTable7ColorfulAccent4': styleIdentifier = Style_StyleIdentifierEnum.listTable7ColorfulAccent4; break;
        case 'ListTable1LightAccent5': styleIdentifier = Style_StyleIdentifierEnum.listTable1LightAccent5; break;
        case 'ListTable2Accent5': styleIdentifier = Style_StyleIdentifierEnum.listTable2Accent5; break;
        case 'ListTable3Accent5': styleIdentifier = Style_StyleIdentifierEnum.listTable3Accent5; break;
        case 'ListTable4Accent5': styleIdentifier = Style_StyleIdentifierEnum.listTable4Accent5; break;
        case 'ListTable5DarkAccent5': styleIdentifier = Style_StyleIdentifierEnum.listTable5DarkAccent5; break;
        case 'ListTable6ColorfulAccent5': styleIdentifier = Style_StyleIdentifierEnum.listTable6ColorfulAccent5; break;
        case 'ListTable7ColorfulAccent5': styleIdentifier = Style_StyleIdentifierEnum.listTable7ColorfulAccent5; break;
        case 'ListTable1LightAccent6': styleIdentifier = Style_StyleIdentifierEnum.listTable1LightAccent6; break;
        case 'ListTable2Accent6': styleIdentifier = Style_StyleIdentifierEnum.listTable2Accent6; break;
        case 'ListTable3Accent6': styleIdentifier = Style_StyleIdentifierEnum.listTable3Accent6; break;
        case 'ListTable4Accent6': styleIdentifier = Style_StyleIdentifierEnum.listTable4Accent6; break;
        case 'ListTable5DarkAccent6': styleIdentifier = Style_StyleIdentifierEnum.listTable5DarkAccent6; break;
        case 'ListTable6ColorfulAccent6': styleIdentifier = Style_StyleIdentifierEnum.listTable6ColorfulAccent6; break;
        case 'ListTable7ColorfulAccent6': styleIdentifier = Style_StyleIdentifierEnum.listTable7ColorfulAccent6; break;
        case 'SmartLink': styleIdentifier = Style_StyleIdentifierEnum.smartLink; break;
        case 'Mention': styleIdentifier = Style_StyleIdentifierEnum.mention; break;
        case 'SmartHyperlink': styleIdentifier = Style_StyleIdentifierEnum.smartHyperlink; break;
        case 'Hashtag': styleIdentifier = Style_StyleIdentifierEnum.hashtag; break;
        case 'UnresolvedMention': styleIdentifier = Style_StyleIdentifierEnum.unresolvedMention; break;
        case 'User': styleIdentifier = Style_StyleIdentifierEnum.user; break;
        case 'Nil': styleIdentifier = Style_StyleIdentifierEnum.nil; break;
        default: styleIdentifier = null; break;
      }
    } else {
      styleIdentifier = null;
    }

    if (json.containsKey('Name')) {
      name = json['Name'] as String;
    } else {
      name = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (font != null) {
      _result['Font'] = font!.serialize();
    }

    if (builtIn != null) {
      _result['BuiltIn'] = builtIn!;
    }

    if (nextParagraphStyleName != null) {
      _result['NextParagraphStyleName'] = nextParagraphStyleName!;
    }

    if (baseStyleName != null) {
      _result['BaseStyleName'] = baseStyleName!;
    }

    if (isQuickStyle != null) {
      _result['IsQuickStyle'] = isQuickStyle!;
    }

    if (linkedStyleName != null) {
      _result['LinkedStyleName'] = linkedStyleName!;
    }

    if (type != null) {
      switch (type!) {
        case Style_TypeEnum.paragraph: _result['Type'] = 'Paragraph'; break;
        case Style_TypeEnum.character: _result['Type'] = 'Character'; break;
        case Style_TypeEnum.table: _result['Type'] = 'Table'; break;
        case Style_TypeEnum.list: _result['Type'] = 'List'; break;
        default: break;
      }
    }

    if (isHeading != null) {
      _result['IsHeading'] = isHeading!;
    }

    if (aliases != null) {
      _result['Aliases'] = aliases!;
    }

    if (styleIdentifier != null) {
      switch (styleIdentifier!) {
        case Style_StyleIdentifierEnum.normal: _result['StyleIdentifier'] = 'Normal'; break;
        case Style_StyleIdentifierEnum.heading1: _result['StyleIdentifier'] = 'Heading1'; break;
        case Style_StyleIdentifierEnum.heading2: _result['StyleIdentifier'] = 'Heading2'; break;
        case Style_StyleIdentifierEnum.heading3: _result['StyleIdentifier'] = 'Heading3'; break;
        case Style_StyleIdentifierEnum.heading4: _result['StyleIdentifier'] = 'Heading4'; break;
        case Style_StyleIdentifierEnum.heading5: _result['StyleIdentifier'] = 'Heading5'; break;
        case Style_StyleIdentifierEnum.heading6: _result['StyleIdentifier'] = 'Heading6'; break;
        case Style_StyleIdentifierEnum.heading7: _result['StyleIdentifier'] = 'Heading7'; break;
        case Style_StyleIdentifierEnum.heading8: _result['StyleIdentifier'] = 'Heading8'; break;
        case Style_StyleIdentifierEnum.heading9: _result['StyleIdentifier'] = 'Heading9'; break;
        case Style_StyleIdentifierEnum.index1: _result['StyleIdentifier'] = 'Index1'; break;
        case Style_StyleIdentifierEnum.index2: _result['StyleIdentifier'] = 'Index2'; break;
        case Style_StyleIdentifierEnum.index3: _result['StyleIdentifier'] = 'Index3'; break;
        case Style_StyleIdentifierEnum.index4: _result['StyleIdentifier'] = 'Index4'; break;
        case Style_StyleIdentifierEnum.index5: _result['StyleIdentifier'] = 'Index5'; break;
        case Style_StyleIdentifierEnum.index6: _result['StyleIdentifier'] = 'Index6'; break;
        case Style_StyleIdentifierEnum.index7: _result['StyleIdentifier'] = 'Index7'; break;
        case Style_StyleIdentifierEnum.index8: _result['StyleIdentifier'] = 'Index8'; break;
        case Style_StyleIdentifierEnum.index9: _result['StyleIdentifier'] = 'Index9'; break;
        case Style_StyleIdentifierEnum.toc1: _result['StyleIdentifier'] = 'Toc1'; break;
        case Style_StyleIdentifierEnum.toc2: _result['StyleIdentifier'] = 'Toc2'; break;
        case Style_StyleIdentifierEnum.toc3: _result['StyleIdentifier'] = 'Toc3'; break;
        case Style_StyleIdentifierEnum.toc4: _result['StyleIdentifier'] = 'Toc4'; break;
        case Style_StyleIdentifierEnum.toc5: _result['StyleIdentifier'] = 'Toc5'; break;
        case Style_StyleIdentifierEnum.toc6: _result['StyleIdentifier'] = 'Toc6'; break;
        case Style_StyleIdentifierEnum.toc7: _result['StyleIdentifier'] = 'Toc7'; break;
        case Style_StyleIdentifierEnum.toc8: _result['StyleIdentifier'] = 'Toc8'; break;
        case Style_StyleIdentifierEnum.toc9: _result['StyleIdentifier'] = 'Toc9'; break;
        case Style_StyleIdentifierEnum.normalIndent: _result['StyleIdentifier'] = 'NormalIndent'; break;
        case Style_StyleIdentifierEnum.footnoteText: _result['StyleIdentifier'] = 'FootnoteText'; break;
        case Style_StyleIdentifierEnum.commentText: _result['StyleIdentifier'] = 'CommentText'; break;
        case Style_StyleIdentifierEnum.header: _result['StyleIdentifier'] = 'Header'; break;
        case Style_StyleIdentifierEnum.footer: _result['StyleIdentifier'] = 'Footer'; break;
        case Style_StyleIdentifierEnum.indexHeading: _result['StyleIdentifier'] = 'IndexHeading'; break;
        case Style_StyleIdentifierEnum.caption: _result['StyleIdentifier'] = 'Caption'; break;
        case Style_StyleIdentifierEnum.tableOfFigures: _result['StyleIdentifier'] = 'TableOfFigures'; break;
        case Style_StyleIdentifierEnum.envelopeAddress: _result['StyleIdentifier'] = 'EnvelopeAddress'; break;
        case Style_StyleIdentifierEnum.envelopeReturn: _result['StyleIdentifier'] = 'EnvelopeReturn'; break;
        case Style_StyleIdentifierEnum.footnoteReference: _result['StyleIdentifier'] = 'FootnoteReference'; break;
        case Style_StyleIdentifierEnum.commentReference: _result['StyleIdentifier'] = 'CommentReference'; break;
        case Style_StyleIdentifierEnum.lineNumber: _result['StyleIdentifier'] = 'LineNumber'; break;
        case Style_StyleIdentifierEnum.pageNumber: _result['StyleIdentifier'] = 'PageNumber'; break;
        case Style_StyleIdentifierEnum.endnoteReference: _result['StyleIdentifier'] = 'EndnoteReference'; break;
        case Style_StyleIdentifierEnum.endnoteText: _result['StyleIdentifier'] = 'EndnoteText'; break;
        case Style_StyleIdentifierEnum.tableOfAuthorities: _result['StyleIdentifier'] = 'TableOfAuthorities'; break;
        case Style_StyleIdentifierEnum.macro: _result['StyleIdentifier'] = 'Macro'; break;
        case Style_StyleIdentifierEnum.toaHeading: _result['StyleIdentifier'] = 'ToaHeading'; break;
        case Style_StyleIdentifierEnum.list: _result['StyleIdentifier'] = 'List'; break;
        case Style_StyleIdentifierEnum.listBullet: _result['StyleIdentifier'] = 'ListBullet'; break;
        case Style_StyleIdentifierEnum.listNumber: _result['StyleIdentifier'] = 'ListNumber'; break;
        case Style_StyleIdentifierEnum.list2: _result['StyleIdentifier'] = 'List2'; break;
        case Style_StyleIdentifierEnum.list3: _result['StyleIdentifier'] = 'List3'; break;
        case Style_StyleIdentifierEnum.list4: _result['StyleIdentifier'] = 'List4'; break;
        case Style_StyleIdentifierEnum.list5: _result['StyleIdentifier'] = 'List5'; break;
        case Style_StyleIdentifierEnum.listBullet2: _result['StyleIdentifier'] = 'ListBullet2'; break;
        case Style_StyleIdentifierEnum.listBullet3: _result['StyleIdentifier'] = 'ListBullet3'; break;
        case Style_StyleIdentifierEnum.listBullet4: _result['StyleIdentifier'] = 'ListBullet4'; break;
        case Style_StyleIdentifierEnum.listBullet5: _result['StyleIdentifier'] = 'ListBullet5'; break;
        case Style_StyleIdentifierEnum.listNumber2: _result['StyleIdentifier'] = 'ListNumber2'; break;
        case Style_StyleIdentifierEnum.listNumber3: _result['StyleIdentifier'] = 'ListNumber3'; break;
        case Style_StyleIdentifierEnum.listNumber4: _result['StyleIdentifier'] = 'ListNumber4'; break;
        case Style_StyleIdentifierEnum.listNumber5: _result['StyleIdentifier'] = 'ListNumber5'; break;
        case Style_StyleIdentifierEnum.title: _result['StyleIdentifier'] = 'Title'; break;
        case Style_StyleIdentifierEnum.closing: _result['StyleIdentifier'] = 'Closing'; break;
        case Style_StyleIdentifierEnum.signature: _result['StyleIdentifier'] = 'Signature'; break;
        case Style_StyleIdentifierEnum.defaultParagraphFont: _result['StyleIdentifier'] = 'DefaultParagraphFont'; break;
        case Style_StyleIdentifierEnum.bodyText: _result['StyleIdentifier'] = 'BodyText'; break;
        case Style_StyleIdentifierEnum.bodyTextInd: _result['StyleIdentifier'] = 'BodyTextInd'; break;
        case Style_StyleIdentifierEnum.listContinue: _result['StyleIdentifier'] = 'ListContinue'; break;
        case Style_StyleIdentifierEnum.listContinue2: _result['StyleIdentifier'] = 'ListContinue2'; break;
        case Style_StyleIdentifierEnum.listContinue3: _result['StyleIdentifier'] = 'ListContinue3'; break;
        case Style_StyleIdentifierEnum.listContinue4: _result['StyleIdentifier'] = 'ListContinue4'; break;
        case Style_StyleIdentifierEnum.listContinue5: _result['StyleIdentifier'] = 'ListContinue5'; break;
        case Style_StyleIdentifierEnum.messageHeader: _result['StyleIdentifier'] = 'MessageHeader'; break;
        case Style_StyleIdentifierEnum.subtitle: _result['StyleIdentifier'] = 'Subtitle'; break;
        case Style_StyleIdentifierEnum.salutation: _result['StyleIdentifier'] = 'Salutation'; break;
        case Style_StyleIdentifierEnum.date: _result['StyleIdentifier'] = 'Date'; break;
        case Style_StyleIdentifierEnum.bodyText1I: _result['StyleIdentifier'] = 'BodyText1I'; break;
        case Style_StyleIdentifierEnum.bodyText1I2: _result['StyleIdentifier'] = 'BodyText1I2'; break;
        case Style_StyleIdentifierEnum.noteHeading: _result['StyleIdentifier'] = 'NoteHeading'; break;
        case Style_StyleIdentifierEnum.bodyText2: _result['StyleIdentifier'] = 'BodyText2'; break;
        case Style_StyleIdentifierEnum.bodyText3: _result['StyleIdentifier'] = 'BodyText3'; break;
        case Style_StyleIdentifierEnum.bodyTextInd2: _result['StyleIdentifier'] = 'BodyTextInd2'; break;
        case Style_StyleIdentifierEnum.bodyTextInd3: _result['StyleIdentifier'] = 'BodyTextInd3'; break;
        case Style_StyleIdentifierEnum.blockText: _result['StyleIdentifier'] = 'BlockText'; break;
        case Style_StyleIdentifierEnum.hyperlink: _result['StyleIdentifier'] = 'Hyperlink'; break;
        case Style_StyleIdentifierEnum.followedHyperlink: _result['StyleIdentifier'] = 'FollowedHyperlink'; break;
        case Style_StyleIdentifierEnum.strong: _result['StyleIdentifier'] = 'Strong'; break;
        case Style_StyleIdentifierEnum.emphasis: _result['StyleIdentifier'] = 'Emphasis'; break;
        case Style_StyleIdentifierEnum.documentMap: _result['StyleIdentifier'] = 'DocumentMap'; break;
        case Style_StyleIdentifierEnum.plainText: _result['StyleIdentifier'] = 'PlainText'; break;
        case Style_StyleIdentifierEnum.emailSignature: _result['StyleIdentifier'] = 'EmailSignature'; break;
        case Style_StyleIdentifierEnum.htmlTopOfForm: _result['StyleIdentifier'] = 'HtmlTopOfForm'; break;
        case Style_StyleIdentifierEnum.htmlBottomOfForm: _result['StyleIdentifier'] = 'HtmlBottomOfForm'; break;
        case Style_StyleIdentifierEnum.normalWeb: _result['StyleIdentifier'] = 'NormalWeb'; break;
        case Style_StyleIdentifierEnum.htmlAcronym: _result['StyleIdentifier'] = 'HtmlAcronym'; break;
        case Style_StyleIdentifierEnum.htmlAddress: _result['StyleIdentifier'] = 'HtmlAddress'; break;
        case Style_StyleIdentifierEnum.htmlCite: _result['StyleIdentifier'] = 'HtmlCite'; break;
        case Style_StyleIdentifierEnum.htmlCode: _result['StyleIdentifier'] = 'HtmlCode'; break;
        case Style_StyleIdentifierEnum.htmlDefinition: _result['StyleIdentifier'] = 'HtmlDefinition'; break;
        case Style_StyleIdentifierEnum.htmlKeyboard: _result['StyleIdentifier'] = 'HtmlKeyboard'; break;
        case Style_StyleIdentifierEnum.htmlPreformatted: _result['StyleIdentifier'] = 'HtmlPreformatted'; break;
        case Style_StyleIdentifierEnum.htmlSample: _result['StyleIdentifier'] = 'HtmlSample'; break;
        case Style_StyleIdentifierEnum.htmlTypewriter: _result['StyleIdentifier'] = 'HtmlTypewriter'; break;
        case Style_StyleIdentifierEnum.htmlVariable: _result['StyleIdentifier'] = 'HtmlVariable'; break;
        case Style_StyleIdentifierEnum.tableNormal: _result['StyleIdentifier'] = 'TableNormal'; break;
        case Style_StyleIdentifierEnum.commentSubject: _result['StyleIdentifier'] = 'CommentSubject'; break;
        case Style_StyleIdentifierEnum.noList: _result['StyleIdentifier'] = 'NoList'; break;
        case Style_StyleIdentifierEnum.outlineList1: _result['StyleIdentifier'] = 'OutlineList1'; break;
        case Style_StyleIdentifierEnum.outlineList2: _result['StyleIdentifier'] = 'OutlineList2'; break;
        case Style_StyleIdentifierEnum.outlineList3: _result['StyleIdentifier'] = 'OutlineList3'; break;
        case Style_StyleIdentifierEnum.tableSimple1: _result['StyleIdentifier'] = 'TableSimple1'; break;
        case Style_StyleIdentifierEnum.tableSimple2: _result['StyleIdentifier'] = 'TableSimple2'; break;
        case Style_StyleIdentifierEnum.tableSimple3: _result['StyleIdentifier'] = 'TableSimple3'; break;
        case Style_StyleIdentifierEnum.tableClassic1: _result['StyleIdentifier'] = 'TableClassic1'; break;
        case Style_StyleIdentifierEnum.tableClassic2: _result['StyleIdentifier'] = 'TableClassic2'; break;
        case Style_StyleIdentifierEnum.tableClassic3: _result['StyleIdentifier'] = 'TableClassic3'; break;
        case Style_StyleIdentifierEnum.tableClassic4: _result['StyleIdentifier'] = 'TableClassic4'; break;
        case Style_StyleIdentifierEnum.tableColorful1: _result['StyleIdentifier'] = 'TableColorful1'; break;
        case Style_StyleIdentifierEnum.tableColorful2: _result['StyleIdentifier'] = 'TableColorful2'; break;
        case Style_StyleIdentifierEnum.tableColorful3: _result['StyleIdentifier'] = 'TableColorful3'; break;
        case Style_StyleIdentifierEnum.tableColumns1: _result['StyleIdentifier'] = 'TableColumns1'; break;
        case Style_StyleIdentifierEnum.tableColumns2: _result['StyleIdentifier'] = 'TableColumns2'; break;
        case Style_StyleIdentifierEnum.tableColumns3: _result['StyleIdentifier'] = 'TableColumns3'; break;
        case Style_StyleIdentifierEnum.tableColumns4: _result['StyleIdentifier'] = 'TableColumns4'; break;
        case Style_StyleIdentifierEnum.tableColumns5: _result['StyleIdentifier'] = 'TableColumns5'; break;
        case Style_StyleIdentifierEnum.tableGrid1: _result['StyleIdentifier'] = 'TableGrid1'; break;
        case Style_StyleIdentifierEnum.tableGrid2: _result['StyleIdentifier'] = 'TableGrid2'; break;
        case Style_StyleIdentifierEnum.tableGrid3: _result['StyleIdentifier'] = 'TableGrid3'; break;
        case Style_StyleIdentifierEnum.tableGrid4: _result['StyleIdentifier'] = 'TableGrid4'; break;
        case Style_StyleIdentifierEnum.tableGrid5: _result['StyleIdentifier'] = 'TableGrid5'; break;
        case Style_StyleIdentifierEnum.tableGrid6: _result['StyleIdentifier'] = 'TableGrid6'; break;
        case Style_StyleIdentifierEnum.tableGrid7: _result['StyleIdentifier'] = 'TableGrid7'; break;
        case Style_StyleIdentifierEnum.tableGrid8: _result['StyleIdentifier'] = 'TableGrid8'; break;
        case Style_StyleIdentifierEnum.tableList1: _result['StyleIdentifier'] = 'TableList1'; break;
        case Style_StyleIdentifierEnum.tableList2: _result['StyleIdentifier'] = 'TableList2'; break;
        case Style_StyleIdentifierEnum.tableList3: _result['StyleIdentifier'] = 'TableList3'; break;
        case Style_StyleIdentifierEnum.tableList4: _result['StyleIdentifier'] = 'TableList4'; break;
        case Style_StyleIdentifierEnum.tableList5: _result['StyleIdentifier'] = 'TableList5'; break;
        case Style_StyleIdentifierEnum.tableList6: _result['StyleIdentifier'] = 'TableList6'; break;
        case Style_StyleIdentifierEnum.tableList7: _result['StyleIdentifier'] = 'TableList7'; break;
        case Style_StyleIdentifierEnum.tableList8: _result['StyleIdentifier'] = 'TableList8'; break;
        case Style_StyleIdentifierEnum.table3DEffects1: _result['StyleIdentifier'] = 'Table3DEffects1'; break;
        case Style_StyleIdentifierEnum.table3DEffects2: _result['StyleIdentifier'] = 'Table3DEffects2'; break;
        case Style_StyleIdentifierEnum.table3DEffects3: _result['StyleIdentifier'] = 'Table3DEffects3'; break;
        case Style_StyleIdentifierEnum.tableContemporary: _result['StyleIdentifier'] = 'TableContemporary'; break;
        case Style_StyleIdentifierEnum.tableElegant: _result['StyleIdentifier'] = 'TableElegant'; break;
        case Style_StyleIdentifierEnum.tableProfessional: _result['StyleIdentifier'] = 'TableProfessional'; break;
        case Style_StyleIdentifierEnum.tableSubtle1: _result['StyleIdentifier'] = 'TableSubtle1'; break;
        case Style_StyleIdentifierEnum.tableSubtle2: _result['StyleIdentifier'] = 'TableSubtle2'; break;
        case Style_StyleIdentifierEnum.tableWeb1: _result['StyleIdentifier'] = 'TableWeb1'; break;
        case Style_StyleIdentifierEnum.tableWeb2: _result['StyleIdentifier'] = 'TableWeb2'; break;
        case Style_StyleIdentifierEnum.tableWeb3: _result['StyleIdentifier'] = 'TableWeb3'; break;
        case Style_StyleIdentifierEnum.balloonText: _result['StyleIdentifier'] = 'BalloonText'; break;
        case Style_StyleIdentifierEnum.tableGrid: _result['StyleIdentifier'] = 'TableGrid'; break;
        case Style_StyleIdentifierEnum.tableTheme: _result['StyleIdentifier'] = 'TableTheme'; break;
        case Style_StyleIdentifierEnum.placeholderText: _result['StyleIdentifier'] = 'PlaceholderText'; break;
        case Style_StyleIdentifierEnum.noSpacing: _result['StyleIdentifier'] = 'NoSpacing'; break;
        case Style_StyleIdentifierEnum.lightShading: _result['StyleIdentifier'] = 'LightShading'; break;
        case Style_StyleIdentifierEnum.lightList: _result['StyleIdentifier'] = 'LightList'; break;
        case Style_StyleIdentifierEnum.lightGrid: _result['StyleIdentifier'] = 'LightGrid'; break;
        case Style_StyleIdentifierEnum.mediumShading1: _result['StyleIdentifier'] = 'MediumShading1'; break;
        case Style_StyleIdentifierEnum.mediumShading2: _result['StyleIdentifier'] = 'MediumShading2'; break;
        case Style_StyleIdentifierEnum.mediumList1: _result['StyleIdentifier'] = 'MediumList1'; break;
        case Style_StyleIdentifierEnum.mediumList2: _result['StyleIdentifier'] = 'MediumList2'; break;
        case Style_StyleIdentifierEnum.mediumGrid1: _result['StyleIdentifier'] = 'MediumGrid1'; break;
        case Style_StyleIdentifierEnum.mediumGrid2: _result['StyleIdentifier'] = 'MediumGrid2'; break;
        case Style_StyleIdentifierEnum.mediumGrid3: _result['StyleIdentifier'] = 'MediumGrid3'; break;
        case Style_StyleIdentifierEnum.darkList: _result['StyleIdentifier'] = 'DarkList'; break;
        case Style_StyleIdentifierEnum.colorfulShading: _result['StyleIdentifier'] = 'ColorfulShading'; break;
        case Style_StyleIdentifierEnum.colorfulList: _result['StyleIdentifier'] = 'ColorfulList'; break;
        case Style_StyleIdentifierEnum.colorfulGrid: _result['StyleIdentifier'] = 'ColorfulGrid'; break;
        case Style_StyleIdentifierEnum.lightShadingAccent1: _result['StyleIdentifier'] = 'LightShadingAccent1'; break;
        case Style_StyleIdentifierEnum.lightListAccent1: _result['StyleIdentifier'] = 'LightListAccent1'; break;
        case Style_StyleIdentifierEnum.lightGridAccent1: _result['StyleIdentifier'] = 'LightGridAccent1'; break;
        case Style_StyleIdentifierEnum.mediumShading1Accent1: _result['StyleIdentifier'] = 'MediumShading1Accent1'; break;
        case Style_StyleIdentifierEnum.mediumShading2Accent1: _result['StyleIdentifier'] = 'MediumShading2Accent1'; break;
        case Style_StyleIdentifierEnum.mediumList1Accent1: _result['StyleIdentifier'] = 'MediumList1Accent1'; break;
        case Style_StyleIdentifierEnum.revision: _result['StyleIdentifier'] = 'Revision'; break;
        case Style_StyleIdentifierEnum.listParagraph: _result['StyleIdentifier'] = 'ListParagraph'; break;
        case Style_StyleIdentifierEnum.quote: _result['StyleIdentifier'] = 'Quote'; break;
        case Style_StyleIdentifierEnum.intenseQuote: _result['StyleIdentifier'] = 'IntenseQuote'; break;
        case Style_StyleIdentifierEnum.mediumList2Accent1: _result['StyleIdentifier'] = 'MediumList2Accent1'; break;
        case Style_StyleIdentifierEnum.mediumGrid1Accent1: _result['StyleIdentifier'] = 'MediumGrid1Accent1'; break;
        case Style_StyleIdentifierEnum.mediumGrid2Accent1: _result['StyleIdentifier'] = 'MediumGrid2Accent1'; break;
        case Style_StyleIdentifierEnum.mediumGrid3Accent1: _result['StyleIdentifier'] = 'MediumGrid3Accent1'; break;
        case Style_StyleIdentifierEnum.darkListAccent1: _result['StyleIdentifier'] = 'DarkListAccent1'; break;
        case Style_StyleIdentifierEnum.colorfulShadingAccent1: _result['StyleIdentifier'] = 'ColorfulShadingAccent1'; break;
        case Style_StyleIdentifierEnum.colorfulListAccent1: _result['StyleIdentifier'] = 'ColorfulListAccent1'; break;
        case Style_StyleIdentifierEnum.colorfulGridAccent1: _result['StyleIdentifier'] = 'ColorfulGridAccent1'; break;
        case Style_StyleIdentifierEnum.lightShadingAccent2: _result['StyleIdentifier'] = 'LightShadingAccent2'; break;
        case Style_StyleIdentifierEnum.lightListAccent2: _result['StyleIdentifier'] = 'LightListAccent2'; break;
        case Style_StyleIdentifierEnum.lightGridAccent2: _result['StyleIdentifier'] = 'LightGridAccent2'; break;
        case Style_StyleIdentifierEnum.mediumShading1Accent2: _result['StyleIdentifier'] = 'MediumShading1Accent2'; break;
        case Style_StyleIdentifierEnum.mediumShading2Accent2: _result['StyleIdentifier'] = 'MediumShading2Accent2'; break;
        case Style_StyleIdentifierEnum.mediumList1Accent2: _result['StyleIdentifier'] = 'MediumList1Accent2'; break;
        case Style_StyleIdentifierEnum.mediumList2Accent2: _result['StyleIdentifier'] = 'MediumList2Accent2'; break;
        case Style_StyleIdentifierEnum.mediumGrid1Accent2: _result['StyleIdentifier'] = 'MediumGrid1Accent2'; break;
        case Style_StyleIdentifierEnum.mediumGrid2Accent2: _result['StyleIdentifier'] = 'MediumGrid2Accent2'; break;
        case Style_StyleIdentifierEnum.mediumGrid3Accent2: _result['StyleIdentifier'] = 'MediumGrid3Accent2'; break;
        case Style_StyleIdentifierEnum.darkListAccent2: _result['StyleIdentifier'] = 'DarkListAccent2'; break;
        case Style_StyleIdentifierEnum.colorfulShadingAccent2: _result['StyleIdentifier'] = 'ColorfulShadingAccent2'; break;
        case Style_StyleIdentifierEnum.colorfulListAccent2: _result['StyleIdentifier'] = 'ColorfulListAccent2'; break;
        case Style_StyleIdentifierEnum.colorfulGridAccent2: _result['StyleIdentifier'] = 'ColorfulGridAccent2'; break;
        case Style_StyleIdentifierEnum.lightShadingAccent3: _result['StyleIdentifier'] = 'LightShadingAccent3'; break;
        case Style_StyleIdentifierEnum.lightListAccent3: _result['StyleIdentifier'] = 'LightListAccent3'; break;
        case Style_StyleIdentifierEnum.lightGridAccent3: _result['StyleIdentifier'] = 'LightGridAccent3'; break;
        case Style_StyleIdentifierEnum.mediumShading1Accent3: _result['StyleIdentifier'] = 'MediumShading1Accent3'; break;
        case Style_StyleIdentifierEnum.mediumShading2Accent3: _result['StyleIdentifier'] = 'MediumShading2Accent3'; break;
        case Style_StyleIdentifierEnum.mediumList1Accent3: _result['StyleIdentifier'] = 'MediumList1Accent3'; break;
        case Style_StyleIdentifierEnum.mediumList2Accent3: _result['StyleIdentifier'] = 'MediumList2Accent3'; break;
        case Style_StyleIdentifierEnum.mediumGrid1Accent3: _result['StyleIdentifier'] = 'MediumGrid1Accent3'; break;
        case Style_StyleIdentifierEnum.mediumGrid2Accent3: _result['StyleIdentifier'] = 'MediumGrid2Accent3'; break;
        case Style_StyleIdentifierEnum.mediumGrid3Accent3: _result['StyleIdentifier'] = 'MediumGrid3Accent3'; break;
        case Style_StyleIdentifierEnum.darkListAccent3: _result['StyleIdentifier'] = 'DarkListAccent3'; break;
        case Style_StyleIdentifierEnum.colorfulShadingAccent3: _result['StyleIdentifier'] = 'ColorfulShadingAccent3'; break;
        case Style_StyleIdentifierEnum.colorfulListAccent3: _result['StyleIdentifier'] = 'ColorfulListAccent3'; break;
        case Style_StyleIdentifierEnum.colorfulGridAccent3: _result['StyleIdentifier'] = 'ColorfulGridAccent3'; break;
        case Style_StyleIdentifierEnum.lightShadingAccent4: _result['StyleIdentifier'] = 'LightShadingAccent4'; break;
        case Style_StyleIdentifierEnum.lightListAccent4: _result['StyleIdentifier'] = 'LightListAccent4'; break;
        case Style_StyleIdentifierEnum.lightGridAccent4: _result['StyleIdentifier'] = 'LightGridAccent4'; break;
        case Style_StyleIdentifierEnum.mediumShading1Accent4: _result['StyleIdentifier'] = 'MediumShading1Accent4'; break;
        case Style_StyleIdentifierEnum.mediumShading2Accent4: _result['StyleIdentifier'] = 'MediumShading2Accent4'; break;
        case Style_StyleIdentifierEnum.mediumList1Accent4: _result['StyleIdentifier'] = 'MediumList1Accent4'; break;
        case Style_StyleIdentifierEnum.mediumList2Accent4: _result['StyleIdentifier'] = 'MediumList2Accent4'; break;
        case Style_StyleIdentifierEnum.mediumGrid1Accent4: _result['StyleIdentifier'] = 'MediumGrid1Accent4'; break;
        case Style_StyleIdentifierEnum.mediumGrid2Accent4: _result['StyleIdentifier'] = 'MediumGrid2Accent4'; break;
        case Style_StyleIdentifierEnum.mediumGrid3Accent4: _result['StyleIdentifier'] = 'MediumGrid3Accent4'; break;
        case Style_StyleIdentifierEnum.darkListAccent4: _result['StyleIdentifier'] = 'DarkListAccent4'; break;
        case Style_StyleIdentifierEnum.colorfulShadingAccent4: _result['StyleIdentifier'] = 'ColorfulShadingAccent4'; break;
        case Style_StyleIdentifierEnum.colorfulListAccent4: _result['StyleIdentifier'] = 'ColorfulListAccent4'; break;
        case Style_StyleIdentifierEnum.colorfulGridAccent4: _result['StyleIdentifier'] = 'ColorfulGridAccent4'; break;
        case Style_StyleIdentifierEnum.lightShadingAccent5: _result['StyleIdentifier'] = 'LightShadingAccent5'; break;
        case Style_StyleIdentifierEnum.lightListAccent5: _result['StyleIdentifier'] = 'LightListAccent5'; break;
        case Style_StyleIdentifierEnum.lightGridAccent5: _result['StyleIdentifier'] = 'LightGridAccent5'; break;
        case Style_StyleIdentifierEnum.mediumShading1Accent5: _result['StyleIdentifier'] = 'MediumShading1Accent5'; break;
        case Style_StyleIdentifierEnum.mediumShading2Accent5: _result['StyleIdentifier'] = 'MediumShading2Accent5'; break;
        case Style_StyleIdentifierEnum.mediumList1Accent5: _result['StyleIdentifier'] = 'MediumList1Accent5'; break;
        case Style_StyleIdentifierEnum.mediumList2Accent5: _result['StyleIdentifier'] = 'MediumList2Accent5'; break;
        case Style_StyleIdentifierEnum.mediumGrid1Accent5: _result['StyleIdentifier'] = 'MediumGrid1Accent5'; break;
        case Style_StyleIdentifierEnum.mediumGrid2Accent5: _result['StyleIdentifier'] = 'MediumGrid2Accent5'; break;
        case Style_StyleIdentifierEnum.mediumGrid3Accent5: _result['StyleIdentifier'] = 'MediumGrid3Accent5'; break;
        case Style_StyleIdentifierEnum.darkListAccent5: _result['StyleIdentifier'] = 'DarkListAccent5'; break;
        case Style_StyleIdentifierEnum.colorfulShadingAccent5: _result['StyleIdentifier'] = 'ColorfulShadingAccent5'; break;
        case Style_StyleIdentifierEnum.colorfulListAccent5: _result['StyleIdentifier'] = 'ColorfulListAccent5'; break;
        case Style_StyleIdentifierEnum.colorfulGridAccent5: _result['StyleIdentifier'] = 'ColorfulGridAccent5'; break;
        case Style_StyleIdentifierEnum.lightShadingAccent6: _result['StyleIdentifier'] = 'LightShadingAccent6'; break;
        case Style_StyleIdentifierEnum.lightListAccent6: _result['StyleIdentifier'] = 'LightListAccent6'; break;
        case Style_StyleIdentifierEnum.lightGridAccent6: _result['StyleIdentifier'] = 'LightGridAccent6'; break;
        case Style_StyleIdentifierEnum.mediumShading1Accent6: _result['StyleIdentifier'] = 'MediumShading1Accent6'; break;
        case Style_StyleIdentifierEnum.mediumShading2Accent6: _result['StyleIdentifier'] = 'MediumShading2Accent6'; break;
        case Style_StyleIdentifierEnum.mediumList1Accent6: _result['StyleIdentifier'] = 'MediumList1Accent6'; break;
        case Style_StyleIdentifierEnum.mediumList2Accent6: _result['StyleIdentifier'] = 'MediumList2Accent6'; break;
        case Style_StyleIdentifierEnum.mediumGrid1Accent6: _result['StyleIdentifier'] = 'MediumGrid1Accent6'; break;
        case Style_StyleIdentifierEnum.mediumGrid2Accent6: _result['StyleIdentifier'] = 'MediumGrid2Accent6'; break;
        case Style_StyleIdentifierEnum.mediumGrid3Accent6: _result['StyleIdentifier'] = 'MediumGrid3Accent6'; break;
        case Style_StyleIdentifierEnum.darkListAccent6: _result['StyleIdentifier'] = 'DarkListAccent6'; break;
        case Style_StyleIdentifierEnum.colorfulShadingAccent6: _result['StyleIdentifier'] = 'ColorfulShadingAccent6'; break;
        case Style_StyleIdentifierEnum.colorfulListAccent6: _result['StyleIdentifier'] = 'ColorfulListAccent6'; break;
        case Style_StyleIdentifierEnum.colorfulGridAccent6: _result['StyleIdentifier'] = 'ColorfulGridAccent6'; break;
        case Style_StyleIdentifierEnum.subtleEmphasis: _result['StyleIdentifier'] = 'SubtleEmphasis'; break;
        case Style_StyleIdentifierEnum.intenseEmphasis: _result['StyleIdentifier'] = 'IntenseEmphasis'; break;
        case Style_StyleIdentifierEnum.subtleReference: _result['StyleIdentifier'] = 'SubtleReference'; break;
        case Style_StyleIdentifierEnum.intenseReference: _result['StyleIdentifier'] = 'IntenseReference'; break;
        case Style_StyleIdentifierEnum.bookTitle: _result['StyleIdentifier'] = 'BookTitle'; break;
        case Style_StyleIdentifierEnum.bibliography: _result['StyleIdentifier'] = 'Bibliography'; break;
        case Style_StyleIdentifierEnum.tocHeading: _result['StyleIdentifier'] = 'TocHeading'; break;
        case Style_StyleIdentifierEnum.plainTable1: _result['StyleIdentifier'] = 'PlainTable1'; break;
        case Style_StyleIdentifierEnum.plainTable2: _result['StyleIdentifier'] = 'PlainTable2'; break;
        case Style_StyleIdentifierEnum.plainTable3: _result['StyleIdentifier'] = 'PlainTable3'; break;
        case Style_StyleIdentifierEnum.plainTable4: _result['StyleIdentifier'] = 'PlainTable4'; break;
        case Style_StyleIdentifierEnum.plainTable5: _result['StyleIdentifier'] = 'PlainTable5'; break;
        case Style_StyleIdentifierEnum.tableGridLight: _result['StyleIdentifier'] = 'TableGridLight'; break;
        case Style_StyleIdentifierEnum.gridTable1Light: _result['StyleIdentifier'] = 'GridTable1Light'; break;
        case Style_StyleIdentifierEnum.gridTable2: _result['StyleIdentifier'] = 'GridTable2'; break;
        case Style_StyleIdentifierEnum.gridTable3: _result['StyleIdentifier'] = 'GridTable3'; break;
        case Style_StyleIdentifierEnum.gridTable4: _result['StyleIdentifier'] = 'GridTable4'; break;
        case Style_StyleIdentifierEnum.gridTable5Dark: _result['StyleIdentifier'] = 'GridTable5Dark'; break;
        case Style_StyleIdentifierEnum.gridTable6Colorful: _result['StyleIdentifier'] = 'GridTable6Colorful'; break;
        case Style_StyleIdentifierEnum.gridTable7Colorful: _result['StyleIdentifier'] = 'GridTable7Colorful'; break;
        case Style_StyleIdentifierEnum.gridTable1LightAccent1: _result['StyleIdentifier'] = 'GridTable1LightAccent1'; break;
        case Style_StyleIdentifierEnum.gridTable2Accent1: _result['StyleIdentifier'] = 'GridTable2Accent1'; break;
        case Style_StyleIdentifierEnum.gridTable3Accent1: _result['StyleIdentifier'] = 'GridTable3Accent1'; break;
        case Style_StyleIdentifierEnum.gridTable4Accent1: _result['StyleIdentifier'] = 'GridTable4Accent1'; break;
        case Style_StyleIdentifierEnum.gridTable5DarkAccent1: _result['StyleIdentifier'] = 'GridTable5DarkAccent1'; break;
        case Style_StyleIdentifierEnum.gridTable6ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent1'; break;
        case Style_StyleIdentifierEnum.gridTable7ColorfulAccent1: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent1'; break;
        case Style_StyleIdentifierEnum.gridTable1LightAccent2: _result['StyleIdentifier'] = 'GridTable1LightAccent2'; break;
        case Style_StyleIdentifierEnum.gridTable2Accent2: _result['StyleIdentifier'] = 'GridTable2Accent2'; break;
        case Style_StyleIdentifierEnum.gridTable3Accent2: _result['StyleIdentifier'] = 'GridTable3Accent2'; break;
        case Style_StyleIdentifierEnum.gridTable4Accent2: _result['StyleIdentifier'] = 'GridTable4Accent2'; break;
        case Style_StyleIdentifierEnum.gridTable5DarkAccent2: _result['StyleIdentifier'] = 'GridTable5DarkAccent2'; break;
        case Style_StyleIdentifierEnum.gridTable6ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent2'; break;
        case Style_StyleIdentifierEnum.gridTable7ColorfulAccent2: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent2'; break;
        case Style_StyleIdentifierEnum.gridTable1LightAccent3: _result['StyleIdentifier'] = 'GridTable1LightAccent3'; break;
        case Style_StyleIdentifierEnum.gridTable2Accent3: _result['StyleIdentifier'] = 'GridTable2Accent3'; break;
        case Style_StyleIdentifierEnum.gridTable3Accent3: _result['StyleIdentifier'] = 'GridTable3Accent3'; break;
        case Style_StyleIdentifierEnum.gridTable4Accent3: _result['StyleIdentifier'] = 'GridTable4Accent3'; break;
        case Style_StyleIdentifierEnum.gridTable5DarkAccent3: _result['StyleIdentifier'] = 'GridTable5DarkAccent3'; break;
        case Style_StyleIdentifierEnum.gridTable6ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent3'; break;
        case Style_StyleIdentifierEnum.gridTable7ColorfulAccent3: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent3'; break;
        case Style_StyleIdentifierEnum.gridTable1LightAccent4: _result['StyleIdentifier'] = 'GridTable1LightAccent4'; break;
        case Style_StyleIdentifierEnum.gridTable2Accent4: _result['StyleIdentifier'] = 'GridTable2Accent4'; break;
        case Style_StyleIdentifierEnum.gridTable3Accent4: _result['StyleIdentifier'] = 'GridTable3Accent4'; break;
        case Style_StyleIdentifierEnum.gridTable4Accent4: _result['StyleIdentifier'] = 'GridTable4Accent4'; break;
        case Style_StyleIdentifierEnum.gridTable5DarkAccent4: _result['StyleIdentifier'] = 'GridTable5DarkAccent4'; break;
        case Style_StyleIdentifierEnum.gridTable6ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent4'; break;
        case Style_StyleIdentifierEnum.gridTable7ColorfulAccent4: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent4'; break;
        case Style_StyleIdentifierEnum.gridTable1LightAccent5: _result['StyleIdentifier'] = 'GridTable1LightAccent5'; break;
        case Style_StyleIdentifierEnum.gridTable2Accent5: _result['StyleIdentifier'] = 'GridTable2Accent5'; break;
        case Style_StyleIdentifierEnum.gridTable3Accent5: _result['StyleIdentifier'] = 'GridTable3Accent5'; break;
        case Style_StyleIdentifierEnum.gridTable4Accent5: _result['StyleIdentifier'] = 'GridTable4Accent5'; break;
        case Style_StyleIdentifierEnum.gridTable5DarkAccent5: _result['StyleIdentifier'] = 'GridTable5DarkAccent5'; break;
        case Style_StyleIdentifierEnum.gridTable6ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent5'; break;
        case Style_StyleIdentifierEnum.gridTable7ColorfulAccent5: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent5'; break;
        case Style_StyleIdentifierEnum.gridTable1LightAccent6: _result['StyleIdentifier'] = 'GridTable1LightAccent6'; break;
        case Style_StyleIdentifierEnum.gridTable2Accent6: _result['StyleIdentifier'] = 'GridTable2Accent6'; break;
        case Style_StyleIdentifierEnum.gridTable3Accent6: _result['StyleIdentifier'] = 'GridTable3Accent6'; break;
        case Style_StyleIdentifierEnum.gridTable4Accent6: _result['StyleIdentifier'] = 'GridTable4Accent6'; break;
        case Style_StyleIdentifierEnum.gridTable5DarkAccent6: _result['StyleIdentifier'] = 'GridTable5DarkAccent6'; break;
        case Style_StyleIdentifierEnum.gridTable6ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable6ColorfulAccent6'; break;
        case Style_StyleIdentifierEnum.gridTable7ColorfulAccent6: _result['StyleIdentifier'] = 'GridTable7ColorfulAccent6'; break;
        case Style_StyleIdentifierEnum.listTable1Light: _result['StyleIdentifier'] = 'ListTable1Light'; break;
        case Style_StyleIdentifierEnum.listTable2: _result['StyleIdentifier'] = 'ListTable2'; break;
        case Style_StyleIdentifierEnum.listTable3: _result['StyleIdentifier'] = 'ListTable3'; break;
        case Style_StyleIdentifierEnum.listTable4: _result['StyleIdentifier'] = 'ListTable4'; break;
        case Style_StyleIdentifierEnum.listTable5Dark: _result['StyleIdentifier'] = 'ListTable5Dark'; break;
        case Style_StyleIdentifierEnum.listTable6Colorful: _result['StyleIdentifier'] = 'ListTable6Colorful'; break;
        case Style_StyleIdentifierEnum.listTable7Colorful: _result['StyleIdentifier'] = 'ListTable7Colorful'; break;
        case Style_StyleIdentifierEnum.listTable1LightAccent1: _result['StyleIdentifier'] = 'ListTable1LightAccent1'; break;
        case Style_StyleIdentifierEnum.listTable2Accent1: _result['StyleIdentifier'] = 'ListTable2Accent1'; break;
        case Style_StyleIdentifierEnum.listTable3Accent1: _result['StyleIdentifier'] = 'ListTable3Accent1'; break;
        case Style_StyleIdentifierEnum.listTable4Accent1: _result['StyleIdentifier'] = 'ListTable4Accent1'; break;
        case Style_StyleIdentifierEnum.listTable5DarkAccent1: _result['StyleIdentifier'] = 'ListTable5DarkAccent1'; break;
        case Style_StyleIdentifierEnum.listTable6ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent1'; break;
        case Style_StyleIdentifierEnum.listTable7ColorfulAccent1: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent1'; break;
        case Style_StyleIdentifierEnum.listTable1LightAccent2: _result['StyleIdentifier'] = 'ListTable1LightAccent2'; break;
        case Style_StyleIdentifierEnum.listTable2Accent2: _result['StyleIdentifier'] = 'ListTable2Accent2'; break;
        case Style_StyleIdentifierEnum.listTable3Accent2: _result['StyleIdentifier'] = 'ListTable3Accent2'; break;
        case Style_StyleIdentifierEnum.listTable4Accent2: _result['StyleIdentifier'] = 'ListTable4Accent2'; break;
        case Style_StyleIdentifierEnum.listTable5DarkAccent2: _result['StyleIdentifier'] = 'ListTable5DarkAccent2'; break;
        case Style_StyleIdentifierEnum.listTable6ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent2'; break;
        case Style_StyleIdentifierEnum.listTable7ColorfulAccent2: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent2'; break;
        case Style_StyleIdentifierEnum.listTable1LightAccent3: _result['StyleIdentifier'] = 'ListTable1LightAccent3'; break;
        case Style_StyleIdentifierEnum.listTable2Accent3: _result['StyleIdentifier'] = 'ListTable2Accent3'; break;
        case Style_StyleIdentifierEnum.listTable3Accent3: _result['StyleIdentifier'] = 'ListTable3Accent3'; break;
        case Style_StyleIdentifierEnum.listTable4Accent3: _result['StyleIdentifier'] = 'ListTable4Accent3'; break;
        case Style_StyleIdentifierEnum.listTable5DarkAccent3: _result['StyleIdentifier'] = 'ListTable5DarkAccent3'; break;
        case Style_StyleIdentifierEnum.listTable6ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent3'; break;
        case Style_StyleIdentifierEnum.listTable7ColorfulAccent3: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent3'; break;
        case Style_StyleIdentifierEnum.listTable1LightAccent4: _result['StyleIdentifier'] = 'ListTable1LightAccent4'; break;
        case Style_StyleIdentifierEnum.listTable2Accent4: _result['StyleIdentifier'] = 'ListTable2Accent4'; break;
        case Style_StyleIdentifierEnum.listTable3Accent4: _result['StyleIdentifier'] = 'ListTable3Accent4'; break;
        case Style_StyleIdentifierEnum.listTable4Accent4: _result['StyleIdentifier'] = 'ListTable4Accent4'; break;
        case Style_StyleIdentifierEnum.listTable5DarkAccent4: _result['StyleIdentifier'] = 'ListTable5DarkAccent4'; break;
        case Style_StyleIdentifierEnum.listTable6ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent4'; break;
        case Style_StyleIdentifierEnum.listTable7ColorfulAccent4: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent4'; break;
        case Style_StyleIdentifierEnum.listTable1LightAccent5: _result['StyleIdentifier'] = 'ListTable1LightAccent5'; break;
        case Style_StyleIdentifierEnum.listTable2Accent5: _result['StyleIdentifier'] = 'ListTable2Accent5'; break;
        case Style_StyleIdentifierEnum.listTable3Accent5: _result['StyleIdentifier'] = 'ListTable3Accent5'; break;
        case Style_StyleIdentifierEnum.listTable4Accent5: _result['StyleIdentifier'] = 'ListTable4Accent5'; break;
        case Style_StyleIdentifierEnum.listTable5DarkAccent5: _result['StyleIdentifier'] = 'ListTable5DarkAccent5'; break;
        case Style_StyleIdentifierEnum.listTable6ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent5'; break;
        case Style_StyleIdentifierEnum.listTable7ColorfulAccent5: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent5'; break;
        case Style_StyleIdentifierEnum.listTable1LightAccent6: _result['StyleIdentifier'] = 'ListTable1LightAccent6'; break;
        case Style_StyleIdentifierEnum.listTable2Accent6: _result['StyleIdentifier'] = 'ListTable2Accent6'; break;
        case Style_StyleIdentifierEnum.listTable3Accent6: _result['StyleIdentifier'] = 'ListTable3Accent6'; break;
        case Style_StyleIdentifierEnum.listTable4Accent6: _result['StyleIdentifier'] = 'ListTable4Accent6'; break;
        case Style_StyleIdentifierEnum.listTable5DarkAccent6: _result['StyleIdentifier'] = 'ListTable5DarkAccent6'; break;
        case Style_StyleIdentifierEnum.listTable6ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable6ColorfulAccent6'; break;
        case Style_StyleIdentifierEnum.listTable7ColorfulAccent6: _result['StyleIdentifier'] = 'ListTable7ColorfulAccent6'; break;
        case Style_StyleIdentifierEnum.smartLink: _result['StyleIdentifier'] = 'SmartLink'; break;
        case Style_StyleIdentifierEnum.mention: _result['StyleIdentifier'] = 'Mention'; break;
        case Style_StyleIdentifierEnum.smartHyperlink: _result['StyleIdentifier'] = 'SmartHyperlink'; break;
        case Style_StyleIdentifierEnum.hashtag: _result['StyleIdentifier'] = 'Hashtag'; break;
        case Style_StyleIdentifierEnum.unresolvedMention: _result['StyleIdentifier'] = 'UnresolvedMention'; break;
        case Style_StyleIdentifierEnum.user: _result['StyleIdentifier'] = 'User'; break;
        case Style_StyleIdentifierEnum.nil: _result['StyleIdentifier'] = 'Nil'; break;
        default: break;
      }
    }

    if (name != null) {
      _result['Name'] = name!;
    }
    return _result;
  }

  @override
  void getFilesContent(List<FileReference> resultFilesContent) {
  }

  @override
  void validate() {
    super.validate();
    if (builtIn == null)
    {
        throw new ApiException(400, 'Property BuiltIn in Style is required.');
    }
    if (isQuickStyle == null)
    {
        throw new ApiException(400, 'Property IsQuickStyle in Style is required.');
    }
    if (type == null)
    {
        throw new ApiException(400, 'Property Type in Style is required.');
    }
    if (isHeading == null)
    {
        throw new ApiException(400, 'Property IsHeading in Style is required.');
    }
    if (styleIdentifier == null)
    {
        throw new ApiException(400, 'Property StyleIdentifier in Style is required.');
    }

    font?.validate();











  }
}

/// Gets or sets the style type (paragraph or character).
enum Style_TypeEnum
{ 
  paragraph,
  character,
  table,
  list
}

/// Gets or sets the locale independent style identifier for a built-in style.
/// For user defined (custom) styles, this property returns Aspose.Words.StyleIdentifier.User.
/// Aspose.Words.Style.Name.
enum Style_StyleIdentifierEnum
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

