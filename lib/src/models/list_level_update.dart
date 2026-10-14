/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="list_level_update.dart">
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

/// Represents a document list levels.
class ListLevelUpdate implements ModelBase {
  /// Gets or sets the starting number for this list level.
  /// The default value is 1.
  int? _startAt;

  int? get startAt => _startAt;
  set startAt(int? val) => _startAt = val;


  /// Gets or sets the number style for this list level.
  ListLevelUpdate_NumberStyleEnum? _numberStyle;

  ListLevelUpdate_NumberStyleEnum? get numberStyle => _numberStyle;
  set numberStyle(ListLevelUpdate_NumberStyleEnum? val) => _numberStyle = val;


  /// Gets or sets the number format for the list level.
  /// Among normal text characters, the string can contain placeholder characters \\x0000 to \\x0008 representing the numbers from the corresponding list levels. For example, the string "\\x0000.\\x0001)" will generate a list label that looks something like "1.5)". The number "1" is the current number from the 1st list level, the number "5" is the current number from the 2nd list level. Null is not allowed, but an empty string meaning no number is valid.
  String? _numberFormat;

  String? get numberFormat => _numberFormat;
  set numberFormat(String? val) => _numberFormat = val;


  /// Gets or sets the justification of the actual number of the list item.
  /// The list label is justified relative to the Aspose.Words.Lists.ListLevel.NumberPosition
  /// property.
  ListLevelUpdate_AlignmentEnum? _alignment;

  ListLevelUpdate_AlignmentEnum? get alignment => _alignment;
  set alignment(ListLevelUpdate_AlignmentEnum? val) => _alignment = val;


  /// Gets or sets a value indicating whether the level turns all inherited numbers to Arabic, false if it preserves their number style.
  bool? _isLegal;

  bool? get isLegal => _isLegal;
  set isLegal(bool? val) => _isLegal = val;


  /// Gets or sets the list level that must appear before the specified list level restarts numbering.
  /// The value of -1 means the numbering will continue.
  int? _restartAfterLevel;

  int? get restartAfterLevel => _restartAfterLevel;
  set restartAfterLevel(int? val) => _restartAfterLevel = val;


  /// Gets or sets the character to be inserted after the number for the list level.
  ListLevelUpdate_TrailingCharacterEnum? _trailingCharacter;

  ListLevelUpdate_TrailingCharacterEnum? get trailingCharacter => _trailingCharacter;
  set trailingCharacter(ListLevelUpdate_TrailingCharacterEnum? val) => _trailingCharacter = val;


  /// Gets or sets the tab position (in points) for the list level.
  /// Has effect only when Aspose.Words.Lists.ListLevel.TrailingCharacter is a tab.
  /// Aspose.Words.Lists.ListLevel.NumberPosition Aspose.Words.Lists.ListLevel.TextPosition.
  double? _tabPosition;

  double? get tabPosition => _tabPosition;
  set tabPosition(double? val) => _tabPosition = val;


  /// Gets or sets the position (in points) of the number or bullet for the list level.
  /// Aspose.Words.Lists.ListLevel.NumberPosition corresponds to LeftIndent plus FirstLineIndent of the paragraph. Aspose.Words.Lists.ListLevel.TextPosition Aspose.Words.Lists.ListLevel.TabPosition.
  double? _numberPosition;

  double? get numberPosition => _numberPosition;
  set numberPosition(double? val) => _numberPosition = val;


  /// Gets or sets the position (in points) for the second line of wrapping text for the list level.
  /// Aspose.Words.Lists.ListLevel.TextPosition corresponds to LeftIndent of the paragraph.
  /// Aspose.Words.Lists.ListLevel.NumberPosition Aspose.Words.Lists.ListLevel.TabPosition.
  double? _textPosition;

