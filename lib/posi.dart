import 'main.dart';
class Posi extends StatelessWidget {
   Posi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
                                                                child: Row(
                                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                                    crossAxisAlignment: CrossAxisAlignment.end,
                                                                    children: [
                                                                      Container(
                                                                          color: xreadx
                                                                              ? Colors.transparent
                                                                              : xgrey9x,
                                                                          height: xheightx * 1.26,
                                                                          width: xwidthx * 2),
                                                                      Container(
                                                                          color: xreadx
                                                                              ? Colors.transparent
                                                                              : xgrey9x,
                                                                          height: xheightx * 1.2,
                                                                          width: xwidthx * 2)
                                                                    ]),
                                                                left:xxx - (xwidthx *((xwidthx*20+xwidthx)/(xwidthx*10+xxx))),
                                                                top: xyx - xheightx * .18,
                                                              
    );
  }
}