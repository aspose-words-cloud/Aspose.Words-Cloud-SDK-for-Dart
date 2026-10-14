/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="page_setup.dart">
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

/// Represents the page setup properties of a section.
/// PageSetup object contains all the page setup attributes of a section (left margin, bottom margin, paper size, and so on) as properties.
class PageSetup extends LinkElement {
  /// Gets or sets a value indicating whether this section contains bidirectional (complex scripts) text.
  /// When true, the columns in this section are laid out from right to left.
  bool? _bidi;

  bool? get bidi => _bidi;
  set bidi(bool? val) => _bidi = val;


  /// Gets or sets a value indicating whether the page border is positioned relative to intersecting texts and objects.
  bool? _borderAlwaysInFront;

  bool? get borderAlwaysInFront => _borderAlwaysInFront;
  set borderAlwaysInFront(bool? val) => _borderAlwaysInFront = val;


  /// Gets or sets the option that controls which pages the page border is printed on.
  PageSetup_BorderAppliesToEnum? _borderAppliesTo;

  PageSetup_BorderAppliesToEnum? get borderAppliesTo => _borderAppliesTo;
  set borderAppliesTo(PageSetup_BorderAppliesToEnum? val) => _borderAppliesTo = val;


  /// Gets or sets the value, that indicates whether the specified page border is measured from the edge of the page or from the text it surrounds.
  PageSetup_BorderDistanceFromEnum? _borderDistanceFrom;

  PageSetup_BorderDistanceFromEnum? get borderDistanceFrom => _borderDistanceFrom;
  set borderDistanceFrom(PageSetup_BorderDistanceFromEnum? val) => _borderDistanceFrom = val;


  /// Gets or sets the distance (in points) between the bottom edge of the page and the bottom boundary of the body text.
  double? _bottomMargin;

  double? get bottomMargin => _bottomMargin;
  set bottomMargin(double? val) => _bottomMargin = val;


  /// Gets or sets a value indicating whether a different header or footer is used on the first page.
  bool? _differentFirstPageHeaderFooter;

  bool? get differentFirstPageHeaderFooter => _differentFirstPageHeaderFooter;
  set differentFirstPageHeaderFooter(bool? val) => _differentFirstPageHeaderFooter = val;


  /// Gets or sets the paper tray (bin) to use for the first page of a section.
  /// The value is implementation (printer) specific.
  int? _firstPageTray;

  int? get firstPageTray => _firstPageTray;
  set firstPageTray(int? val) => _firstPageTray = val;


  /// Gets or sets the distance (in points) between the footer and the bottom of the page.
  double? _footerDistance;

  double? get footerDistance => _footerDistance;
  set footerDistance(double? val) => _footerDistance = val;


  /// Gets or sets the amount of extra space added to the margin for document binding.
  double? _gutter;

  double? get gutter => _gutter;
  set gutter(double? val) => _gutter = val;


  /// Gets or sets the distance (in points) between the header and the top of the page.
  double? _headerDistance;

  double? get headerDistance => _headerDistance;
  set headerDistance(double? val) => _headerDistance = val;


  /// Gets or sets the distance (in points) between the left edge of the page and the left boundary of the body text.
  double? _leftMargin;

  double? get leftMargin => _leftMargin;
  set leftMargin(double? val) => _leftMargin = val;


  /// Gets or sets the numeric increment for line numbers.
  int? _lineNumberCountBy;

  int? get lineNumberCountBy => _lineNumberCountBy;
  set lineNumberCountBy(int? val) => _lineNumberCountBy = val;


  /// Gets or sets the distance between the right edge of line numbers and the left edge of the document.
  /// Set this property to zero for automatic distance between the line numbers and text of the document.
  double? _lineNumberDistanceFromText;

  double? get lineNumberDistanceFromText => _lineNumberDistanceFromText;
  set lineNumberDistanceFromText(double? val) => _lineNumberDistanceFromText = val;


  /// Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new page or section or runs continuously.
  PageSetup_LineNumberRestartModeEnum? _lineNumberRestartMode;

  PageSetup_LineNumberRestartModeEnum? get lineNumberRestartMode => _lineNumberRestartMode;
  set lineNumberRestartMode(PageSetup_LineNumberRestartModeEnum? val) => _lineNumberRestartMode = val;


  /// Gets or sets the starting line number.
  int? _lineStartingNumber;

  int? get lineStartingNumber => _lineStartingNumber;
  set lineStartingNumber(int? val) => _lineStartingNumber = val;


  /// Gets or sets the orientation of the page.
  /// Changing Orientation swaps PageWidth and PageHeight.
  PageSetup_OrientationEnum? _orientation;

  PageSetup_OrientationEnum? get orientation => _orientation;
  set orientation(PageSetup_OrientationEnum? val) => _orientation = val;


  /// Gets or sets the paper tray (bin) to be used for all but the first page of a section.
  /// The value is implementation (printer) specific.
  int? _otherPagesTray;

  int? get otherPagesTray => _otherPagesTray;
  set otherPagesTray(int? val) => _otherPagesTray = val;


  /// Gets or sets the height of the page in points.
  double? _pageHeight;

  double? get pageHeight => _pageHeight;
  set pageHeight(double? val) => _pageHeight = val;


  /// Gets or sets the page number format.
  PageSetup_PageNumberStyleEnum? _pageNumberStyle;

