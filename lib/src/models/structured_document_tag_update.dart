/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="structured_document_tag_update.dart">
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

/// DTO container with a StructuredDocumentTag.
class StructuredDocumentTagUpdate extends StructuredDocumentTag {

  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize StructuredDocumentTagUpdate data model.');
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

    if (json.containsKey('ListItems')) {
      // Array processing
      listItems = <StructuredDocumentTagListItem>[];
      for(final _element in json['ListItems']) {
        listItems!.add(ModelBase.createInstance< StructuredDocumentTagListItem >(_element as Map<String, dynamic>));
      }
    } else {
      listItems = null;
    }

    if (json.containsKey('Checked')) {
      checked = json['Checked'] as bool;
    } else {
      checked = null;
    }

    if (json.containsKey('Appearance')) {
      switch (json['Appearance'] as String) {
        case 'BoundingBox': appearance = StructuredDocumentTagBase_AppearanceEnum.boundingBox; break;
        case 'Default': appearance = StructuredDocumentTagBase_AppearanceEnum.defaultValue; break;
        case 'Tags': appearance = StructuredDocumentTagBase_AppearanceEnum.tags; break;
        case 'Hidden': appearance = StructuredDocumentTagBase_AppearanceEnum.hidden; break;
        default: appearance = null; break;
      }
    } else {
      appearance = null;
    }

    if (json.containsKey('DateDisplayLocale')) {
      dateDisplayLocale = json['DateDisplayLocale'] as int;
    } else {
      dateDisplayLocale = null;
    }

    if (json.containsKey('DateDisplayFormat')) {
      dateDisplayFormat = json['DateDisplayFormat'] as String;
    } else {
      dateDisplayFormat = null;
    }

    if (json.containsKey('FullDate')) {
      fullDate = DateTime.parse(json['FullDate'] as String);
    } else {
      fullDate = null;
    }

    if (json.containsKey('Title')) {
      title = json['Title'] as String;
    } else {
      title = null;
    }

    if (json.containsKey('DateStorageFormat')) {
      switch (json['DateStorageFormat'] as String) {
        case 'Date': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.date; break;
        case 'DateTime': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.dateTime; break;
        case 'Default': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.defaultValue; break;
        case 'Text': dateStorageFormat = StructuredDocumentTagBase_DateStorageFormatEnum.text; break;
        default: dateStorageFormat = null; break;
      }
    } else {
      dateStorageFormat = null;
    }

    if (json.containsKey('BuildingBlockGallery')) {
      buildingBlockGallery = json['BuildingBlockGallery'] as String;
    } else {
      buildingBlockGallery = null;
    }

    if (json.containsKey('BuildingBlockCategory')) {
      buildingBlockCategory = json['BuildingBlockCategory'] as String;
    } else {
      buildingBlockCategory = null;
    }

    if (json.containsKey('Multiline')) {
      multiline = json['Multiline'] as bool;
    } else {
      multiline = null;
    }

    if (json.containsKey('Color')) {
      color = ModelBase.createInstance< XmlColor >(json['Color'] as Map<String, dynamic>);
    } else {
      color = null;
    }

    if (json.containsKey('StyleName')) {
      styleName = json['StyleName'] as String;
    } else {
      styleName = null;
    }

    if (json.containsKey('CalendarType')) {
      switch (json['CalendarType'] as String) {
        case 'Default': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.defaultValue; break;
        case 'Gregorian': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorian; break;
        case 'GregorianArabic': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianArabic; break;
        case 'GregorianMeFrench': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianMeFrench; break;
        case 'GregorianUs': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianUs; break;
        case 'GregorianXlitEnglish': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianXlitEnglish; break;
        case 'GregorianXlitFrench': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.gregorianXlitFrench; break;
        case 'Hebrew': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.hebrew; break;
        case 'Hijri': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.hijri; break;
        case 'Japan': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.japan; break;
        case 'Korea': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.korea; break;
        case 'None': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.none; break;
        case 'Saka': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.saka; break;
        case 'Taiwan': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.taiwan; break;
        case 'Thai': calendarType = StructuredDocumentTagBase_CalendarTypeEnum.thai; break;
        default: calendarType = null; break;
      }
    } else {
      calendarType = null;
    }

