import 'dart:io';
import 'package:aspose_words_cloud/aspose_words_cloud.dart';

class ExamplesTests
{
    final Configuration config;

    ExamplesTests(this.config);

    Future<void> init() async
    {
        Directory.current = Directory.current.path + '/examples_data';
        final api = WordsApi(config);
        await api.uploadFile(UploadFileRequest(
            (await File('test_doc.docx').readAsBytes()).buffer.asByteData(),
            'test_doc.docx'
        ));
    }

    Future<void> acceptAllRevisions() async
    {
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
    }

    Future<void> acceptAllRevisionsOnline() async
    {
        final wordsApi = WordsApi(config);
        final fileName = 'test_doc.docx';

        // Calls AcceptAllRevisionsOnline method for document in cloud.
        final requestDocument = (await File(fileName).readAsBytes()).buffer.asByteData();
        final request = AcceptAllRevisionsOnlineRequest(requestDocument);
        final acceptAllRevisionsOnlineResult = await wordsApi.acceptAllRevisionsOnline(request);
        await File('test_result.docx').writeAsBytes(
            acceptAllRevisionsOnlineResult.document!.values.first.buffer.asUint8List(acceptAllRevisionsOnlineResult.document!.values.first.offsetInBytes, acceptAllRevisionsOnlineResult.document!.values.first.lengthInBytes)
        );
    }
}