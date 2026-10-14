```dart
import 'dart:io';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';

final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final fileName = 'test_doc.docx';

// Upload original document to cloud storage.
final myVar1 = (await File(fileName).readAsBytes()).buffer.asByteData();
final myVar2 = fileName;
final uploadFileRequest = UploadFileRequest(myVar1, myVar2);
await wordsApi.uploadFile(uploadFileRequest);

// Calls AcceptAllRevisions method for document in cloud.
final myVar3 = fileName;
final request = AcceptAllRevisionsRequest(myVar3);
await wordsApi.acceptAllRevisions(request);
```