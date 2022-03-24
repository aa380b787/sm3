// ignore_for_file: non_constant_identifier_names, constant_identifier_names

import 'dart:convert';

class Dt {
  final DateTime date;
  Dt({date}) : date = date ?? DateTime.now();
  var xweekx = ["Sun", "Mon", "Tues", "Wednes", "Thurs", "Fri", "Satur"];
  var xweekarx = [
    "الأحد",
    "الإثنين",
    "الثلاثاء",
    "الأربعاء",
    "الخميس",
    "الجمعة",
    "السبت"
  ];

  /// Zero Start string*/
  z(x) {
    if (x.toString().length == 1) {
      return "0" + x.toString();
    } else {
      return x.toString();
    }
  }

  /// Zero Start string*/
  z_mse(x) {
    if (x.toString().length == 1) {
      return "00" + x.toString();
    } else if (x.toString().length == 2) {
      return "0" + x.toString();
    } else {
      return x.toString().substring(0, 3);
    }
  }

  /// milli*/
  l_mse() {
    return date.millisecond;
  }

  /// second */
  l_se() {
    return date.second;
  }

  /// minute */
  l_mi() {
    return date.minute;
  }

  /// 24 hours */
  l_h24() {
    return date.hour;
  }

  /// 12 hours */
  l_h12() {
    return (date.hour == 0)
        ? 12
        : (date.hour >= 12)
            ? date.hour - 12
            : date.hour;
  }

  /// AM - PM*/
  l_ampm() {
    return (date.hour > 12) ? "PM" : "AM";
  }

  /// ص-م*/
  l_ampmar() {
    return (date.hour > 12) ? "م" : "ص";
  }

  /// Saturday*/
  l_weekday() {
    return xweekx[date.weekday] + "day";
  }

  /// Sat*/
  l_week() {
    return xweekx[date.weekday].substring(0, 3);
  }

  /// السبت*/
  l_weekar() {
    return xweekarx[date.weekday];
  }

  /// 1-31*/
  l_day() {
    return date.day;
  }

  /// 1-12*/
  l_mo() {
    return date.month;
  }

  /// 2019*/
  l_yearf() {
    return date.year;
  }

  /// 19*/
  l_year() {
    return date.year - 2000;
  }

  /// milli*/
  u_mse() {
    return date.toUtc().millisecond;
  }

  /// second */
  u_se() {
    return date.toUtc().second;
  }

  /// minute */
  u_mi() {
    return date.toUtc().minute;
  }

  /// 24 hours */
  u_h24() {
    return date.toUtc().hour;
  }

  /// 12 hours */
  u_h12() {
    return (date.toUtc().hour == 0)
        ? 12
        : (date.toUtc().hour >= 12)
            ? date.toUtc().hour - 12
            : date.toUtc().hour;
  }

  /// AM - PM*/
  u_ampm() {
    return (date.toUtc().hour > 12) ? "PM" : "AM";
  }

  /// ص-م*/
  u_ampmar() {
    return (date.toUtc().hour > 12) ? "م" : "ص";
  }

  /// Saturday*/
  u_weekday() {
    return xweekx[date.toUtc().weekday] + "day";
  }

  /// Sat*/
  u_week() {
    return xweekx[date.toUtc().weekday].substring(0, 3);
  }

  /// السبت*/
  u_weekar() {
    return xweekarx[date.toUtc().weekday];
  }

  /// 1-31*/
  u_day() {
    return date.toUtc().day;
  }

  /// 1-12*/
  u_mo() {
    return date.toUtc().month;
  }

  /// 2019*/
  u_yearf() {
    return date.toUtc().year;
  }

  /// 19*/
  u_year() {
    return date.toUtc().year - 2000;
  }

  l_now_all() {
    return z(l_yearf()) +
        "-" +
        z(l_mo()) +
        "-" +
        z(l_day()) +
        " " +
        z(l_h24()) +
        ":" +
        z(l_mi()) +
        ":" +
        z(l_se()) +
        "." +
        z_mse(l_mse());
  }

  l_now_short() {
    return z(l_year()) +
        "-" +
        z(l_mo()) +
        "-" +
        z(l_day()) +
        " " +
        z(l_h24()) +
        ":" +
        z(l_mi()) +
        ":" +
        z(l_se());
  }
}

const char_ar = [
  ["عبد ال", "عبدال"],
  ["ى", "ي"],
  ["ة", "ه"],
  ["وال", ""],
  ["ال", ""],
  ["أ", "ا"],
  ["إ", "ا"],
  ["آ", "ا"],
  ["ـ", ""],
  ["ّ", ""],
  ["َ", ""],
  ["ً", ""],
  ["ُ", ""],
  ["ٌ", ""],
  ["‘", " "],
  ["؛", " "],
  ["ِ", ""],
  ["ٍ", ""],
  ["،", " "],
  ["~", " "],
  ["ْ", ""],
  ["’", " "],
  [",", " "],
  ['٠', '0'],
  ['١', '1'],
  ['٢', '2'],
  ['٣', '3'],
  ['٤', '4'],
  ['٥', '5'],
  ['٦', '6'],
  ['٧', '7'],
  ['٨', '8'],
  ['٩', '9'],
];
const charr = [
  ["\n", "xwq"],
  ["`", "xaz"],
  ["~", "xbz"],
  ["!", "xcz"],
  ["@", "xdz"],
  ["#", "xez"],
  ["\$", "xfz"],
  ["%", "xgz"],
  ["^", "xhz"],
  ["&", "xiz"],
  ["*", "xjz"],
  ["(", "xkz"],
  [")", "xlz"],
  ["-", "xmz"],
  ["=", "xnz"],
  ["+", "xoz"],
  ["[", "xpz"],
  ["]", "xqz"],
  ["{", "xrz"],
  ["}", "xsz"],
  [";", "xtz"],
  [":", "xuz"],
  ["'", "xvz"],
  ['"', "xwz"],
  ["\\", "xaq"],
  ["|", "xbq"],
  [",", "xcq"],
  [".", "xdq"],
  ["<", "xeq"],
  [">", "xfq"],
  ["/", "xgq"],
  ["?", "xhq"],
  ["	", "xiq"],
  /*["_","xjq"],
  [" ","xkq"],
  ["0","xlq"],
  ["1","xmq"],
  ["2","xnq"],
  ["3","xoq"],
  ["4","xpq"],
  ["5","xrq"],
  ["6","xsq"],
  ["7","xtq"],
  ["8","xuq"],
  ["9","xvq"],*/
];

char_encode(jso) {
  for (var i = 0; i < charr.length; i++) {
    jso = jso.replaceAll(charr[i][1], charr[i][0]);
  }
  return jso;
}

char_decode(urll) {
  for (var i = 0; i < charr.length; i++) {
    urll = urll.replaceAll(charr[i][0], charr[i][1]);
  }
  return urll;
}
