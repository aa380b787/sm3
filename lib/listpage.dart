import 'package:flutter/cupertino.dart';
import 'main.dart';
// ignore: must_be_immutable
class ListPage extends StatelessWidget {
  int xsurintx = xsurboolx ? 1 : 0;

 ListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
return Scaffold(
                appBar: AppBar(
                    title: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                      Sub(
                              icon: Icons.arrow_back,
                              f: () {
                                listPage=!listPage;
                                xchangezsurax(context);
                                Q.of(context).q.build(context);
                              }),
                            CupertinoSegmentedControl(
                                selectedColor: Colors.yellow,
                                unselectedColor: Colors.blue,
                                groupValue: xsurintx,
                                children: {0: Textt("الصفحات"), 1: Textt("السور")},
                                onValueChanged: (ii) {
                                    xsurintx = int.parse(ii.toString());
                                    xsurboolx = int.parse(ii.toString()) == 0
                                        ? false
                                        : true;
                                Q.of(context).q.qq();
                                }),
                                Container()
                          ],
                        ))),
                body: Directionality(
                  textDirection: TextDirection.rtl,
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 1,
                          //mainAxisExtent: 20,
                          crossAxisSpacing: 1,
                          crossAxisCount: xsurboolx ? 5 : 8),
                      itemCount:
                          xsurboolx ? xacpx.length : (xmadinax ? 604 : 521),
                      itemBuilder: (context, i) {
                        return Sub(
                            text: xsurboolx
                                ? '${xacpx[i]["sura"]}'
                                : '${(xmadinax ? i + 1 : i + 2)}',
                            f: () {xxx = 0;
      xyx = 0;
                              if (xsurboolx) {
                                xpagex = (xmadinax ? xacpx[i]['m'] : xacpx[i]['sh']);
                              } else {
                                xpagex = xmadinax ? i + 1 : i + 2;
                              }
                                listPage=!listPage;
                                xchangezsurax(context);
                                Q.of(context).q.qq();
                            });
                      }),
                ));
  }
}