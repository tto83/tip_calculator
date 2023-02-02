import 'dart:async';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

Future<String> get _localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<File> get _localFile async {
  final path = await _localPath;
  DateTime timeStamp = DateTime.now();
  // print('$path/$timeStamp.txt');
  return File('$path/$timeStamp.txt');

}

Future<File> writeData(int tipPercentage, int personCount, double bill) async {
  final file = await _localFile;

  return file.writeAsString('$tipPercentage;$personCount;$bill');
}

