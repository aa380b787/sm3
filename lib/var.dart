import 'package:flutter/foundation.dart';
import 'main.dart';

class Q extends InheritedWidget {
  Q({Key? key, required Widget child, required this.q})
      : super(key: key, child: child);
  final MMyHomePageState q;
  static Q of(BuildContext context) {
    final Q? result = context.dependOnInheritedWidgetOfExactType<Q>();
    return result!;
  }

  @override
  bool updateShouldNotify(oldWidget) => true;
}

const int rate_screen = 100;

///تغيير السورة
xchangezsurax(context) {
  for (var i = 0; i < 114; i++) {
    if ((xmadinax ? xacpx[i]['m'] : xacpx[i]['sh']) <= xpagex) {
      xsurax = xacpx[i]['sura'];
    }
  }
  xsavezfile1x(context);
}

///عند اللمس
xtouchx(context, details) {
  xxx = context
          .findRenderObject()
          .globalToLocal(details.globalPosition)
          .dx
          .toInt() +
      0.0;
  xyx = context
          .findRenderObject()
          .globalToLocal(details.globalPosition)
          .dy
          .toInt() +
      0.0;
  xsavezfile1x(context);
}

bool downloaded = false;

///عند البدأ
bool xzerox = true;

bool touch_not = false;

///عند البدأ
bool xbool1x = true;

///عند البدأ
bool xbool2x = true;

///الصحف ام السور
bool xsurboolx = true;

///المظلم
bool xdarkzmodex = false;

///اسم السورة
String xsurax = "الفاتحة";

///رقم الصفحة
int xpagex = 1;

///x موضع اللمس
double xxx = 0.38790233074361824;

///xyx موضع اللمس
double xyx = 0.5038845726970034;

///وضع القراءة
bool xreadx = false;

///مصحف المدينة
bool xmadinax = true;

///تحويل لـ json
Map xtoJsonx = {};

///save json with string
String xsaveJsonx = '';

/// 0 م
///
/// 1 x
///
/// 2 y
///
/// 3 الصفحة
///
/// 4 المدينة
///
/// 5 درجة التعتيم
List xerjpx = [];
List xerjpx2 = [];

///مظلم كثيرا
Color? xgrey9x = Colors.grey[900];

///طول الشاشة الفعلى
double xheightx = 0.0;

///طول الشاشة الفعلى
double xwidthx = 0.0;

String zurl = '';
bool exitb = false;
bool listPage = false;
bool listErr = false;
bool writeScreen = false;
bool settingb = false;
String inWriteScreen = '';
Map xalljx = {'in': {}, 'er': []};

///حفظ اللحظة
void xsavezfile1x(context) {
  xalljx['in']["xpagex"] = xpagex;
  xalljx['in']["xreadx"] = xreadx;
  xalljx['in']["xdarkzmodex"] = xdarkzmodex;
  xalljx['in']["xmadinax"] = xmadinax;
  xalljx['in']["xxx"] = xxx / xwidthx;
  xalljx['in']["xyx"] = xyx / xheightx;
  xalljx['er'] = xerjpx;
  dir_save_csv('sm3', xalljx);
}

ximagex(x) {
    return Image.network(
        (xmadinax
                ? 'https://ia804506.us.archive.org/23/items/591_20210527_202105/'
                : 'https://ia804500.us.archive.org/7/items/0002_20210527/') +
            (xmadinax
                ? '$x'
                : x.toString().length == 1
                    ? '000$x'
                    : x.toString().length == 2
                        ? '00$x'
                        : '0$x') +
            '.' +
            (xmadinax ? 'jpg' : 'png'),
        color: xdarkzmodex ? Colors.white : Colors.black,
        colorBlendMode: BlendMode.difference,
        fit: BoxFit.fill);

}

int countRun = 1;
String appNameS = '';
String datime = '';
String datetimenow = '';
String searchhh = "";

String zsearch = "";

String zhash = "";

double zscrollPositionx = 0;