    if (json.containsKey('IsTemporary')) {
      isTemporary = json['IsTemporary'] as bool;
    } else {
      isTemporary = null;
    }

    if (json.containsKey('PlaceholderName')) {
      placeholderName = json['PlaceholderName'] as String;
    } else {
      placeholderName = null;
    }

    if (json.containsKey('LockContentControl')) {
      lockContentControl = json['LockContentControl'] as bool;
    } else {
      lockContentControl = null;
    }

    if (json.containsKey('LockContents')) {
      lockContents = json['LockContents'] as bool;
    } else {
      lockContents = null;
    }

    if (json.containsKey('IsShowingPlaceholderText')) {
      isShowingPlaceholderText = json['IsShowingPlaceholderText'] as bool;
    } else {
      isShowingPlaceholderText = null;
    }

    if (json.containsKey('Tag')) {
      tag = json['Tag'] as String;
    } else {
      tag = null;
    }

    if (json.containsKey('Id')) {
      id = json['Id'] as int;
    } else {
      id = null;
    }

    if (json.containsKey('Level')) {
      switch (json['Level'] as String) {
        case 'Unknown': level = StructuredDocumentTag_LevelEnum.unknown; break;
        case 'Inline': level = StructuredDocumentTag_LevelEnum.inline; break;
        case 'Block': level = StructuredDocumentTag_LevelEnum.block; break;
        case 'Row': level = StructuredDocumentTag_LevelEnum.row; break;
        case 'Cell': level = StructuredDocumentTag_LevelEnum.cell; break;
        default: level = null; break;
      }
    } else {
      level = null;
    }

    if (json.containsKey('SdtType')) {
      switch (json['SdtType'] as String) {
        case 'None': sdtType = StructuredDocumentTag_SdtTypeEnum.none; break;
        case 'Bibliography': sdtType = StructuredDocumentTag_SdtTypeEnum.bibliography; break;
        case 'Citation': sdtType = StructuredDocumentTag_SdtTypeEnum.citation; break;
        case 'Equation': sdtType = StructuredDocumentTag_SdtTypeEnum.equation; break;
        case 'DropDownList': sdtType = StructuredDocumentTag_SdtTypeEnum.dropDownList; break;
        case 'ComboBox': sdtType = StructuredDocumentTag_SdtTypeEnum.comboBox; break;
        case 'Date': sdtType = StructuredDocumentTag_SdtTypeEnum.date; break;
        case 'BuildingBlockGallery': sdtType = StructuredDocumentTag_SdtTypeEnum.buildingBlockGallery; break;
        case 'DocPartObj': sdtType = StructuredDocumentTag_SdtTypeEnum.docPartObj; break;
        case 'Group': sdtType = StructuredDocumentTag_SdtTypeEnum.group; break;
        case 'Picture': sdtType = StructuredDocumentTag_SdtTypeEnum.picture; break;
        case 'RichText': sdtType = StructuredDocumentTag_SdtTypeEnum.richText; break;
        case 'PlainText': sdtType = StructuredDocumentTag_SdtTypeEnum.plainText; break;
        case 'Checkbox': sdtType = StructuredDocumentTag_SdtTypeEnum.checkbox; break;
        case 'RepeatingSection': sdtType = StructuredDocumentTag_SdtTypeEnum.repeatingSection; break;
        case 'RepeatingSectionItem': sdtType = StructuredDocumentTag_SdtTypeEnum.repeatingSectionItem; break;
        case 'EntityPicker': sdtType = StructuredDocumentTag_SdtTypeEnum.entityPicker; break;
        default: sdtType = null; break;
      }
    } else {
      sdtType = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    _result.addAll(super.serialize());
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


