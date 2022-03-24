// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:sm3/main.dart';

import 'dirhtml.dart';

///الحصول من ملف csv
Future dir_get_csv(x) async {
  Map ss = {};
  String s = await dir_get(kIsWeb ? x : x + csv_ext);
  ss = ((s == '') ? {} : csv_to_list(s));
  return ss;
}

///حفظ فى ملف csv
dir_save_csv(x, y) {
  dir_save((kIsWeb ? x : x + csv_ext), jsonEncode(y));
}

String csv_ext = ".json";

csv_to_list(x) {
  return jsonDecode(x);
}

list_to_csv(x) {
  return jsonEncode(x);
}

url_keep_store() {
  url_keep_storez();
}

url_keep_write() {
  url_keep_writez();
}

Future dp() async {
  return await dpp();
}

dpw() {
  dpww();
}

class Downloaded extends StatelessWidget {
  const Downloaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return f_download(context);
  }
}

is_android_web() {
  return is_android_web_();
}