/// م 0
///
/// السورة 1
///
/// المدينة 2
///
/// الشمرلى 3
List xacpx = [
  {"s": 1, "sura": "الفاتحة", "m": 1, "sh": 2},
  {"s": 2, "sura": "البقرة", "m": 2, "sh": 3},
  {"s": 3, "sura": "آل عمران", "m": 50, "sh": 42},
  {"s": 4, "sura": "النساء", "m": 77, "sh": 64},
  {"s": 5, "sura": "المائدة", "m": 106, "sh": 87},
  {"s": 6, "sura": "الأنعام", "m": 128, "sh": 105},
  {"s": 7, "sura": "الأعراف", "m": 151, "sh": 123},
  {"s": 8, "sura": "الأنفال", "m": 177, "sh": 145},
  {"s": 9, "sura": "التوبة", "m": 187, "sh": 153},
  {"s": 10, "sura": "يونس", "m": 208, "sh": 169},
  {"s": 11, "sura": "هود", "m": 221, "sh": 181},
  {"s": 12, "sura": "يوسف", "m": 235, "sh": 193},
  {"s": 13, "sura": "الرعد", "m": 249, "sh": 205},
  {"s": 14, "sura": "إبراهيم", "m": 255, "sh": 210},
  {"s": 15, "sura": "الحجر", "m": 262, "sh": 216},
  {"s": 16, "sura": "النحل", "m": 267, "sh": 221},
  {"s": 17, "sura": "الإسراء", "m": 282, "sh": 233},
  {"s": 18, "sura": "الكهف", "m": 293, "sh": 243},
  {"s": 19, "sura": "مريم", "m": 305, "sh": 253},
  {"s": 20, "sura": "طه", "m": 312, "sh": 260},
  {"s": 21, "sura": "الأنبياء", "m": 322, "sh": 268},
  {"s": 22, "sura": "الحج", "m": 332, "sh": 276},
  {"s": 23, "sura": "المؤمنون", "m": 342, "sh": 284},
  {"s": 24, "sura": "النّور", "m": 350, "sh": 291},
  {"s": 25, "sura": "الفرقان", "m": 359, "sh": 300},
  {"s": 26, "sura": "الشعراء", "m": 367, "sh": 306},
  {"s": 27, "sura": "النّمل", "m": 377, "sh": 315},
  {"s": 28, "sura": "القصص", "m": 385, "sh": 323},
  {"s": 29, "sura": "العنكبوت", "m": 396, "sh": 332},
  {"s": 30, "sura": "الرّوم", "m": 404, "sh": 338},
  {"s": 31, "sura": "لقمان", "m": 411, "sh": 344},
  {"s": 32, "sura": "السجدة", "m": 415, "sh": 347},
  {"s": 33, "sura": "الأحزاب", "m": 418, "sh": 350},
  {"s": 34, "sura": "سبأ", "m": 428, "sh": 358},
  {"s": 35, "sura": "فاطر", "m": 434, "sh": 364},
  {"s": 36, "sura": "يس", "m": 440, "sh": 369},
  {"s": 37, "sura": "الصافات", "m": 446, "sh": 374},
  {"s": 38, "sura": "ص", "m": 453, "sh": 380},
  {"s": 39, "sura": "الزمر", "m": 458, "sh": 385},
  {"s": 40, "sura": "غافر", "m": 467, "sh": 392},
  {"s": 41, "sura": "فصّلت", "m": 477, "sh": 400},
  {"s": 42, "sura": "الشورى", "m": 483, "sh": 405},
  {"s": 43, "sura": "الزخرف", "m": 489, "sh": 411},
  {"s": 44, "sura": "الدّخان", "m": 496, "sh": 417},
  {"s": 45, "sura": "الجاثية", "m": 499, "sh": 419},
  {"s": 46, "sura": "الأحقاف", "m": 502, "sh": 423},
  {"s": 47, "sura": "محمد", "m": 507, "sh": 427},
  {"s": 48, "sura": "الفتح", "m": 511, "sh": 430},
  {"s": 49, "sura": "الحجرات", "m": 515, "sh": 434},
  {"s": 50, "sura": "ق", "m": 518, "sh": 437},
  {"s": 51, "sura": "الذاريات", "m": 520, "sh": 439},
  {"s": 52, "sura": "الطور", "m": 523, "sh": 442},
  {"s": 53, "sura": "النجم", "m": 526, "sh": 444},
  {"s": 54, "sura": "القمر", "m": 528, "sh": 447},
  {"s": 55, "sura": "الرحمن", "m": 531, "sh": 449},
  {"s": 56, "sura": "الواقعة", "m": 534, "sh": 452},
  {"s": 57, "sura": "الحديد", "m": 537, "sh": 455},
  {"s": 58, "sura": "المجادلة", "m": 542, "sh": 459},
  {"s": 59, "sura": "الحشر", "m": 545, "sh": 462},
  {"s": 60, "sura": "الممتحنة", "m": 549, "sh": 465},
  {"s": 61, "sura": "الصف", "m": 551, "sh": 468},
  {"s": 62, "sura": "الجمعة", "m": 553, "sh": 469},
  {"s": 63, "sura": "المنافقون", "m": 554, "sh": 471},
  {"s": 64, "sura": "التغابن", "m": 556, "sh": 472},
  {"s": 65, "sura": "الطلاق", "m": 558, "sh": 474},
  {"s": 66, "sura": "التحريم", "m": 560, "sh": 476},
  {"s": 67, "sura": "الملك", "m": 562, "sh": 478},
  {"s": 68, "sura": "القلم", "m": 564, "sh": 480},
  {"s": 69, "sura": "الحاقة", "m": 566, "sh": 482},
  {"s": 70, "sura": "المعارج", "m": 568, "sh": 484},
  {"s": 71, "sura": "نوح", "m": 570, "sh": 486},
  {"s": 72, "sura": "الجن", "m": 572, "sh": 488},
  {"s": 73, "sura": "المزّمّل", "m": 574, "sh": 490},
  {"s": 74, "sura": "المدّثر", "m": 575, "sh": 491},
  {"s": 75, "sura": "القيامة", "m": 577, "sh": 493},
  {"s": 76, "sura": "الإنسان", "m": 578, "sh": 495},
  {"s": 77, "sura": "المرسلات", "m": 580, "sh": 497},
  {"s": 78, "sura": "النبأ", "m": 582, "sh": 498},
  {"s": 79, "sura": "النازعات", "m": 583, "sh": 500},
  {"s": 80, "sura": "عبس", "m": 585, "sh": 501},
  {"s": 81, "sura": "التكوير", "m": 586, "sh": 502},
  {"s": 82, "sura": "الإنفطار", "m": 587, "sh": 503},
  {"s": 83, "sura": "المطفّفين", "m": 587, "sh": 504},
  {"s": 84, "sura": "الإنشقاق", "m": 589, "sh": 505},
  {"s": 85, "sura": "البروج", "m": 590, "sh": 506},
  {"s": 86, "sura": "الطارق", "m": 591, "sh": 507},
  {"s": 87, "sura": "الأعلى", "m": 591, "sh": 508},
  {"s": 88, "sura": "الغاشية", "m": 592, "sh": 509},
  {"s": 89, "sura": "الفجر", "m": 593, "sh": 510},
  {"s": 90, "sura": "البلد", "m": 594, "sh": 511},
  {"s": 91, "sura": "الشمس", "m": 595, "sh": 512},
  {"s": 92, "sura": "الليل", "m": 595, "sh": 512},
  {"s": 93, "sura": "الضحى", "m": 596, "sh": 513},
  {"s": 94, "sura": "الشرح", "m": 596, "sh": 514},
  {"s": 95, "sura": "التين", "m": 597, "sh": 514},
  {"s": 96, "sura": "العلق", "m": 597, "sh": 514},
  {"s": 97, "sura": "القدر", "m": 598, "sh": 515},
  {"s": 98, "sura": "البينة", "m": 598, "sh": 516},
  {"s": 99, "sura": "الزلزلة", "m": 599, "sh": 516},
  {"s": 100, "sura": "العاديات", "m": 599, "sh": 517},
  {"s": 101, "sura": "القارعة", "m": 600, "sh": 517},
  {"s": 102, "sura": "التكاثر", "m": 600, "sh": 518},
  {"s": 103, "sura": "العصر", "m": 601, "sh": 518},
  {"s": 104, "sura": "الهمزة", "m": 601, "sh": 519},
  {"s": 105, "sura": "الفيل", "m": 601, "sh": 519},
  {"s": 106, "sura": "قريش", "m": 602, "sh": 520},
  {"s": 107, "sura": "الماعون", "m": 602, "sh": 520},
  {"s": 108, "sura": "الكوثر", "m": 602, "sh": 520},
  {"s": 109, "sura": "الكافرون", "m": 603, "sh": 521},
  {"s": 110, "sura": "النصر", "m": 603, "sh": 521},
  {"s": 111, "sura": "المسد", "m": 603, "sh": 521},
  {"s": 112, "sura": "الإخلاص", "m": 604, "sh": 522},
  {"s": 113, "sura": "الفلق", "m": 604, "sh": 522},
  {"s": 114, "sura": "النّاس", "m": 604, "sh": 522}
];
