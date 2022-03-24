import 'dart:convert';

import 'package:flutter/services.dart';

import 'main.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class Setting extends StatelessWidget {
  Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenFront(
        backgroundColor: Color.fromARGB(200, 50, 50, 50),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //open button-----------------------
              Sub(
                  text: 'نسخ رابط الاخطاء',
                  icon: Icons.link,
                  f: () {
                    Clipboard.setData(ClipboardData(text: 'https://eg55.herokuapp.com/sm3/?'+char_decode(jsonEncode(xalljx))));
                    settingb = !settingb;
                    Q.of(context).q.qq();
                  }),
              //share button-----------------------
              Sub(
                  text: 'مشاركة الاخطاء',
                  icon: Icons.share,
                  f: () {
                    Share.share('https://eg55.herokuapp.com/sm3/?'+char_decode(jsonEncode(xalljx)));
                    settingb = !settingb;
                    Q.of(context).q.qq();
                  }),
              //xreadx button-----------------------
              Sub(
                  text: xreadx ? 'وضع التسميع' : 'وضع القراءة',
                  icon: Icons.pan_tool,
                  f: () {
                    xreadx = !xreadx;
                    inWriteScreen = xreadx ? 'وضع القراءة' : 'وضع التسميع';
                    settingb = !settingb;
                    Q.of(context).q.qq();
                  }),
              //xmadinax button-----------------------
              /*Sub(
                                                          text: xmadinax
                                                              ? 'مصحف الشمرلى'
                                                              : 'مصحف التجويد',
                                                          icon: Icons
                                                              .menu_book_outlined,
                                                          f: () {
                                                              xpagex = xmadinax
                                                                  ? 2
                                                                  : 1;
                                                              xmadinax =
                                                                  !xmadinax;
                                                            inWriteScreen =xmadinax
                                                                    ? 'مصحف التجويد'
                                                                    : 'مصحف الشمرلى';
                                settingb = !settingb;
                                                                    xchangezsurax(context);
                                Q.of(context).q.qq();
                                                          }),*/
              // color--------
              // syscolor--------
              Sub(
                  text: xdarkzmodex ? 'الصفحة فاتحة' : 'الصفحة داكنة',
                  icon: Icons.brightness_4,
                  f: () {
                    xdarkzmodex = !xdarkzmodex;
                    inWriteScreen =
                        xdarkzmodex ? 'الصفحة داكنة' : 'الصفحة فاتحة';
                    settingb = !settingb;
                    Q.of(context).q.qq();
                  }),
              // back--------
              Sub(
                  text: 'رجوع',
                  icon: Icons.arrow_back,
                  f: () {
                    settingb = !settingb;
                    Q.of(context).q.qq();
                  })
            ]));
  }
}
