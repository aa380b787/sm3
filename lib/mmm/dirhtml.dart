// ignore_for_file: non_constant_identifier_names

// ignore: avoid_web_libraries_in_flutter
import 'dart:convert';
import 'dart:html' as html;
import 'package:sm3/main.dart';


///حفظ فى ملف
Future local_save(x, y) async {
  html.window.localStorage[x] = char_decode(jsonEncode(xalljx));
}

is_android_web_() {
  return false;//html.window.navigator.userAgent.contains("android");
}

url_keep_storez() {
  zurl = html.window.location.toString();
  zsearch = (html.window.location.search.toString().length > 1)
      ? ((Uri.decodeComponent(html.window.location.search.toString()).split('?')[1].toString()).split('&')[0].toString()).split('#')[0].toString()
      : "";
  zhash = (html.window.location.hash.toString().length > 1)
      ? html.window.location.hash.toString().substring(1)
      : "";
}

url_keep_writez() {
  //html.window.history.replaceState('', '', '?' + zsearch + '#' + zhash);
}

hash_save(x) {
  zhash = x.toString();
  html.window.history.replaceState(
      '', '', html.window.location.search.toString() + '#' + x.toString());
}

hash_get() {
  return (html.window.location.hash == ''
      ? ''
      : html.window.location.hash.substring(1));
}

search_save() {
  html.window.history
      .replaceState('', '', '?' + char_decode(jsonEncode(xalljx)));
}

///حفظ فى ملف
dir_save(x, y) {
  local_save(x, y);
  search_save();
}

///الحصول من ملف
Future dir_get(x) async {
  if (zsearch.length > 4) {
    return char_encode(zsearch);
  } else if (html.window.localStorage[x].toString().length > 4) {
    return char_encode(html.window.localStorage[x].toString());
  }
}

dpp() async {
  if (html.window.localStorage['date_time'] != null) {
    var s = html.window.localStorage['date_time'];
    var ss = html.window.localStorage['count_run'];
    return [s, int.parse(ss.toString()) + 1];
  } else {
    return ['', 1];
  }
}

dpww() {
  if (countRun != 1) {
    local_save('count_run', countRun.toString());
  } else {
    local_save('date_time', datetimenow);
    local_save('count_run', "1");
  }
}

f_download(context) {
  return ScreenFront(
    backgroundColor: Color.fromARGB(148, 163, 88, 88),
    child: Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 188, 186, 211),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Textt(
            "تنزيل التطبيق",
            size: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  onPressed: () {
                    html.window.location.replace('https://www.google.com/');
                  },
                  child: Textt(
                    "نعم",
                    size: 20,
                  )),
              ElevatedButton(
                  onPressed: () {
                    downloaded = false;
                    Q.of(context).q.qq();
                  },
                  child: Textt(
                    "لا",
                    size: 20,
                  )),
            ],
          ),
        ],
      ),
    ),
  );
}
