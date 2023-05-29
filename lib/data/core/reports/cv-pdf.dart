// ignore_for_file: file_names

import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

class FileCvPdf {
  static Future<File> createFile(String name) async {
    final pdf = Document();
    pdf.addPage(
      MultiPage(
        pageFormat: PdfPageFormat.a4,
        footer: (context) {
          final text = "Page ${context.pageNumber} of ${context.pagesCount}";
          return Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(top: 1 * PdfPageFormat.cm),
              child: Text(text));
        },
        build: (context) => [],
      ),
    );
    return savePdf(name: name, pdf: pdf);
  }

  static Future<String> getpath() async {
    if (Platform.isIOS) {
      final dir = await getApplicationDocumentsDirectory();
      return dir.path;
    } else if (Platform.isAndroid) {
      final dir =
          await getExternalStorageDirectories(type: StorageDirectory.documents);
      return dir!.first.path;
    } else {
      return "";
    }
  }

  static Future<File> savePdf(
      {required String name, required Document pdf}) async {
    final byte = await pdf.save();
    final dir = await getpath();
    final file = File('$dir/$name.pdf');

    await file.writeAsBytes(byte);
    return file;
  }
}
