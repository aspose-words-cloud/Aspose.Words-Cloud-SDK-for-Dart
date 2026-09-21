/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="shading.dart">
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

/// DTO container with a paragraph format shading element.
class Shading implements ModelBase {
  /// Gets or sets the color that's applied to the background of the Shading object.
  XmlColor? _backgroundPatternColor;

  XmlColor? get backgroundPatternColor => _backgroundPatternColor;
  set backgroundPatternColor(XmlColor? val) => _backgroundPatternColor = val;


  /// Gets or sets the color that's applied to the foreground of the Shading object.
  XmlColor? _foregroundPatternColor;

  XmlColor? get foregroundPatternColor => _foregroundPatternColor;
  set foregroundPatternColor(XmlColor? val) => _foregroundPatternColor = val;


  /// Gets or sets the shading texture.
  Shading_TextureEnum? _texture;

  Shading_TextureEnum? get texture => _texture;
  set texture(Shading_TextureEnum? val) => _texture = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize Shading data model.');
    }

    if (json.containsKey('BackgroundPatternColor')) {
      backgroundPatternColor = ModelBase.createInstance< XmlColor >(json['BackgroundPatternColor'] as Map<String, dynamic>);
    } else {
      backgroundPatternColor = null;
    }

    if (json.containsKey('ForegroundPatternColor')) {
      foregroundPatternColor = ModelBase.createInstance< XmlColor >(json['ForegroundPatternColor'] as Map<String, dynamic>);
    } else {
      foregroundPatternColor = null;
    }

    if (json.containsKey('Texture')) {
      switch (json['Texture'] as String) {
        case 'TextureNone': texture = Shading_TextureEnum.textureNone; break;
        case 'TextureSolid': texture = Shading_TextureEnum.textureSolid; break;
        case 'Texture5Percent': texture = Shading_TextureEnum.texture5Percent; break;
        case 'Texture10Percent': texture = Shading_TextureEnum.texture10Percent; break;
        case 'Texture20Percent': texture = Shading_TextureEnum.texture20Percent; break;
        case 'Texture25Percent': texture = Shading_TextureEnum.texture25Percent; break;
        case 'Texture30Percent': texture = Shading_TextureEnum.texture30Percent; break;
        case 'Texture40Percent': texture = Shading_TextureEnum.texture40Percent; break;
        case 'Texture50Percent': texture = Shading_TextureEnum.texture50Percent; break;
        case 'Texture60Percent': texture = Shading_TextureEnum.texture60Percent; break;
        case 'Texture70Percent': texture = Shading_TextureEnum.texture70Percent; break;
        case 'Texture75Percent': texture = Shading_TextureEnum.texture75Percent; break;
        case 'Texture80Percent': texture = Shading_TextureEnum.texture80Percent; break;
        case 'Texture90Percent': texture = Shading_TextureEnum.texture90Percent; break;
        case 'TextureDarkHorizontal': texture = Shading_TextureEnum.textureDarkHorizontal; break;
        case 'TextureDarkVertical': texture = Shading_TextureEnum.textureDarkVertical; break;
        case 'TextureDarkDiagonalDown': texture = Shading_TextureEnum.textureDarkDiagonalDown; break;
        case 'TextureDarkDiagonalUp': texture = Shading_TextureEnum.textureDarkDiagonalUp; break;
        case 'TextureDarkCross': texture = Shading_TextureEnum.textureDarkCross; break;
        case 'TextureDarkDiagonalCross': texture = Shading_TextureEnum.textureDarkDiagonalCross; break;
        case 'TextureHorizontal': texture = Shading_TextureEnum.textureHorizontal; break;
        case 'TextureVertical': texture = Shading_TextureEnum.textureVertical; break;
        case 'TextureDiagonalDown': texture = Shading_TextureEnum.textureDiagonalDown; break;
        case 'TextureDiagonalUp': texture = Shading_TextureEnum.textureDiagonalUp; break;
        case 'TextureCross': texture = Shading_TextureEnum.textureCross; break;
        case 'TextureDiagonalCross': texture = Shading_TextureEnum.textureDiagonalCross; break;
        case 'Texture2Pt5Percent': texture = Shading_TextureEnum.texture2Pt5Percent; break;
        case 'Texture7Pt5Percent': texture = Shading_TextureEnum.texture7Pt5Percent; break;
        case 'Texture12Pt5Percent': texture = Shading_TextureEnum.texture12Pt5Percent; break;
        case 'Texture15Percent': texture = Shading_TextureEnum.texture15Percent; break;
        case 'Texture17Pt5Percent': texture = Shading_TextureEnum.texture17Pt5Percent; break;
        case 'Texture22Pt5Percent': texture = Shading_TextureEnum.texture22Pt5Percent; break;
        case 'Texture27Pt5Percent': texture = Shading_TextureEnum.texture27Pt5Percent; break;
        case 'Texture32Pt5Percent': texture = Shading_TextureEnum.texture32Pt5Percent; break;
        case 'Texture35Percent': texture = Shading_TextureEnum.texture35Percent; break;
        case 'Texture37Pt5Percent': texture = Shading_TextureEnum.texture37Pt5Percent; break;
        case 'Texture42Pt5Percent': texture = Shading_TextureEnum.texture42Pt5Percent; break;
        case 'Texture45Percent': texture = Shading_TextureEnum.texture45Percent; break;
        case 'Texture47Pt5Percent': texture = Shading_TextureEnum.texture47Pt5Percent; break;
        case 'Texture52Pt5Percent': texture = Shading_TextureEnum.texture52Pt5Percent; break;
        case 'Texture55Percent': texture = Shading_TextureEnum.texture55Percent; break;
        case 'Texture57Pt5Percent': texture = Shading_TextureEnum.texture57Pt5Percent; break;
        case 'Texture62Pt5Percent': texture = Shading_TextureEnum.texture62Pt5Percent; break;
        case 'Texture65Percent': texture = Shading_TextureEnum.texture65Percent; break;
        case 'Texture67Pt5Percent': texture = Shading_TextureEnum.texture67Pt5Percent; break;
        case 'Texture72Pt5Percent': texture = Shading_TextureEnum.texture72Pt5Percent; break;
        case 'Texture77Pt5Percent': texture = Shading_TextureEnum.texture77Pt5Percent; break;
        case 'Texture82Pt5Percent': texture = Shading_TextureEnum.texture82Pt5Percent; break;
        case 'Texture85Percent': texture = Shading_TextureEnum.texture85Percent; break;
        case 'Texture87Pt5Percent': texture = Shading_TextureEnum.texture87Pt5Percent; break;
        case 'Texture92Pt5Percent': texture = Shading_TextureEnum.texture92Pt5Percent; break;
        case 'Texture95Percent': texture = Shading_TextureEnum.texture95Percent; break;
        case 'Texture97Pt5Percent': texture = Shading_TextureEnum.texture97Pt5Percent; break;
        case 'TextureNil': texture = Shading_TextureEnum.textureNil; break;
        default: texture = null; break;
      }
    } else {
      texture = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (backgroundPatternColor != null) {
      _result['BackgroundPatternColor'] = backgroundPatternColor!.serialize();
    }

    if (foregroundPatternColor != null) {
      _result['ForegroundPatternColor'] = foregroundPatternColor!.serialize();
    }

    if (texture != null) {
      switch (texture!) {
        case Shading_TextureEnum.textureNone: _result['Texture'] = 'TextureNone'; break;
        case Shading_TextureEnum.textureSolid: _result['Texture'] = 'TextureSolid'; break;
        case Shading_TextureEnum.texture5Percent: _result['Texture'] = 'Texture5Percent'; break;
        case Shading_TextureEnum.texture10Percent: _result['Texture'] = 'Texture10Percent'; break;
        case Shading_TextureEnum.texture20Percent: _result['Texture'] = 'Texture20Percent'; break;
        case Shading_TextureEnum.texture25Percent: _result['Texture'] = 'Texture25Percent'; break;
        case Shading_TextureEnum.texture30Percent: _result['Texture'] = 'Texture30Percent'; break;
        case Shading_TextureEnum.texture40Percent: _result['Texture'] = 'Texture40Percent'; break;
        case Shading_TextureEnum.texture50Percent: _result['Texture'] = 'Texture50Percent'; break;
        case Shading_TextureEnum.texture60Percent: _result['Texture'] = 'Texture60Percent'; break;
        case Shading_TextureEnum.texture70Percent: _result['Texture'] = 'Texture70Percent'; break;
        case Shading_TextureEnum.texture75Percent: _result['Texture'] = 'Texture75Percent'; break;
        case Shading_TextureEnum.texture80Percent: _result['Texture'] = 'Texture80Percent'; break;
        case Shading_TextureEnum.texture90Percent: _result['Texture'] = 'Texture90Percent'; break;
        case Shading_TextureEnum.textureDarkHorizontal: _result['Texture'] = 'TextureDarkHorizontal'; break;
        case Shading_TextureEnum.textureDarkVertical: _result['Texture'] = 'TextureDarkVertical'; break;
        case Shading_TextureEnum.textureDarkDiagonalDown: _result['Texture'] = 'TextureDarkDiagonalDown'; break;
        case Shading_TextureEnum.textureDarkDiagonalUp: _result['Texture'] = 'TextureDarkDiagonalUp'; break;
        case Shading_TextureEnum.textureDarkCross: _result['Texture'] = 'TextureDarkCross'; break;
        case Shading_TextureEnum.textureDarkDiagonalCross: _result['Texture'] = 'TextureDarkDiagonalCross'; break;
        case Shading_TextureEnum.textureHorizontal: _result['Texture'] = 'TextureHorizontal'; break;
        case Shading_TextureEnum.textureVertical: _result['Texture'] = 'TextureVertical'; break;
        case Shading_TextureEnum.textureDiagonalDown: _result['Texture'] = 'TextureDiagonalDown'; break;
        case Shading_TextureEnum.textureDiagonalUp: _result['Texture'] = 'TextureDiagonalUp'; break;
        case Shading_TextureEnum.textureCross: _result['Texture'] = 'TextureCross'; break;
        case Shading_TextureEnum.textureDiagonalCross: _result['Texture'] = 'TextureDiagonalCross'; break;
        case Shading_TextureEnum.texture2Pt5Percent: _result['Texture'] = 'Texture2Pt5Percent'; break;
        case Shading_TextureEnum.texture7Pt5Percent: _result['Texture'] = 'Texture7Pt5Percent'; break;
        case Shading_TextureEnum.texture12Pt5Percent: _result['Texture'] = 'Texture12Pt5Percent'; break;
        case Shading_TextureEnum.texture15Percent: _result['Texture'] = 'Texture15Percent'; break;
        case Shading_TextureEnum.texture17Pt5Percent: _result['Texture'] = 'Texture17Pt5Percent'; break;
        case Shading_TextureEnum.texture22Pt5Percent: _result['Texture'] = 'Texture22Pt5Percent'; break;
        case Shading_TextureEnum.texture27Pt5Percent: _result['Texture'] = 'Texture27Pt5Percent'; break;
        case Shading_TextureEnum.texture32Pt5Percent: _result['Texture'] = 'Texture32Pt5Percent'; break;
        case Shading_TextureEnum.texture35Percent: _result['Texture'] = 'Texture35Percent'; break;
        case Shading_TextureEnum.texture37Pt5Percent: _result['Texture'] = 'Texture37Pt5Percent'; break;
        case Shading_TextureEnum.texture42Pt5Percent: _result['Texture'] = 'Texture42Pt5Percent'; break;
        case Shading_TextureEnum.texture45Percent: _result['Texture'] = 'Texture45Percent'; break;
        case Shading_TextureEnum.texture47Pt5Percent: _result['Texture'] = 'Texture47Pt5Percent'; break;
        case Shading_TextureEnum.texture52Pt5Percent: _result['Texture'] = 'Texture52Pt5Percent'; break;
        case Shading_TextureEnum.texture55Percent: _result['Texture'] = 'Texture55Percent'; break;
        case Shading_TextureEnum.texture57Pt5Percent: _result['Texture'] = 'Texture57Pt5Percent'; break;
        case Shading_TextureEnum.texture62Pt5Percent: _result['Texture'] = 'Texture62Pt5Percent'; break;
        case Shading_TextureEnum.texture65Percent: _result['Texture'] = 'Texture65Percent'; break;
        case Shading_TextureEnum.texture67Pt5Percent: _result['Texture'] = 'Texture67Pt5Percent'; break;
        case Shading_TextureEnum.texture72Pt5Percent: _result['Texture'] = 'Texture72Pt5Percent'; break;
        case Shading_TextureEnum.texture77Pt5Percent: _result['Texture'] = 'Texture77Pt5Percent'; break;
        case Shading_TextureEnum.texture82Pt5Percent: _result['Texture'] = 'Texture82Pt5Percent'; break;
        case Shading_TextureEnum.texture85Percent: _result['Texture'] = 'Texture85Percent'; break;
        case Shading_TextureEnum.texture87Pt5Percent: _result['Texture'] = 'Texture87Pt5Percent'; break;
        case Shading_TextureEnum.texture92Pt5Percent: _result['Texture'] = 'Texture92Pt5Percent'; break;
        case Shading_TextureEnum.texture95Percent: _result['Texture'] = 'Texture95Percent'; break;
        case Shading_TextureEnum.texture97Pt5Percent: _result['Texture'] = 'Texture97Pt5Percent'; break;
        case Shading_TextureEnum.textureNil: _result['Texture'] = 'TextureNil'; break;
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

    backgroundPatternColor?.validate();



    foregroundPatternColor?.validate();


  }
}

/// Gets or sets the shading texture.
enum Shading_TextureEnum
{ 
  textureNone,
  textureSolid,
  texture5Percent,
  texture10Percent,
  texture20Percent,
  texture25Percent,
  texture30Percent,
  texture40Percent,
  texture50Percent,
  texture60Percent,
  texture70Percent,
  texture75Percent,
  texture80Percent,
  texture90Percent,
  textureDarkHorizontal,
  textureDarkVertical,
  textureDarkDiagonalDown,
  textureDarkDiagonalUp,
  textureDarkCross,
  textureDarkDiagonalCross,
  textureHorizontal,
  textureVertical,
  textureDiagonalDown,
  textureDiagonalUp,
  textureCross,
  textureDiagonalCross,
  texture2Pt5Percent,
  texture7Pt5Percent,
  texture12Pt5Percent,
  texture15Percent,
  texture17Pt5Percent,
  texture22Pt5Percent,
  texture27Pt5Percent,
  texture32Pt5Percent,
  texture35Percent,
  texture37Pt5Percent,
  texture42Pt5Percent,
  texture45Percent,
  texture47Pt5Percent,
  texture52Pt5Percent,
  texture55Percent,
  texture57Pt5Percent,
  texture62Pt5Percent,
  texture65Percent,
  texture67Pt5Percent,
  texture72Pt5Percent,
  texture77Pt5Percent,
  texture82Pt5Percent,
  texture85Percent,
  texture87Pt5Percent,
  texture92Pt5Percent,
  texture95Percent,
  texture97Pt5Percent,
  textureNil
}

