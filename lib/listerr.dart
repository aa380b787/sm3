// ignore_for_file: prefer_final_fields

import 'main.dart';

class ListErr extends StatelessWidget {
  ScrollController _scrollController =
      ScrollController(initialScrollOffset: zscrollPositionx);

  _scrollListener() {
    zscrollPositionx = _scrollController.position.pixels;
  }

  ///جزء من الصفحة
  xpartzpagex(context, xkmadinax, xkpagex, xkyx, xendx) {
    if (xendx) {
      xkpagex = xkyx < 0.21 ? xkpagex - 1 : xkpagex;
      xkmadinax = xkmadinax;
      xkyx = xkyx < 0.21 ? 1.155 : xkyx;
    }
    return Column(
      children: [
        ClipRect(
            child: SizedBox(
                width: xwidthx,
                height: xheightx * (xendx ? 0.07 : 0.14),
                child: OverflowBox(
                    maxWidth: xwidthx * (xkmadinax ? 1.25 : 1.5),
                    maxHeight: xheightx * (xkmadinax ? 1.17 : 1.4),
                    child: Align(
                        alignment: Alignment(
                            (xkmadinax ? (xkpagex.isEven ? -14.5 : 16) : .1),
                            xkmadinax
                                ? ((xendx ? 1.52 : 1.51) - xkyx * 2.07) * 48.5
                                : ((xendx ? 1.53 : 1.44) - xkyx * 2.17) * 6.1),
                        child: SizedBox(
                            width: xwidthx * (xkmadinax ? 1.24 : 1.37),
                            height:
                                xheightx * (xkmadinax ? 1.15 : 1.25),
                            child: ximagex(xkpagex)))))),
        if (xendx)
          SizedBox(
            width: xwidthx,
            height: xheightx * (0.07),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(_scrollListener);
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 60,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Sub(
                    icon: Icons.arrow_back,
                    f: () {
                      listErr = !listErr;
                      xchangezsurax(context);
                      Q.of(context).q.qq();
                    }),
                Text('سجل الأخطاء'),
                Text('${xerjpx.length}'),
                if (xerjpx2.isNotEmpty)
                  InkWell(
                      onTap: () {
                        xerjpx = xerjpx2;
                        xerjpx2 = [];
      xsavezfile1x(context);
                          Q.of(context).q.qq();
                      },
                      child: ClipOval(
                        child: Container(
                          height: 50,
                          width: 50,
                          color: Colors.blue[900],
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.redo_sharp),
                              Text(
                                '  تراجع',
                                style: TextStyle(fontSize: 11),
                              )
                            ],
                          ),
                        ),
                      )),
                InkWell(
                    onTap: () {
                      xerjpx2 = xerjpx;
                      xerjpx = [];
      xsavezfile1x(context);
                      Q.of(context).q.qq();
                    },
                    child: ClipOval(
                      child: Container(
                        height: 50,
                        width: 50,
                        color: Colors.blue[900],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.cancel_sharp),
                            Text(
                              'الكل',
                              style: TextStyle(fontSize: 11),
                            )
                          ],
                        ),
                      ),
                    ))
              ],
            )),
        body: SafeArea(
          child: ListView.builder(
              controller: _scrollController,
              itemCount: xerjpx.length,
              itemBuilder: (context, i) {
                double xjx = xerjpx[i]['xxx'] * xwidthx;
                double _xx = xjx + (xjx - (xwidthx / 2)) / 5;
                return Scrollbar(
                  child: Column(
                    children: [
                      if (i == 0)
                        Container(
                          height: xheightx*0.96,
                          color: xdarkzmodex ? xgrey9x : Colors.transparent,
                        ),
                      Container(
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: 2, color: Colors.lightBlue.shade600),
                              bottom: BorderSide(
                                  width: 2, color: Colors.lightBlue.shade900),
                            ),
                            color: Colors.white,
                          ),
                          child: Dismissible(
                              key: UniqueKey(),
                              onDismissed: (direction) {
                                xerjpx2 = [];
                                xerjpx2.addAll(xerjpx);
                                xerjpx.removeAt(i);
      xsavezfile1x(context);
                                Q.of(context).q.qq();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                InkWell(
                                    onTap: () {
                                      var x = xerjpx[i]["xdarkzmodex"];
                                      xerjpx[i]['xdarkzmodex'] = 0;
                                      touch_not = true;
                                      Q.of(context).q.qq();
                                      Future.delayed(Duration(seconds: 2), () {
                                        xerjpx[i]['xdarkzmodex'] = x;
                                        touch_not = false;
                                        Q.of(context).q.qq();
                                      });
                                    },
                                    onLongPress: () {
                                      if (xerjpx[i]['xdarkzmodex'] == 1) {
                                        xerjpx[i]['xdarkzmodex'] = 11;
                                      } else if (xerjpx[i]['xdarkzmodex'] ==
                                          11) {
                                        xerjpx[i]['xdarkzmodex'] = 1;
                                      } else if (xerjpx[i]['xdarkzmodex'] ==
                                          2) {
                                        xerjpx[i]['xdarkzmodex'] = 22;
                                      } else if (xerjpx[i]['xdarkzmodex'] ==
                                          22) {
                                        xerjpx[i]['xdarkzmodex'] = 2;
                                      } else if (xerjpx[i]['xdarkzmodex'] ==
                                          3) {
                                        xerjpx[i]['xdarkzmodex'] = 33;
                                      } else if (xerjpx[i]['xdarkzmodex'] ==
                                          33) {
                                        xerjpx[i]['xdarkzmodex'] = 3;
                                      } else {
                                        xerjpx[i]['xdarkzmodex'] = 1;
                                      }
      xsavezfile1x(context);
                                      Q.of(context).q.qq();
                                    },
                                    onDoubleTap: () {
                                      xpagex = xerjpx[i]["xpagex"];
                                      xmadinax = xerjpx[i]['xmadinax'];
                                      xxx = xerjpx[i]['xxx'] * xwidthx;
                                      xyx =
                                          xerjpx[i]['xyx'] * xheightx;
                                      listErr = !listErr;
                                      xchangezsurax(context);
                                      Q.of(context).q.qq();
                                    },
                                    child: Stack(
                                        alignment:
                                            AlignmentDirectional.bottomStart,
                                        children: [
                                          xpartzpagex(
                                              context,
                                              xerjpx[i]['xmadinax'],
                                              xerjpx[i]["xpagex"],
                                              xerjpx[i]["xyx"],
                                              false),
                                          if (xerjpx[i]["xyx"] < 0.21)
                                            xpartzpagex(
                                                context,
                                                xerjpx[i]['xmadinax'],
                                                xerjpx[i]["xpagex"],
                                                xerjpx[i]["xyx"],
                                                true),
                                          Container(
                                              child: Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Text(
                                                  xerjpx[i]["xpagex"]
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: xerjpx[i][
                                                                  'xdarkzmodex'] ==
                                                              0
                                                          ? Colors.transparent
                                                          : Colors.white),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                      begin:
                                                          Alignment.topCenter,
                                                      end: Alignment
                                                          .bottomCenter,
                                                      colors: xerjpx[i][
                                                                  'xdarkzmodex'] ==
                                                              2
                                                          ? [
                                                              Color.fromARGB(
                                                                  255,
                                                                  100,
                                                                  100,
                                                                  200),
                                                              Color.fromARGB(
                                                                  255,
                                                                  100,
                                                                  100,
                                                                  200)
                                                            ]
                                                          : xerjpx[i]['xdarkzmodex'] ==
                                                                  22
                                                              ? [
                                                                  Colors.black,
                                                                  Color
                                                                      .fromARGB(
                                                                          255,
                                                                          100,
                                                                          100,
                                                                          200),
                                                                  Color
                                                                      .fromARGB(
                                                                          255,
                                                                          100,
                                                                          100,
                                                                          200),
                                                                  Colors.black
                                                                ]
                                                              : xerjpx[i]['xdarkzmodex'] ==
                                                                      3
                                                                  ? [
                                                                      Color.fromARGB(
                                                                          255,
                                                                          100,
                                                                          100,
                                                                          100),
                                                                      Color.fromARGB(
                                                                          255,
                                                                          100,
                                                                          100,
                                                                          100)
                                                                    ]
                                                                  : xerjpx[i]['xdarkzmodex'] ==
                                                                          33
                                                                      ? [
                                                                          Colors
                                                                              .black,
                                                                          Color.fromARGB(
                                                                              255,
                                                                              100,
                                                                              100,
                                                                              100),
                                                                          Color.fromARGB(
                                                                              255,
                                                                              100,
                                                                              100,
                                                                              100),
                                                                          Colors
                                                                              .black
                                                                        ]
                                                                      : xerjpx[i]['xdarkzmodex'] ==
                                                                              1
                                                                          ? [
                                                                              Color.fromARGB(255, 0, 100, 0),
                                                                              Color.fromARGB(255, 0, 100, 0)
                                                                            ]
                                                                          : xerjpx[i]['xdarkzmodex'] ==
                                                                                  11
                                                                              ? [
                                                                                  Colors.black,
                                                                                  Color.fromARGB(255, 0, 100, 0),
                                                                                  Color.fromARGB(255, 0, 100, 0),
                                                                                  Colors.black
                                                                                ]
                                                                              : [
                                                                                  Colors.transparent,
                                                                                  Colors.transparent
                                                                                ])),
                                              height: xheightx * 0.065,
                                              width: _xx > xwidthx
                                                  ? xwidthx
                                                  : _xx < 0
                                                      ? 0
                                                      : _xx)
                                        ]))
                              ]))),
                    ],
                  ),
                );
              }),
        ));
  }
}
