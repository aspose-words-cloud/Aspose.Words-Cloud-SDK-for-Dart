/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="optimization_options.dart">
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

/// Container class for the document optimization options.
class OptimizationOptions implements ModelBase {
  /// Gets or sets the specific MSWord version.
  OptimizationOptions_MsWordVersionEnum? _msWordVersion;

  OptimizationOptions_MsWordVersionEnum? get msWordVersion => _msWordVersion;
  set msWordVersion(OptimizationOptions_MsWordVersionEnum? val) => _msWordVersion = val;


  @override
  void deserialize(Map<String, dynamic>? json) {
    if (json == null) {
      throw ApiException(400, 'Failed to deserialize OptimizationOptions data model.');
    }

    if (json.containsKey('MsWordVersion')) {
      switch (json['MsWordVersion'] as String) {
        case 'Word2000': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2000; break;
        case 'Word2002': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2002; break;
        case 'Word2003': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2003; break;
        case 'Word2007': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2007; break;
        case 'Word2010': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2010; break;
        case 'Word2013': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2013; break;
        case 'Word2016': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2016; break;
        case 'Word2019': msWordVersion = OptimizationOptions_MsWordVersionEnum.word2019; break;
        default: msWordVersion = null; break;
      }
    } else {
      msWordVersion = null;
    }
  }

  @override
  Map<String, dynamic> serialize() {
    var _result = <String, dynamic>{};
    if (msWordVersion != null) {
      switch (msWordVersion!) {
        case OptimizationOptions_MsWordVersionEnum.word2000: _result['MsWordVersion'] = 'Word2000'; break;
        case OptimizationOptions_MsWordVersionEnum.word2002: _result['MsWordVersion'] = 'Word2002'; break;
        case OptimizationOptions_MsWordVersionEnum.word2003: _result['MsWordVersion'] = 'Word2003'; break;
        case OptimizationOptions_MsWordVersionEnum.word2007: _result['MsWordVersion'] = 'Word2007'; break;
        case OptimizationOptions_MsWordVersionEnum.word2010: _result['MsWordVersion'] = 'Word2010'; break;
        case OptimizationOptions_MsWordVersionEnum.word2013: _result['MsWordVersion'] = 'Word2013'; break;
        case OptimizationOptions_MsWordVersionEnum.word2016: _result['MsWordVersion'] = 'Word2016'; break;
        case OptimizationOptions_MsWordVersionEnum.word2019: _result['MsWordVersion'] = 'Word2019'; break;
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
    if (msWordVersion == null)
    {
        throw new ApiException(400, 'Property MsWordVersion in OptimizationOptions is required.');
    }
  }
}

/// Gets or sets the specific MSWord version.
enum OptimizationOptions_MsWordVersionEnum
{ 
  word2000,
  word2002,
  word2003,
  word2007,
  word2010,
  word2013,
  word2016,
  word2019
}

