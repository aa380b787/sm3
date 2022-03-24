// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:sm3/main.dart';

import '../var.dart';
import 'package:path_provider/path_provider.dart';

///الحصول من ملف getApplicationDocumentsDirectory
String _dpp = "";

File _ss = File('');
File _sss = File('');
dpp() async {
  Directory appDocDir = await getApplicationDocumentsDirectory();
  _dpp = appDocDir.path + '\\';
}

dpww() {
  if (_ss.existsSync()) {
    _sss.writeAsString(countRun.toString());
  } else {
    _ss.writeAsString(datetimenow);
    _sss.writeAsString("1");
  }
}

dppp(x) {
  //_dpp.path.substring(0,_dpp.path.length-1)
  return File(_dpp + "/" + x);
}

///حفظ فى ملف
dir_save(x, y) {
  File(_dpp + x).writeAsString(y);
}

///الحصول من ملف
Future dir_get(x) async {
  String s = "";
  if (File(_dpp + x).existsSync()) s = File(_dpp + x).readAsStringSync();
  return s;
}

url_keep_storez() {}
url_keep_writez() {}
Map get_inf_webz() {
  return {};
}

f_download(context) {
  return Container();
}

is_android_web_() {
  return false;
}
