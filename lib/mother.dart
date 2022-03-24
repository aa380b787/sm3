import 'main.dart';

class Mother extends StatelessWidget {
  Mother({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(
        children: [
        Container(height:MediaQuery.of(context).padding.top),
        SizedBox(
          width: xwidthx,
          height: xheightx,
          child: GestureDetector(
            onTapDown: (details) {
              if (!xreadx) {
                xtouchx(context, details);
                Q.of(context).q.qq();
              }
            },
            onPanUpdate: (details) {
              if (!xreadx) {
                xtouchx(context, details);
                Q.of(context).q.qq();
              }
            },
            onPanEnd: (details) {
              //xtouchx(context, details);
              if (!xreadx) xsavezfile1x;
            },
            child: Stack(children: [
               Pages(),
              if (!xreadx) Posi(),
            ]),
          ),
        ), Bar(),
        Container(height:MediaQuery.of(context).padding.bottom),
      ]),
      if (listErr) ListErr(),
      if (listPage) ListPage(),
      if (settingb) Setting(),
      if (exitb) Exitb(),
      if (downloaded) Downloaded(),
    ]);
  }
}
