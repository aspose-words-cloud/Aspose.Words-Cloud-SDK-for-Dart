/*
 * --------------------------------------------------------------------------------
 * <copyright company="Aspose" file="configuration.dart">
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

class Configuration {
  final String clientId;
  final String clientSecret;
  final String baseUrl;
  final bool debugMode;
  final Duration timeout;
  final String rsaExponent;
  final String rsaModulus;

  Configuration(this.clientId, this.clientSecret, {this.baseUrl = 'https://api.aspose.cloud', this.debugMode = false, this.timeout = const Duration(seconds: 300), this.rsaExponent = '', this.rsaModulus = ''});

  Configuration.fromJson(final Map<String, dynamic> json)
    : clientId = json['ClientId'] as String,
      clientSecret = json['ClientSecret'] as String,
      baseUrl = (json['BaseUrl'] as String?) ?? 'https://api.aspose.cloud',
      debugMode = (json['DebugMode'] as bool?) ?? false,
      timeout = Duration(seconds: (json['Timeout'] as int?) ?? 300),
      rsaExponent = (json['RsaExponent'] as String?) ?? '',
      rsaModulus = (json['RsaModulus'] as String?) ?? '';

  String getApiRootUrl()
  {
    return '$baseUrl/v4.0';
  }
}