  PageSetup_PageNumberStyleEnum? get pageNumberStyle => _pageNumberStyle;
  set pageNumberStyle(PageSetup_PageNumberStyleEnum? val) => _pageNumberStyle = val;


  /// Gets or sets the starting page number of the section.
  /// The RestartPageNumbering property, if set to false, will override the PageStartingNumber property so that page numbering can continue from the previous section.
  int? _pageStartingNumber;

  int? get pageStartingNumber => _pageStartingNumber;
  set pageStartingNumber(int? val) => _pageStartingNumber = val;


  /// Gets or sets the width of the page in points.
  double? _pageWidth;

  double? get pageWidth => _pageWidth;
  set pageWidth(double? val) => _pageWidth = val;


  /// Gets or sets the paper size.
  /// Setting this property updates PageWidth and PageHeight values. Setting this value to Custom does not change existing values.
  PageSetup_PaperSizeEnum? _paperSize;

  PageSetup_PaperSizeEnum? get paperSize => _paperSize;
  set paperSize(PageSetup_PaperSizeEnum? val) => _paperSize = val;


  /// Gets or sets a value indicating whether page numbering restarts at the beginning of the section.
  /// If set to false, the RestartPageNumbering property will override the PageStartingNumber property so that page numbering can continue from the previous section.
  bool? _restartPageNumbering;

  bool? get restartPageNumbering => _restartPageNumbering;
  set restartPageNumbering(bool? val) => _restartPageNumbering = val;


  /// Gets or sets the distance (in points) between the right edge of the page and the right boundary of the body text.
  double? _rightMargin;

  double? get rightMargin => _rightMargin;
  set rightMargin(double? val) => _rightMargin = val;


  /// Gets or sets a value indicating whether Microsoft Word uses gutters for the section based on a right-to-left language or a left-to-right language.
  bool? _rtlGutter;

  bool? get rtlGutter => _rtlGutter;
  set rtlGutter(bool? val) => _rtlGutter = val;


  /// Gets or sets the type of section break for the specified object.
  PageSetup_SectionStartEnum? _sectionStart;

  PageSetup_SectionStartEnum? get sectionStart => _sectionStart;
  set sectionStart(PageSetup_SectionStartEnum? val) => _sectionStart = val;


  /// Gets or sets a value indicating whether endnotes are printed at the end of the next section that doesn't suppress endnotes. Suppressed endnotes are printed before the endnotes in that section.
  bool? _suppressEndnotes;

  bool? get suppressEndnotes => _suppressEndnotes;
  set suppressEndnotes(bool? val) => _suppressEndnotes = val;


  /// Gets or sets the distance (in points) between the top edge of the page and the top boundary of the body text.
  double? _topMargin;

  double? get topMargin => _topMargin;
  set topMargin(double? val) => _topMargin = val;


  /// Gets or sets the vertical alignment of text on each page in the document.or section.
  PageSetup_VerticalAlignmentEnum? _verticalAlignment;

