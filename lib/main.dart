import 'dart:convert';

import 'package:sm3/const.dart';

import 'mmm/dir.dart';
import 'mother.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'var.dart';
import 'package:uni_links/uni_links.dart';
export 'const.dart';
export 'bar.dart';
export 'listerr.dart';
export 'listpage.dart';
export 'mother.dart';
export 'pages.dart';
export 'posi.dart';
export 'setting.dart';
export 'sub.dart';
export 'var.dart';
export 'mmm/dir.dart';
export 'mmm/exit.dart';
export 'mmm/screenfront.dart';
export 'mmm/textt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    url_keep_store();
    return MaterialApp(
      title: 'سمع لنفسك',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  MMyHomePageState createState() => MMyHomePageState();
}

class MMyHomePageState extends State<MyHomePage> {
  var _link = null;
  double _rate = 0;
  @override
  void initState() {
    if (is_android_web()) downloaded = true;
    try {
      getInitialLink().then((value) {
        _link = jsonDecode(char_encode(
            ((Uri.decodeComponent(value.toString()).split('?')[1].toString())
                    .split('&')[0]
                    .toString())
                .split('#')[0]
                .toString()));
      });
    } catch (e) {
      _link = null;
    }
    super.initState();
    /*WidgetsBinding.instance?.addObserver(
      LifecycleEventHandler(resumeCallBack: () async {
        print("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
      }),
    );*/
  }

  void qq() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if ((MediaQuery.of(context).size.height +
                MediaQuery.of(context).size.width !=
            _rate)) {
      xzerox = true;
      xbool2x = true;
    }
    if (xzerox) {
      xzerox = false;
      _rate = MediaQuery.of(context).size.height +
          MediaQuery.of(context).size.width;
      double _height = MediaQuery.of(context).size.height -
          MediaQuery.of(context).padding.top -
          MediaQuery.of(context).padding.bottom -
          100;

      double _width = MediaQuery.of(context).size.width -
          MediaQuery.of(context).padding.left -
          MediaQuery.of(context).padding.right;
      if (_height / _width > 3) {
        xheightx = _width * 3;
      } else {
        xheightx = _height;
      }
      if (_height / _width < (3 / 2)) {
        xwidthx = (_height / 3) * 2;
      } else {
        xwidthx = _width;
      }

      // Future.delayed(Duration(milliseconds: 1), () {
      //   setState(() {
      //     xxx = xxx * xwidthx;
      //     xyx = xyx * xheightx;
      //   });
      //   });
      dp().then((eerr) {
        if (xxx == 0.38790233074361824 && xyx == 0.5038845726970034) {
          setState(() {
            xxx = xxx * xwidthx;
            xyx = xyx * xheightx;
          });
        }
        dir_get_csv('sm3').then((value) {
          setState(() {
            xbool2x = false;
          });
          if (_link == null && value != {}) _link = value;
          if (_link != null) {
            setState(() {
              xpagex = _link['in']["xpagex"];
              xreadx = _link['in']["xreadx"];
              xdarkzmodex = _link['in']["xdarkzmodex"];
              xmadinax = _link['in']["xmadinax"];
              xxx = _link['in']["xxx"] * xwidthx;
              xyx = _link['in']["xyx"] * xheightx;
              xerjpx = _link['er'];
            });
      _link = null;
            xchangezsurax(context);
            //zscrollPositionx = value[7][0];
            Future.delayed(Duration(milliseconds: 100), () {
              setState(() {});
            });
          }
        }).onError((error, stackTrace) {
          setState(() {
            xbool2x = false;
          });
        });
      });
    }
    //SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Q(
      q: this,
      child: AbsorbPointer(
        absorbing: touch_not,
        child: WillPopScope(
          onWillPop: () async {
            if (listPage ||
                listErr ||
                writeScreen ||
                settingb ||
                exitb ||
                downloaded) {
              listPage = false;
              listErr = false;
              writeScreen = false;
              settingb = false;
              exitb = false;

              setState(() {});
            } else {
              exitb = true;
              setState(() {});
            }
            return false;
          },
          child: Scaffold(
            backgroundColor: Colors.grey,
            body: Row(
              children: [
                Container(
                    width: (MediaQuery.of(context).size.width - xwidthx) / 2),
                Container(
                  width: xwidthx,
                  height: MediaQuery.of(context).size.height,
                  child: !xbool2x
                      ? Mother()
                      : Center(
                          child: CircularProgressIndicator(),
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
