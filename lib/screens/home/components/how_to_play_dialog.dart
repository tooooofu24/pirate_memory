import 'package:flutter/material.dart';
import 'package:pirate_memory/screens/home/components/pdf_viewer.dart';

class HowToPlayDialog extends StatelessWidget {
  const HowToPlayDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 24),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          height: 350,
          child: PDFViewer(),
        ),
      ),
    );
  }
}