  PageSetup_VerticalAlignmentEnum? get verticalAlignment => _verticalAlignment;
  set verticalAlignment(PageSetup_VerticalAlignmentEnum? val) => _verticalAlignment = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize PageSetup data model.');
    }

    super.deserialize(json);
    if (json.containsKey('Link')) {
      link = ModelBase.createInstance< WordsApiLink >(json['Link'] as Map<String, dynamic>);
    } else {
      link = null;
    }

    if (json.containsKey('Bidi')) {
      bidi = json['Bidi'] as bool;
    } else {
      bidi = null;
    }

    if (json.containsKey('BorderAlwaysInFront')) {
      borderAlwaysInFront = json['BorderAlwaysInFront'] as bool;
    } else {
      borderAlwaysInFront = null;
    }

    if (json.containsKey('BorderAppliesTo')) {
      switch (json['BorderAppliesTo'] as String) {
        case 'AllPages': borderAppliesTo = PageSetup_BorderAppliesToEnum.allPages; break;
        case 'FirstPage': borderAppliesTo = PageSetup_BorderAppliesToEnum.firstPage; break;
        case 'OtherPages': borderAppliesTo = PageSetup_BorderAppliesToEnum.otherPages; break;
        default: borderAppliesTo = null; break;
      }
    } else {
      borderAppliesTo = null;
    }

    if (json.containsKey('BorderDistanceFrom')) {
      switch (json['BorderDistanceFrom'] as String) {
        case 'Text': borderDistanceFrom = PageSetup_BorderDistanceFromEnum.text; break;
        case 'PageEdge': borderDistanceFrom = PageSetup_BorderDistanceFromEnum.pageEdge; break;
        default: borderDistanceFrom = null; break;
      }
    } else {
      borderDistanceFrom = null;
    }

    if (json.containsKey('BottomMargin')) {
      bottomMargin = json['BottomMargin'] as double;
    } else {
      bottomMargin = null;
    }

    if (json.containsKey('DifferentFirstPageHeaderFooter')) {
      differentFirstPageHeaderFooter = json['DifferentFirstPageHeaderFooter'] as bool;
    } else {
      differentFirstPageHeaderFooter = null;
    }

    if (json.containsKey('FirstPageTray')) {
      firstPageTray = json['FirstPageTray'] as int;
    } else {
      firstPageTray = null;
    }

    if (json.containsKey('FooterDistance')) {
      footerDistance = json['FooterDistance'] as double;
    } else {
      footerDistance = null;
    }

    if (json.containsKey('Gutter')) {
      gutter = json['Gutter'] as double;
    } else {
      gutter = null;
    }

    if (json.containsKey('HeaderDistance')) {
      headerDistance = json['HeaderDistance'] as double;
    } else {
      headerDistance = null;
    }

    if (json.containsKey('LeftMargin')) {
      leftMargin = json['LeftMargin'] as double;
    } else {
      leftMargin = null;
    }

    if (json.containsKey('LineNumberCountBy')) {
      lineNumberCountBy = json['LineNumberCountBy'] as int;
    } else {
      lineNumberCountBy = null;
    }

    if (json.containsKey('LineNumberDistanceFromText')) {
      lineNumberDistanceFromText = json['LineNumberDistanceFromText'] as double;
    } else {
      lineNumberDistanceFromText = null;
    }

    if (json.containsKey('LineNumberRestartMode')) {
      switch (json['LineNumberRestartMode'] as String) {
        case 'RestartPage': lineNumberRestartMode = PageSetup_LineNumberRestartModeEnum.restartPage; break;
        case 'RestartSection': lineNumberRestartMode = PageSetup_LineNumberRestartModeEnum.restartSection; break;
        case 'Continuous': lineNumberRestartMode = PageSetup_LineNumberRestartModeEnum.continuous; break;
        default: lineNumberRestartMode = null; break;
      }
    } else {
      lineNumberRestartMode = null;
    }

    if (json.containsKey('LineStartingNumber')) {
      lineStartingNumber = json['LineStartingNumber'] as int;
    } else {
      lineStartingNumber = null;
    }

    if (json.containsKey('Orientation')) {
      switch (json['Orientation'] as String) {
        case 'Portrait': orientation = PageSetup_OrientationEnum.portrait; break;
        case 'Landscape': orientation = PageSetup_OrientationEnum.landscape; break;
        default: orientation = null; break;
      }
    } else {
      orientation = null;
    }

    if (json.containsKey('OtherPagesTray')) {
      otherPagesTray = json['OtherPagesTray'] as int;
    } else {
      otherPagesTray = null;
    }

    if (json.containsKey('PageHeight')) {
      pageHeight = json['PageHeight'] as double;
    } else {
      pageHeight = null;
    }

    if (json.containsKey('PageNumberStyle')) {
      switch (json['PageNumberStyle'] as String) {
        case 'Arabic': pageNumberStyle = PageSetup_PageNumberStyleEnum.arabic; break;
        case 'UppercaseRoman': pageNumberStyle = PageSetup_PageNumberStyleEnum.uppercaseRoman; break;
        case 'LowercaseRoman': pageNumberStyle = PageSetup_PageNumberStyleEnum.lowercaseRoman; break;
        case 'UppercaseLetter': pageNumberStyle = PageSetup_PageNumberStyleEnum.uppercaseLetter; break;
        case 'LowercaseLetter': pageNumberStyle = PageSetup_PageNumberStyleEnum.lowercaseLetter; break;
        case 'Ordinal': pageNumberStyle = PageSetup_PageNumberStyleEnum.ordinal; break;
        case 'Number': pageNumberStyle = PageSetup_PageNumberStyleEnum.number; break;
        case 'OrdinalText': pageNumberStyle = PageSetup_PageNumberStyleEnum.ordinalText; break;
        case 'Hex': pageNumberStyle = PageSetup_PageNumberStyleEnum.hex; break;
        case 'ChicagoManual': pageNumberStyle = PageSetup_PageNumberStyleEnum.chicagoManual; break;
        case 'Kanji': pageNumberStyle = PageSetup_PageNumberStyleEnum.kanji; break;
        case 'KanjiDigit': pageNumberStyle = PageSetup_PageNumberStyleEnum.kanjiDigit; break;
        case 'AiueoHalfWidth': pageNumberStyle = PageSetup_PageNumberStyleEnum.aiueoHalfWidth; break;
        case 'IrohaHalfWidth': pageNumberStyle = PageSetup_PageNumberStyleEnum.irohaHalfWidth; break;
        case 'ArabicFullWidth': pageNumberStyle = PageSetup_PageNumberStyleEnum.arabicFullWidth; break;
        case 'ArabicHalfWidth': pageNumberStyle = PageSetup_PageNumberStyleEnum.arabicHalfWidth; break;
        case 'KanjiTraditional': pageNumberStyle = PageSetup_PageNumberStyleEnum.kanjiTraditional; break;
        case 'KanjiTraditional2': pageNumberStyle = PageSetup_PageNumberStyleEnum.kanjiTraditional2; break;
        case 'NumberInCircle': pageNumberStyle = PageSetup_PageNumberStyleEnum.numberInCircle; break;
        case 'DecimalFullWidth': pageNumberStyle = PageSetup_PageNumberStyleEnum.decimalFullWidth; break;
        case 'Aiueo': pageNumberStyle = PageSetup_PageNumberStyleEnum.aiueo; break;
        case 'Iroha': pageNumberStyle = PageSetup_PageNumberStyleEnum.iroha; break;
        case 'LeadingZero': pageNumberStyle = PageSetup_PageNumberStyleEnum.leadingZero; break;
        case 'Bullet': pageNumberStyle = PageSetup_PageNumberStyleEnum.bullet; break;
        case 'Ganada': pageNumberStyle = PageSetup_PageNumberStyleEnum.ganada; break;
        case 'Chosung': pageNumberStyle = PageSetup_PageNumberStyleEnum.chosung; break;
        case 'GB1': pageNumberStyle = PageSetup_PageNumberStyleEnum.gB1; break;
        case 'GB2': pageNumberStyle = PageSetup_PageNumberStyleEnum.gB2; break;
        case 'GB3': pageNumberStyle = PageSetup_PageNumberStyleEnum.gB3; break;
        case 'GB4': pageNumberStyle = PageSetup_PageNumberStyleEnum.gB4; break;
        case 'Zodiac1': pageNumberStyle = PageSetup_PageNumberStyleEnum.zodiac1; break;
        case 'Zodiac2': pageNumberStyle = PageSetup_PageNumberStyleEnum.zodiac2; break;
        case 'Zodiac3': pageNumberStyle = PageSetup_PageNumberStyleEnum.zodiac3; break;
        case 'TradChinNum1': pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum1; break;
        case 'TradChinNum2': pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum2; break;
        case 'TradChinNum3': pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum3; break;
        case 'TradChinNum4': pageNumberStyle = PageSetup_PageNumberStyleEnum.tradChinNum4; break;
        case 'SimpChinNum1': pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum1; break;
        case 'SimpChinNum2': pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum2; break;
        case 'SimpChinNum3': pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum3; break;
        case 'SimpChinNum4': pageNumberStyle = PageSetup_PageNumberStyleEnum.simpChinNum4; break;
        case 'HanjaRead': pageNumberStyle = PageSetup_PageNumberStyleEnum.hanjaRead; break;
        case 'HanjaReadDigit': pageNumberStyle = PageSetup_PageNumberStyleEnum.hanjaReadDigit; break;
        case 'Hangul': pageNumberStyle = PageSetup_PageNumberStyleEnum.hangul; break;
        case 'Hanja': pageNumberStyle = PageSetup_PageNumberStyleEnum.hanja; break;
        case 'Hebrew1': pageNumberStyle = PageSetup_PageNumberStyleEnum.hebrew1; break;
        case 'Arabic1': pageNumberStyle = PageSetup_PageNumberStyleEnum.arabic1; break;
        case 'Hebrew2': pageNumberStyle = PageSetup_PageNumberStyleEnum.hebrew2; break;
        case 'Arabic2': pageNumberStyle = PageSetup_PageNumberStyleEnum.arabic2; break;
        case 'HindiLetter1': pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiLetter1; break;
        case 'HindiLetter2': pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiLetter2; break;
        case 'HindiArabic': pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiArabic; break;
        case 'HindiCardinalText': pageNumberStyle = PageSetup_PageNumberStyleEnum.hindiCardinalText; break;
        case 'ThaiLetter': pageNumberStyle = PageSetup_PageNumberStyleEnum.thaiLetter; break;
        case 'ThaiArabic': pageNumberStyle = PageSetup_PageNumberStyleEnum.thaiArabic; break;
        case 'ThaiCardinalText': pageNumberStyle = PageSetup_PageNumberStyleEnum.thaiCardinalText; break;
        case 'VietCardinalText': pageNumberStyle = PageSetup_PageNumberStyleEnum.vietCardinalText; break;
        case 'NumberInDash': pageNumberStyle = PageSetup_PageNumberStyleEnum.numberInDash; break;
        case 'LowercaseRussian': pageNumberStyle = PageSetup_PageNumberStyleEnum.lowercaseRussian; break;
        case 'UppercaseRussian': pageNumberStyle = PageSetup_PageNumberStyleEnum.uppercaseRussian; break;
        case 'None': pageNumberStyle = PageSetup_PageNumberStyleEnum.none; break;
        case 'Custom': pageNumberStyle = PageSetup_PageNumberStyleEnum.custom; break;
        default: pageNumberStyle = null; break;
      }
    } else {
      pageNumberStyle = null;
    }

    if (json.containsKey('PageStartingNumber')) {
      pageStartingNumber = json['PageStartingNumber'] as int;
    } else {
      pageStartingNumber = null;
    }

    if (json.containsKey('PageWidth')) {
      pageWidth = json['PageWidth'] as double;
    } else {
      pageWidth = null;
    }

    if (json.containsKey('PaperSize')) {
      switch (json['PaperSize'] as String) {
        case 'A3': paperSize = PageSetup_PaperSizeEnum.a3; break;
        case 'A4': paperSize = PageSetup_PaperSizeEnum.a4; break;
        case 'A5': paperSize = PageSetup_PaperSizeEnum.a5; break;
        case 'B4': paperSize = PageSetup_PaperSizeEnum.b4; break;
        case 'B5': paperSize = PageSetup_PaperSizeEnum.b5; break;
        case 'Executive': paperSize = PageSetup_PaperSizeEnum.executive; break;
        case 'Folio': paperSize = PageSetup_PaperSizeEnum.folio; break;
        case 'Ledger': paperSize = PageSetup_PaperSizeEnum.ledger; break;
        case 'Legal': paperSize = PageSetup_PaperSizeEnum.legal; break;
        case 'Letter': paperSize = PageSetup_PaperSizeEnum.letter; break;
        case 'EnvelopeDL': paperSize = PageSetup_PaperSizeEnum.envelopeDL; break;
        case 'Quarto': paperSize = PageSetup_PaperSizeEnum.quarto; break;
        case 'Statement': paperSize = PageSetup_PaperSizeEnum.statement; break;
        case 'Tabloid': paperSize = PageSetup_PaperSizeEnum.tabloid; break;
        case 'Paper10x14': paperSize = PageSetup_PaperSizeEnum.paper10x14; break;
        case 'Paper11x17': paperSize = PageSetup_PaperSizeEnum.paper11x17; break;
        case 'Number10Envelope': paperSize = PageSetup_PaperSizeEnum.number10Envelope; break;
        case 'JisB4': paperSize = PageSetup_PaperSizeEnum.jisB4; break;
        case 'JisB5': paperSize = PageSetup_PaperSizeEnum.jisB5; break;
        case 'Custom': paperSize = PageSetup_PaperSizeEnum.custom; break;
        default: paperSize = null; break;
      }
    } else {
      paperSize = null;
    }

    if (json.containsKey('RestartPageNumbering')) {
      restartPageNumbering = json['RestartPageNumbering'] as bool;
    } else {
      restartPageNumbering = null;
    }

    if (json.containsKey('RightMargin')) {
      rightMargin = json['RightMargin'] as double;
    } else {
      rightMargin = null;
    }

    if (json.containsKey('RtlGutter')) {
      rtlGutter = json['RtlGutter'] as bool;
    } else {
      rtlGutter = null;
    }

    if (json.containsKey('SectionStart')) {
      switch (json['SectionStart'] as String) {
        case 'Continuous': sectionStart = PageSetup_SectionStartEnum.continuous; break;
        case 'NewColumn': sectionStart = PageSetup_SectionStartEnum.newColumn; break;
        case 'NewPage': sectionStart = PageSetup_SectionStartEnum.newPage; break;
        case 'EvenPage': sectionStart = PageSetup_SectionStartEnum.evenPage; break;
        case 'OddPage': sectionStart = PageSetup_SectionStartEnum.oddPage; break;
        default: sectionStart = null; break;
      }
    } else {
      sectionStart = null;
    }

    if (json.containsKey('SuppressEndnotes')) {
      suppressEndnotes = json['SuppressEndnotes'] as bool;
    } else {
      suppressEndnotes = null;
    }

    if (json.containsKey('TopMargin')) {
      topMargin = json['TopMargin'] as double;
    } else {
      topMargin = null;
    }

    if (json.containsKey('VerticalAlignment')) {
      switch (json['VerticalAlignment'] as String) {
        case 'Top': verticalAlignment = PageSetup_VerticalAlignmentEnum.top; break;
        case 'Center': verticalAlignment = PageSetup_VerticalAlignmentEnum.center; break;
        case 'Justify': verticalAlignment = PageSetup_VerticalAlignmentEnum.justify; break;
        case 'Bottom': verticalAlignment = PageSetup_VerticalAlignmentEnum.bottom; break;
        default: verticalAlignment = null; break;
      }
    } else {
      verticalAlignment = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
    if (bidi != null) {
      _result['Bidi'] = bidi!;
    }

    if (borderAlwaysInFront != null) {
      _result['BorderAlwaysInFront'] = borderAlwaysInFront!;
    }

    if (borderAppliesTo != null) {
      switch (borderAppliesTo!) {
        case PageSetup_BorderAppliesToEnum.allPages: _result['BorderAppliesTo'] = 'AllPages'; break;
        case PageSetup_BorderAppliesToEnum.firstPage: _result['BorderAppliesTo'] = 'FirstPage'; break;
        case PageSetup_BorderAppliesToEnum.otherPages: _result['BorderAppliesTo'] = 'OtherPages'; break;
        default: break;
      }
    }

    if (borderDistanceFrom != null) {
      switch (borderDistanceFrom!) {
        case PageSetup_BorderDistanceFromEnum.text: _result['BorderDistanceFrom'] = 'Text'; break;
        case PageSetup_BorderDistanceFromEnum.pageEdge: _result['BorderDistanceFrom'] = 'PageEdge'; break;
        default: break;
      }
    }

    if (bottomMargin != null) {
      _result['BottomMargin'] = bottomMargin!;
    }

    if (differentFirstPageHeaderFooter != null) {
      _result['DifferentFirstPageHeaderFooter'] = differentFirstPageHeaderFooter!;
    }

    if (firstPageTray != null) {
      _result['FirstPageTray'] = firstPageTray!;
    }

    if (footerDistance != null) {
      _result['FooterDistance'] = footerDistance!;
    }

    if (gutter != null) {
      _result['Gutter'] = gutter!;
    }

    if (headerDistance != null) {
      _result['HeaderDistance'] = headerDistance!;
    }

    if (leftMargin != null) {
      _result['LeftMargin'] = leftMargin!;
    }

    if (lineNumberCountBy != null) {
      _result['LineNumberCountBy'] = lineNumberCountBy!;
    }

    if (lineNumberDistanceFromText != null) {
      _result['LineNumberDistanceFromText'] = lineNumberDistanceFromText!;
    }

    if (lineNumberRestartMode != null) {
      switch (lineNumberRestartMode!) {
        case PageSetup_LineNumberRestartModeEnum.restartPage: _result['LineNumberRestartMode'] = 'RestartPage'; break;
        case PageSetup_LineNumberRestartModeEnum.restartSection: _result['LineNumberRestartMode'] = 'RestartSection'; break;
        case PageSetup_LineNumberRestartModeEnum.continuous: _result['LineNumberRestartMode'] = 'Continuous'; break;
        default: break;
      }
    }

    if (lineStartingNumber != null) {
      _result['LineStartingNumber'] = lineStartingNumber!;
    }

    if (orientation != null) {
      switch (orientation!) {
        case PageSetup_OrientationEnum.portrait: _result['Orientation'] = 'Portrait'; break;
        case PageSetup_OrientationEnum.landscape: _result['Orientation'] = 'Landscape'; break;
        default: break;
      }
    }

    if (otherPagesTray != null) {
      _result['OtherPagesTray'] = otherPagesTray!;
    }

    if (pageHeight != null) {
      _result['PageHeight'] = pageHeight!;
    }

    if (pageNumberStyle != null) {
      switch (pageNumberStyle!) {
        case PageSetup_PageNumberStyleEnum.arabic: _result['PageNumberStyle'] = 'Arabic'; break;
        case PageSetup_PageNumberStyleEnum.uppercaseRoman: _result['PageNumberStyle'] = 'UppercaseRoman'; break;
        case PageSetup_PageNumberStyleEnum.lowercaseRoman: _result['PageNumberStyle'] = 'LowercaseRoman'; break;
        case PageSetup_PageNumberStyleEnum.uppercaseLetter: _result['PageNumberStyle'] = 'UppercaseLetter'; break;
        case PageSetup_PageNumberStyleEnum.lowercaseLetter: _result['PageNumberStyle'] = 'LowercaseLetter'; break;
        case PageSetup_PageNumberStyleEnum.ordinal: _result['PageNumberStyle'] = 'Ordinal'; break;
        case PageSetup_PageNumberStyleEnum.number: _result['PageNumberStyle'] = 'Number'; break;
        case PageSetup_PageNumberStyleEnum.ordinalText: _result['PageNumberStyle'] = 'OrdinalText'; break;
        case PageSetup_PageNumberStyleEnum.hex: _result['PageNumberStyle'] = 'Hex'; break;
        case PageSetup_PageNumberStyleEnum.chicagoManual: _result['PageNumberStyle'] = 'ChicagoManual'; break;
        case PageSetup_PageNumberStyleEnum.kanji: _result['PageNumberStyle'] = 'Kanji'; break;
        case PageSetup_PageNumberStyleEnum.kanjiDigit: _result['PageNumberStyle'] = 'KanjiDigit'; break;
        case PageSetup_PageNumberStyleEnum.aiueoHalfWidth: _result['PageNumberStyle'] = 'AiueoHalfWidth'; break;
        case PageSetup_PageNumberStyleEnum.irohaHalfWidth: _result['PageNumberStyle'] = 'IrohaHalfWidth'; break;
        case PageSetup_PageNumberStyleEnum.arabicFullWidth: _result['PageNumberStyle'] = 'ArabicFullWidth'; break;
        case PageSetup_PageNumberStyleEnum.arabicHalfWidth: _result['PageNumberStyle'] = 'ArabicHalfWidth'; break;
        case PageSetup_PageNumberStyleEnum.kanjiTraditional: _result['PageNumberStyle'] = 'KanjiTraditional'; break;
        case PageSetup_PageNumberStyleEnum.kanjiTraditional2: _result['PageNumberStyle'] = 'KanjiTraditional2'; break;
        case PageSetup_PageNumberStyleEnum.numberInCircle: _result['PageNumberStyle'] = 'NumberInCircle'; break;
        case PageSetup_PageNumberStyleEnum.decimalFullWidth: _result['PageNumberStyle'] = 'DecimalFullWidth'; break;
        case PageSetup_PageNumberStyleEnum.aiueo: _result['PageNumberStyle'] = 'Aiueo'; break;
        case PageSetup_PageNumberStyleEnum.iroha: _result['PageNumberStyle'] = 'Iroha'; break;
        case PageSetup_PageNumberStyleEnum.leadingZero: _result['PageNumberStyle'] = 'LeadingZero'; break;
        case PageSetup_PageNumberStyleEnum.bullet: _result['PageNumberStyle'] = 'Bullet'; break;
        case PageSetup_PageNumberStyleEnum.ganada: _result['PageNumberStyle'] = 'Ganada'; break;
        case PageSetup_PageNumberStyleEnum.chosung: _result['PageNumberStyle'] = 'Chosung'; break;
        case PageSetup_PageNumberStyleEnum.gB1: _result['PageNumberStyle'] = 'GB1'; break;
        case PageSetup_PageNumberStyleEnum.gB2: _result['PageNumberStyle'] = 'GB2'; break;
        case PageSetup_PageNumberStyleEnum.gB3: _result['PageNumberStyle'] = 'GB3'; break;
        case PageSetup_PageNumberStyleEnum.gB4: _result['PageNumberStyle'] = 'GB4'; break;
        case PageSetup_PageNumberStyleEnum.zodiac1: _result['PageNumberStyle'] = 'Zodiac1'; break;
        case PageSetup_PageNumberStyleEnum.zodiac2: _result['PageNumberStyle'] = 'Zodiac2'; break;
        case PageSetup_PageNumberStyleEnum.zodiac3: _result['PageNumberStyle'] = 'Zodiac3'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum1: _result['PageNumberStyle'] = 'TradChinNum1'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum2: _result['PageNumberStyle'] = 'TradChinNum2'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum3: _result['PageNumberStyle'] = 'TradChinNum3'; break;
        case PageSetup_PageNumberStyleEnum.tradChinNum4: _result['PageNumberStyle'] = 'TradChinNum4'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum1: _result['PageNumberStyle'] = 'SimpChinNum1'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum2: _result['PageNumberStyle'] = 'SimpChinNum2'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum3: _result['PageNumberStyle'] = 'SimpChinNum3'; break;
        case PageSetup_PageNumberStyleEnum.simpChinNum4: _result['PageNumberStyle'] = 'SimpChinNum4'; break;
        case PageSetup_PageNumberStyleEnum.hanjaRead: _result['PageNumberStyle'] = 'HanjaRead'; break;
        case PageSetup_PageNumberStyleEnum.hanjaReadDigit: _result['PageNumberStyle'] = 'HanjaReadDigit'; break;
        case PageSetup_PageNumberStyleEnum.hangul: _result['PageNumberStyle'] = 'Hangul'; break;
        case PageSetup_PageNumberStyleEnum.hanja: _result['PageNumberStyle'] = 'Hanja'; break;
        case PageSetup_PageNumberStyleEnum.hebrew1: _result['PageNumberStyle'] = 'Hebrew1'; break;
        case PageSetup_PageNumberStyleEnum.arabic1: _result['PageNumberStyle'] = 'Arabic1'; break;
        case PageSetup_PageNumberStyleEnum.hebrew2: _result['PageNumberStyle'] = 'Hebrew2'; break;
        case PageSetup_PageNumberStyleEnum.arabic2: _result['PageNumberStyle'] = 'Arabic2'; break;
        case PageSetup_PageNumberStyleEnum.hindiLetter1: _result['PageNumberStyle'] = 'HindiLetter1'; break;
        case PageSetup_PageNumberStyleEnum.hindiLetter2: _result['PageNumberStyle'] = 'HindiLetter2'; break;
        case PageSetup_PageNumberStyleEnum.hindiArabic: _result['PageNumberStyle'] = 'HindiArabic'; break;
        case PageSetup_PageNumberStyleEnum.hindiCardinalText: _result['PageNumberStyle'] = 'HindiCardinalText'; break;
        case PageSetup_PageNumberStyleEnum.thaiLetter: _result['PageNumberStyle'] = 'ThaiLetter'; break;
        case PageSetup_PageNumberStyleEnum.thaiArabic: _result['PageNumberStyle'] = 'ThaiArabic'; break;
        case PageSetup_PageNumberStyleEnum.thaiCardinalText: _result['PageNumberStyle'] = 'ThaiCardinalText'; break;
        case PageSetup_PageNumberStyleEnum.vietCardinalText: _result['PageNumberStyle'] = 'VietCardinalText'; break;
        case PageSetup_PageNumberStyleEnum.numberInDash: _result['PageNumberStyle'] = 'NumberInDash'; break;
        case PageSetup_PageNumberStyleEnum.lowercaseRussian: _result['PageNumberStyle'] = 'LowercaseRussian'; break;
        case PageSetup_PageNumberStyleEnum.uppercaseRussian: _result['PageNumberStyle'] = 'UppercaseRussian'; break;
        case PageSetup_PageNumberStyleEnum.none: _result['PageNumberStyle'] = 'None'; break;
        case PageSetup_PageNumberStyleEnum.custom: _result['PageNumberStyle'] = 'Custom'; break;
        default: break;
      }
    }

    if (pageStartingNumber != null) {
      _result['PageStartingNumber'] = pageStartingNumber!;
    }

    if (pageWidth != null) {
      _result['PageWidth'] = pageWidth!;
    }

    if (paperSize != null) {
      switch (paperSize!) {
        case PageSetup_PaperSizeEnum.a3: _result['PaperSize'] = 'A3'; break;
        case PageSetup_PaperSizeEnum.a4: _result['PaperSize'] = 'A4'; break;
        case PageSetup_PaperSizeEnum.a5: _result['PaperSize'] = 'A5'; break;
        case PageSetup_PaperSizeEnum.b4: _result['PaperSize'] = 'B4'; break;
        case PageSetup_PaperSizeEnum.b5: _result['PaperSize'] = 'B5'; break;
        case PageSetup_PaperSizeEnum.executive: _result['PaperSize'] = 'Executive'; break;
        case PageSetup_PaperSizeEnum.folio: _result['PaperSize'] = 'Folio'; break;
        case PageSetup_PaperSizeEnum.ledger: _result['PaperSize'] = 'Ledger'; break;
        case PageSetup_PaperSizeEnum.legal: _result['PaperSize'] = 'Legal'; break;
        case PageSetup_PaperSizeEnum.letter: _result['PaperSize'] = 'Letter'; break;
        case PageSetup_PaperSizeEnum.envelopeDL: _result['PaperSize'] = 'EnvelopeDL'; break;
        case PageSetup_PaperSizeEnum.quarto: _result['PaperSize'] = 'Quarto'; break;
        case PageSetup_PaperSizeEnum.statement: _result['PaperSize'] = 'Statement'; break;
        case PageSetup_PaperSizeEnum.tabloid: _result['PaperSize'] = 'Tabloid'; break;
        case PageSetup_PaperSizeEnum.paper10x14: _result['PaperSize'] = 'Paper10x14'; break;
        case PageSetup_PaperSizeEnum.paper11x17: _result['PaperSize'] = 'Paper11x17'; break;
        case PageSetup_PaperSizeEnum.number10Envelope: _result['PaperSize'] = 'Number10Envelope'; break;
        case PageSetup_PaperSizeEnum.jisB4: _result['PaperSize'] = 'JisB4'; break;
        case PageSetup_PaperSizeEnum.jisB5: _result['PaperSize'] = 'JisB5'; break;
        case PageSetup_PaperSizeEnum.custom: _result['PaperSize'] = 'Custom'; break;
        default: break;
      }
    }

    if (restartPageNumbering != null) {
      _result['RestartPageNumbering'] = restartPageNumbering!;
    }

    if (rightMargin != null) {
      _result['RightMargin'] = rightMargin!;
    }

    if (rtlGutter != null) {
      _result['RtlGutter'] = rtlGutter!;
    }

    if (sectionStart != null) {
      switch (sectionStart!) {
        case PageSetup_SectionStartEnum.continuous: _result['SectionStart'] = 'Continuous'; break;
        case PageSetup_SectionStartEnum.newColumn: _result['SectionStart'] = 'NewColumn'; break;
        case PageSetup_SectionStartEnum.newPage: _result['SectionStart'] = 'NewPage'; break;
        case PageSetup_SectionStartEnum.evenPage: _result['SectionStart'] = 'EvenPage'; break;
        case PageSetup_SectionStartEnum.oddPage: _result['SectionStart'] = 'OddPage'; break;
        default: break;
      }
    }

    if (suppressEndnotes != null) {
      _result['SuppressEndnotes'] = suppressEndnotes!;
    }

    if (topMargin != null) {
      _result['TopMargin'] = topMargin!;
    }

    if (verticalAlignment != null) {
      switch (verticalAlignment!) {
        case PageSetup_VerticalAlignmentEnum.top: _result['VerticalAlignment'] = 'Top'; break;
        case PageSetup_VerticalAlignmentEnum.center: _result['VerticalAlignment'] = 'Center'; break;
        case PageSetup_VerticalAlignmentEnum.justify: _result['VerticalAlignment'] = 'Justify'; break;
        case PageSetup_VerticalAlignmentEnum.bottom: _result['VerticalAlignment'] = 'Bottom'; break;
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
  }
}

/// Gets or sets the option that controls which pages the page border is printed on.
enum PageSetup_BorderAppliesToEnum
{ 
  allPages,
  firstPage,
  otherPages
}

/// Gets or sets the value, that indicates whether the specified page border is measured from the edge of the page or from the text it surrounds.
enum PageSetup_BorderDistanceFromEnum
{ 
  text,
  pageEdge
}

/// Gets or sets the way line numbering runs  that is, whether it starts over at the beginning of a new page or section or runs continuously.
enum PageSetup_LineNumberRestartModeEnum
{ 
  restartPage,
  restartSection,
  continuous
}

/// Gets or sets the orientation of the page.
/// Changing Orientation swaps PageWidth and PageHeight.
enum PageSetup_OrientationEnum
{ 
  portrait,
  landscape
}

/// Gets or sets the page number format.
enum PageSetup_PageNumberStyleEnum
{ 
  arabic,
  uppercaseRoman,
  lowercaseRoman,
  uppercaseLetter,
  lowercaseLetter,
  ordinal,
  number,
  ordinalText,
  hex,
  chicagoManual,
  kanji,
  kanjiDigit,
  aiueoHalfWidth,
  irohaHalfWidth,
  arabicFullWidth,
  arabicHalfWidth,
  kanjiTraditional,
  kanjiTraditional2,
  numberInCircle,
  decimalFullWidth,
  aiueo,
  iroha,
  leadingZero,
  bullet,
  ganada,
  chosung,
  gB1,
  gB2,
  gB3,
  gB4,
  zodiac1,
  zodiac2,
  zodiac3,
  tradChinNum1,
  tradChinNum2,
  tradChinNum3,
  tradChinNum4,
  simpChinNum1,
  simpChinNum2,
  simpChinNum3,
  simpChinNum4,
  hanjaRead,
  hanjaReadDigit,
  hangul,
  hanja,
  hebrew1,
  arabic1,
  hebrew2,
  arabic2,
  hindiLetter1,
  hindiLetter2,
  hindiArabic,
  hindiCardinalText,
  thaiLetter,
  thaiArabic,
  thaiCardinalText,
  vietCardinalText,
  numberInDash,
  lowercaseRussian,
  uppercaseRussian,
  none,
  custom
}

/// Gets or sets the paper size.
/// Setting this property updates PageWidth and PageHeight values. Setting this value to Custom does not change existing values.
enum PageSetup_PaperSizeEnum
{ 
  a3,
  a4,
  a5,
  b4,
  b5,
  executive,
  folio,
  ledger,
  legal,
  letter,
  envelopeDL,
  quarto,
  statement,
  tabloid,
  paper10x14,
  paper11x17,
  number10Envelope,
  jisB4,
  jisB5,
  custom
}

/// Gets or sets the type of section break for the specified object.
enum PageSetup_SectionStartEnum
{ 
  continuous,
  newColumn,
  newPage,
  evenPage,
  oddPage
}

/// Gets or sets the vertical alignment of text on each page in the document.or section.
enum PageSetup_VerticalAlignmentEnum
{ 
  top,
  center,
  justify,
  bottom
}

