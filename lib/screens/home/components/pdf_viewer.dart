import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';

class PDFViewer extends StatefulWidget {
  const PDFViewer({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PDFViewPageState createState() => _PDFViewPageState();
}

class _PDFViewPageState extends State<PDFViewer> {
  String? _localPath;

  @override
  void initState() {
    super.initState();
    unawaited(_loadPDF());
  }

  Future<void> _loadPDF() async {
    // アセット PDF を読み込み、ローカルファイルに保存
    final byteData = await rootBundle.load('assets/how-to-play.pdf');
    final buffer = byteData.buffer;

    final tempDir = await getTemporaryDirectory();
    final filePath = '${tempDir.path}/how-to-play.pdf';
    final file = await File(filePath).writeAsBytes(
      buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
    );

    setState(() {
      _localPath = file.path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _localPath == null
        ? const Center(child: CircularProgressIndicator())
        : PDFView(
            filePath: _localPath,
          );
  }
}
