/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="byte_data_extensions.dart">
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

import 'dart:typed_data';

extension ByteDataExtensions on ByteData {
  bool compare(final ByteData part, { int offset = 0 }) {
    if (part.lengthInBytes > lengthInBytes - offset) {
      return false;
    }

    for (var i = 0; i < part.lengthInBytes; i++) {
      if (part.getUint8(i) != getUint8(i + offset)) {
        return false;
      }
    }

    return true;
  }

  int? indexOf(final ByteData part, {int startIndex = 0}) {
    if (part.lengthInBytes > lengthInBytes - startIndex) {
      return null;
    }

    var partLength = part.lengthInBytes;
    var totalLength = lengthInBytes - partLength;
    for (var i = startIndex; i < totalLength; i++) {
      var expression = true;
      for (var q = 0; q < partLength; q++) {
        if (getUint8(i + q) != part.getUint8(q)) {
          expression = false;
          break;
        }
      }

      if (expression) {
        return i;
      }
    }

    return null;
  }

  List<ByteData> split(final ByteData separator, {bool skipEmptyParts = true}) {
    var result = <ByteData>[];

    var offset = 0;
    var separatorSize = separator.lengthInBytes;
    while (true) {
      var newOffset = indexOf(separator, startIndex: offset);
      if (newOffset == null) {
        result.add(ByteData.sublistView(this, offset));
        break;
      }
      else {
        if (!skipEmptyParts || (newOffset != offset)) {
          result.add(ByteData.sublistView(this, offset, newOffset));
        }
        offset = newOffset + separatorSize;
      }
    }

    return result;
  }
}