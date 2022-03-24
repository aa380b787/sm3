// ignore_for_file: unused_element

import 'main.dart';
export 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  Bar({Key? key}) : super(key: key);

  ///تقليب الصفح
  xpagezplusx(context, x) {
    if (xpagex != (x ? (xmadinax ? 604 : 522) : (xmadinax ? 1 : 2))) {
      x ? xpagex++ : xpagex--;
      xxx = 0;
      xyx = 0;
    } else {
      xpagex = x ? (xmadinax ? 1 : 2) : (xmadinax ? 604 : 522);
      xxx = 0;
      xyx = 0;
    }
    xchangezsurax(context);
  }

  ///عملية الحفظ
  _xjisx(context, x) {
    xerjpx.add({
      "xpagex": xpagex,
      "xreadx": xreadx,
      "xdarkzmodex": xdarkzmodex,
      "xmadinax": xmadinax,
      "xxx": (xxx / xwidthx),
      "xyx": ((xyx) / xheightx)
    });
    xsavezfile1x(xerjpx);
    Q.of(context).q.qq();
  }

  ///اظهار واخفاء
  xhideShowx(context) {
    if (!xreadx) {
      if (xpagex != 1) {
        xpagex--;
        xyx = 4000.0;
        Future.delayed(Duration(seconds: 2), () {
          xpagex++;
          xxx = 0.0;
          xyx = 0.0;
        });
      }
      xsavezfile1x(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: ((MediaQuery.of(context).size.height - xheightx - MediaQuery.of(context).padding.top- MediaQuery.of(context).padding.bottom)>100?(MediaQuery.of(context).size.height- xheightx  - MediaQuery.of(context).padding.top- MediaQuery.of(context).padding.bottom):100),
        width: xwidthx,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("a/bar.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //حفظ الخطأ-------------------
          InkWell(
            onDoubleTap: () {
              if (xerjpx.isNotEmpty) {
                xerjpx[xerjpx.length - 1]['xdarkzmodex'] = 3;
                xsavezfile1x(context);
                Q.of(context).q.qq();
              }
            },
            onLongPress: () {
              xerjpx.add({"xpagex":xpagex, "xreadx":xreadx, "xdarkzmodex":2, "xmadinax":xmadinax, "xxx":(xxx / xwidthx), "xyx":((xyx) / xheightx)});
              xsavezfile1x(context);
              Q.of(context).q.qq();
            },
            child: Sub(
                text: xerjpx.length.toString(),
                f: () {
                  xerjpx.add({"xpagex":xpagex, "xreadx":xreadx, "xdarkzmodex":1, "xmadinax":xmadinax, "xxx":(xxx / xwidthx), "xyx":((xyx) / xheightx)});
                  xsavezfile1x(context);
                  Q.of(context).q.qq();
                }),
          ),
          //سجل الاخطاء-----------------------------
          Sub(
              icon: Icons.view_headline,
              f: () {
                listErr = !listErr;
                xchangezsurax(context);
                Q.of(context).q.qq();
              }),
          //xsurax -----------------
          Sub(
              f: () {
                xsurboolx = true;
                listPage = !listPage;
                xchangezsurax(context);
                Q.of(context).q.qq();
              },
              text: xsurax,
              widthcr: 2),
          //forward button-----------------
          Sub(
              icon: Icons.arrow_back_ios_new,
              f: () {
                xpagezplusx(context, true);
                Q.of(context).q.qq();
              }),
          //xpagex button---------------
          Sub(
              text: '$xpagex',
              f: () {
                xsurboolx = false;
                listPage = !listPage;
                xchangezsurax(context);
                Q.of(context).q.qq();
              }),
          //back button-------------------
          Sub(
              icon: Icons.arrow_forward_ios,
              f: () {
                xpagezplusx(context, false);
                Q.of(context).q.qq();
              }),
          //setting----------------
          Sub(
              icon: Icons.settings,
              f: () {
                settingb = !settingb;
                Q.of(context).q.qq();
              })
        ]));
  }
}
