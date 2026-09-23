```dart
final clientId = "####-####-####-####-####";
final clientSecret = "##################";
final config = Configuration(clientId, clientSecret);
final wordsApi = WordsApi(config);
final fileName = 'test_doc.docx';

// Calls AcceptAllRevisionsOnline method for document in cloud.
final requestDocument = (await File(fileName).readAsBytes()).buffer.asByteData();
final request = AcceptAllRevisionsOnlineRequest(requestDocument);
final acceptAllRevisionsOnlineResult = await wordsApi.acceptAllRevisionsOnline(request);
await File('test_result.docx').writeAsBytes(
    acceptAllRevisionsOnlineResult.document!.values.first.buffer.asUint8List(acceptAllRevisionsOnlineResult.document!.values.first.offsetInBytes, acceptAllRevisionsOnlineResult.document!.values.first.lengthInBytes)
);
```