  double? get textPosition => _textPosition;
  set textPosition(double? val) => _textPosition = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize ListLevelUpdate data model.');
    }

    if (json.containsKey('StartAt')) {
      startAt = json['StartAt'] as int;
    } else {
      startAt = null;
    }

    if (json.containsKey('NumberStyle')) {
      switch (json['NumberStyle'] as String) {
        case 'Arabic': numberStyle = ListLevelUpdate_NumberStyleEnum.arabic; break;
        case 'UppercaseRoman': numberStyle = ListLevelUpdate_NumberStyleEnum.uppercaseRoman; break;
        case 'LowercaseRoman': numberStyle = ListLevelUpdate_NumberStyleEnum.lowercaseRoman; break;
        case 'UppercaseLetter': numberStyle = ListLevelUpdate_NumberStyleEnum.uppercaseLetter; break;
        case 'LowercaseLetter': numberStyle = ListLevelUpdate_NumberStyleEnum.lowercaseLetter; break;
        case 'Ordinal': numberStyle = ListLevelUpdate_NumberStyleEnum.ordinal; break;
        case 'Number': numberStyle = ListLevelUpdate_NumberStyleEnum.number; break;
        case 'OrdinalText': numberStyle = ListLevelUpdate_NumberStyleEnum.ordinalText; break;
        case 'Hex': numberStyle = ListLevelUpdate_NumberStyleEnum.hex; break;
        case 'ChicagoManual': numberStyle = ListLevelUpdate_NumberStyleEnum.chicagoManual; break;
        case 'Kanji': numberStyle = ListLevelUpdate_NumberStyleEnum.kanji; break;
        case 'KanjiDigit': numberStyle = ListLevelUpdate_NumberStyleEnum.kanjiDigit; break;
        case 'AiueoHalfWidth': numberStyle = ListLevelUpdate_NumberStyleEnum.aiueoHalfWidth; break;
        case 'IrohaHalfWidth': numberStyle = ListLevelUpdate_NumberStyleEnum.irohaHalfWidth; break;
        case 'ArabicFullWidth': numberStyle = ListLevelUpdate_NumberStyleEnum.arabicFullWidth; break;
        case 'ArabicHalfWidth': numberStyle = ListLevelUpdate_NumberStyleEnum.arabicHalfWidth; break;
        case 'KanjiTraditional': numberStyle = ListLevelUpdate_NumberStyleEnum.kanjiTraditional; break;
        case 'KanjiTraditional2': numberStyle = ListLevelUpdate_NumberStyleEnum.kanjiTraditional2; break;
        case 'NumberInCircle': numberStyle = ListLevelUpdate_NumberStyleEnum.numberInCircle; break;
        case 'DecimalFullWidth': numberStyle = ListLevelUpdate_NumberStyleEnum.decimalFullWidth; break;
        case 'Aiueo': numberStyle = ListLevelUpdate_NumberStyleEnum.aiueo; break;
        case 'Iroha': numberStyle = ListLevelUpdate_NumberStyleEnum.iroha; break;
        case 'LeadingZero': numberStyle = ListLevelUpdate_NumberStyleEnum.leadingZero; break;
        case 'Bullet': numberStyle = ListLevelUpdate_NumberStyleEnum.bullet; break;
        case 'Ganada': numberStyle = ListLevelUpdate_NumberStyleEnum.ganada; break;
        case 'Chosung': numberStyle = ListLevelUpdate_NumberStyleEnum.chosung; break;
        case 'GB1': numberStyle = ListLevelUpdate_NumberStyleEnum.gB1; break;
        case 'GB2': numberStyle = ListLevelUpdate_NumberStyleEnum.gB2; break;
        case 'GB3': numberStyle = ListLevelUpdate_NumberStyleEnum.gB3; break;
        case 'GB4': numberStyle = ListLevelUpdate_NumberStyleEnum.gB4; break;
        case 'Zodiac1': numberStyle = ListLevelUpdate_NumberStyleEnum.zodiac1; break;
        case 'Zodiac2': numberStyle = ListLevelUpdate_NumberStyleEnum.zodiac2; break;
        case 'Zodiac3': numberStyle = ListLevelUpdate_NumberStyleEnum.zodiac3; break;
        case 'TradChinNum1': numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum1; break;
        case 'TradChinNum2': numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum2; break;
        case 'TradChinNum3': numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum3; break;
        case 'TradChinNum4': numberStyle = ListLevelUpdate_NumberStyleEnum.tradChinNum4; break;
        case 'SimpChinNum1': numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum1; break;
        case 'SimpChinNum2': numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum2; break;
        case 'SimpChinNum3': numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum3; break;
        case 'SimpChinNum4': numberStyle = ListLevelUpdate_NumberStyleEnum.simpChinNum4; break;
        case 'HanjaRead': numberStyle = ListLevelUpdate_NumberStyleEnum.hanjaRead; break;
        case 'HanjaReadDigit': numberStyle = ListLevelUpdate_NumberStyleEnum.hanjaReadDigit; break;
        case 'Hangul': numberStyle = ListLevelUpdate_NumberStyleEnum.hangul; break;
        case 'Hanja': numberStyle = ListLevelUpdate_NumberStyleEnum.hanja; break;
        case 'Hebrew1': numberStyle = ListLevelUpdate_NumberStyleEnum.hebrew1; break;
        case 'Arabic1': numberStyle = ListLevelUpdate_NumberStyleEnum.arabic1; break;
        case 'Hebrew2': numberStyle = ListLevelUpdate_NumberStyleEnum.hebrew2; break;
        case 'Arabic2': numberStyle = ListLevelUpdate_NumberStyleEnum.arabic2; break;
        case 'HindiLetter1': numberStyle = ListLevelUpdate_NumberStyleEnum.hindiLetter1; break;
        case 'HindiLetter2': numberStyle = ListLevelUpdate_NumberStyleEnum.hindiLetter2; break;
        case 'HindiArabic': numberStyle = ListLevelUpdate_NumberStyleEnum.hindiArabic; break;
        case 'HindiCardinalText': numberStyle = ListLevelUpdate_NumberStyleEnum.hindiCardinalText; break;
        case 'ThaiLetter': numberStyle = ListLevelUpdate_NumberStyleEnum.thaiLetter; break;
        case 'ThaiArabic': numberStyle = ListLevelUpdate_NumberStyleEnum.thaiArabic; break;
        case 'ThaiCardinalText': numberStyle = ListLevelUpdate_NumberStyleEnum.thaiCardinalText; break;
        case 'VietCardinalText': numberStyle = ListLevelUpdate_NumberStyleEnum.vietCardinalText; break;
        case 'NumberInDash': numberStyle = ListLevelUpdate_NumberStyleEnum.numberInDash; break;
        case 'LowercaseRussian': numberStyle = ListLevelUpdate_NumberStyleEnum.lowercaseRussian; break;
        case 'UppercaseRussian': numberStyle = ListLevelUpdate_NumberStyleEnum.uppercaseRussian; break;
        case 'None': numberStyle = ListLevelUpdate_NumberStyleEnum.none; break;
        case 'Custom': numberStyle = ListLevelUpdate_NumberStyleEnum.custom; break;
        default: numberStyle = null; break;
      }
    } else {
      numberStyle = null;
    }

    if (json.containsKey('NumberFormat')) {
      numberFormat = json['NumberFormat'] as String;
    } else {
      numberFormat = null;
    }

    if (json.containsKey('Alignment')) {
      switch (json['Alignment'] as String) {
        case 'Left': alignment = ListLevelUpdate_AlignmentEnum.left; break;
        case 'Center': alignment = ListLevelUpdate_AlignmentEnum.center; break;
        case 'Right': alignment = ListLevelUpdate_AlignmentEnum.right; break;
        default: alignment = null; break;
      }
    } else {
      alignment = null;
    }

    if (json.containsKey('IsLegal')) {
      isLegal = json['IsLegal'] as bool;
    } else {
      isLegal = null;
    }

    if (json.containsKey('RestartAfterLevel')) {
      restartAfterLevel = json['RestartAfterLevel'] as int;
    } else {
      restartAfterLevel = null;
    }

    if (json.containsKey('TrailingCharacter')) {
      switch (json['TrailingCharacter'] as String) {
        case 'Tab': trailingCharacter = ListLevelUpdate_TrailingCharacterEnum.tab; break;
        case 'Space': trailingCharacter = ListLevelUpdate_TrailingCharacterEnum.space; break;
        case 'Nothing': trailingCharacter = ListLevelUpdate_TrailingCharacterEnum.nothing; break;
        default: trailingCharacter = null; break;
      }
    } else {
      trailingCharacter = null;
    }

    if (json.containsKey('TabPosition')) {
      tabPosition = json['TabPosition'] as double;
    } else {
      tabPosition = null;
    }

    if (json.containsKey('NumberPosition')) {
      numberPosition = json['NumberPosition'] as double;
    } else {
      numberPosition = null;
    }

    if (json.containsKey('TextPosition')) {
      textPosition = json['TextPosition'] as double;
    } else {
      textPosition = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (startAt != null) {
      _result['StartAt'] = startAt!;
    }

    if (numberStyle != null) {
      switch (numberStyle!) {
        case ListLevelUpdate_NumberStyleEnum.arabic: _result['NumberStyle'] = 'Arabic'; break;
        case ListLevelUpdate_NumberStyleEnum.uppercaseRoman: _result['NumberStyle'] = 'UppercaseRoman'; break;
        case ListLevelUpdate_NumberStyleEnum.lowercaseRoman: _result['NumberStyle'] = 'LowercaseRoman'; break;
        case ListLevelUpdate_NumberStyleEnum.uppercaseLetter: _result['NumberStyle'] = 'UppercaseLetter'; break;
        case ListLevelUpdate_NumberStyleEnum.lowercaseLetter: _result['NumberStyle'] = 'LowercaseLetter'; break;
        case ListLevelUpdate_NumberStyleEnum.ordinal: _result['NumberStyle'] = 'Ordinal'; break;
        case ListLevelUpdate_NumberStyleEnum.number: _result['NumberStyle'] = 'Number'; break;
        case ListLevelUpdate_NumberStyleEnum.ordinalText: _result['NumberStyle'] = 'OrdinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.hex: _result['NumberStyle'] = 'Hex'; break;
        case ListLevelUpdate_NumberStyleEnum.chicagoManual: _result['NumberStyle'] = 'ChicagoManual'; break;
        case ListLevelUpdate_NumberStyleEnum.kanji: _result['NumberStyle'] = 'Kanji'; break;
        case ListLevelUpdate_NumberStyleEnum.kanjiDigit: _result['NumberStyle'] = 'KanjiDigit'; break;
        case ListLevelUpdate_NumberStyleEnum.aiueoHalfWidth: _result['NumberStyle'] = 'AiueoHalfWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.irohaHalfWidth: _result['NumberStyle'] = 'IrohaHalfWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.arabicFullWidth: _result['NumberStyle'] = 'ArabicFullWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.arabicHalfWidth: _result['NumberStyle'] = 'ArabicHalfWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.kanjiTraditional: _result['NumberStyle'] = 'KanjiTraditional'; break;
        case ListLevelUpdate_NumberStyleEnum.kanjiTraditional2: _result['NumberStyle'] = 'KanjiTraditional2'; break;
        case ListLevelUpdate_NumberStyleEnum.numberInCircle: _result['NumberStyle'] = 'NumberInCircle'; break;
        case ListLevelUpdate_NumberStyleEnum.decimalFullWidth: _result['NumberStyle'] = 'DecimalFullWidth'; break;
        case ListLevelUpdate_NumberStyleEnum.aiueo: _result['NumberStyle'] = 'Aiueo'; break;
        case ListLevelUpdate_NumberStyleEnum.iroha: _result['NumberStyle'] = 'Iroha'; break;
        case ListLevelUpdate_NumberStyleEnum.leadingZero: _result['NumberStyle'] = 'LeadingZero'; break;
        case ListLevelUpdate_NumberStyleEnum.bullet: _result['NumberStyle'] = 'Bullet'; break;
        case ListLevelUpdate_NumberStyleEnum.ganada: _result['NumberStyle'] = 'Ganada'; break;
        case ListLevelUpdate_NumberStyleEnum.chosung: _result['NumberStyle'] = 'Chosung'; break;
        case ListLevelUpdate_NumberStyleEnum.gB1: _result['NumberStyle'] = 'GB1'; break;
        case ListLevelUpdate_NumberStyleEnum.gB2: _result['NumberStyle'] = 'GB2'; break;
        case ListLevelUpdate_NumberStyleEnum.gB3: _result['NumberStyle'] = 'GB3'; break;
        case ListLevelUpdate_NumberStyleEnum.gB4: _result['NumberStyle'] = 'GB4'; break;
        case ListLevelUpdate_NumberStyleEnum.zodiac1: _result['NumberStyle'] = 'Zodiac1'; break;
        case ListLevelUpdate_NumberStyleEnum.zodiac2: _result['NumberStyle'] = 'Zodiac2'; break;
        case ListLevelUpdate_NumberStyleEnum.zodiac3: _result['NumberStyle'] = 'Zodiac3'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum1: _result['NumberStyle'] = 'TradChinNum1'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum2: _result['NumberStyle'] = 'TradChinNum2'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum3: _result['NumberStyle'] = 'TradChinNum3'; break;
        case ListLevelUpdate_NumberStyleEnum.tradChinNum4: _result['NumberStyle'] = 'TradChinNum4'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum1: _result['NumberStyle'] = 'SimpChinNum1'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum2: _result['NumberStyle'] = 'SimpChinNum2'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum3: _result['NumberStyle'] = 'SimpChinNum3'; break;
        case ListLevelUpdate_NumberStyleEnum.simpChinNum4: _result['NumberStyle'] = 'SimpChinNum4'; break;
        case ListLevelUpdate_NumberStyleEnum.hanjaRead: _result['NumberStyle'] = 'HanjaRead'; break;
        case ListLevelUpdate_NumberStyleEnum.hanjaReadDigit: _result['NumberStyle'] = 'HanjaReadDigit'; break;
        case ListLevelUpdate_NumberStyleEnum.hangul: _result['NumberStyle'] = 'Hangul'; break;
        case ListLevelUpdate_NumberStyleEnum.hanja: _result['NumberStyle'] = 'Hanja'; break;
        case ListLevelUpdate_NumberStyleEnum.hebrew1: _result['NumberStyle'] = 'Hebrew1'; break;
        case ListLevelUpdate_NumberStyleEnum.arabic1: _result['NumberStyle'] = 'Arabic1'; break;
        case ListLevelUpdate_NumberStyleEnum.hebrew2: _result['NumberStyle'] = 'Hebrew2'; break;
        case ListLevelUpdate_NumberStyleEnum.arabic2: _result['NumberStyle'] = 'Arabic2'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiLetter1: _result['NumberStyle'] = 'HindiLetter1'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiLetter2: _result['NumberStyle'] = 'HindiLetter2'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiArabic: _result['NumberStyle'] = 'HindiArabic'; break;
        case ListLevelUpdate_NumberStyleEnum.hindiCardinalText: _result['NumberStyle'] = 'HindiCardinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.thaiLetter: _result['NumberStyle'] = 'ThaiLetter'; break;
        case ListLevelUpdate_NumberStyleEnum.thaiArabic: _result['NumberStyle'] = 'ThaiArabic'; break;
        case ListLevelUpdate_NumberStyleEnum.thaiCardinalText: _result['NumberStyle'] = 'ThaiCardinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.vietCardinalText: _result['NumberStyle'] = 'VietCardinalText'; break;
        case ListLevelUpdate_NumberStyleEnum.numberInDash: _result['NumberStyle'] = 'NumberInDash'; break;
        case ListLevelUpdate_NumberStyleEnum.lowercaseRussian: _result['NumberStyle'] = 'LowercaseRussian'; break;
        case ListLevelUpdate_NumberStyleEnum.uppercaseRussian: _result['NumberStyle'] = 'UppercaseRussian'; break;
        case ListLevelUpdate_NumberStyleEnum.none: _result['NumberStyle'] = 'None'; break;
        case ListLevelUpdate_NumberStyleEnum.custom: _result['NumberStyle'] = 'Custom'; break;
        default: break;
      }
    }

    if (numberFormat != null) {
      _result['NumberFormat'] = numberFormat!;
    }

    if (alignment != null) {
      switch (alignment!) {
        case ListLevelUpdate_AlignmentEnum.left: _result['Alignment'] = 'Left'; break;
        case ListLevelUpdate_AlignmentEnum.center: _result['Alignment'] = 'Center'; break;
        case ListLevelUpdate_AlignmentEnum.right: _result['Alignment'] = 'Right'; break;
        default: break;
      }
    }

    if (isLegal != null) {
      _result['IsLegal'] = isLegal!;
    }

    if (restartAfterLevel != null) {
      _result['RestartAfterLevel'] = restartAfterLevel!;
    }

    if (trailingCharacter != null) {
      switch (trailingCharacter!) {
        case ListLevelUpdate_TrailingCharacterEnum.tab: _result['TrailingCharacter'] = 'Tab'; break;
        case ListLevelUpdate_TrailingCharacterEnum.space: _result['TrailingCharacter'] = 'Space'; break;
        case ListLevelUpdate_TrailingCharacterEnum.nothing: _result['TrailingCharacter'] = 'Nothing'; break;
        default: break;
      }
    }

    if (tabPosition != null) {
      _result['TabPosition'] = tabPosition!;
    }

    if (numberPosition != null) {
      _result['NumberPosition'] = numberPosition!;
    }

    if (textPosition != null) {
      _result['TextPosition'] = textPosition!;
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

/// Gets or sets the number style for this list level.
enum ListLevelUpdate_NumberStyleEnum
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

/// Gets or sets the justification of the actual number of the list item.
/// The list label is justified relative to the Aspose.Words.Lists.ListLevel.NumberPosition
/// property.
enum ListLevelUpdate_AlignmentEnum
{ 
  left,
  center,
  right
}

/// Gets or sets the character to be inserted after the number for the list level.
enum ListLevelUpdate_TrailingCharacterEnum
{ 
  tab,
  space,
  nothing
}

