import 'main.dart';
class Pages extends StatelessWidget {
   Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: xheightx,
      width: xwidthx,child:OverflowBox(
                                    maxWidth: xwidthx *
                                        (xmadinax ? 1.25 : 1.5),
                                    maxHeight:
                                        xheightx * (xmadinax ? 1.17 : 1.4),
                                    child: Align(
                                        alignment: Alignment(
                                            (xmadinax
                                                ? (xpagex.isEven ? -14.5 : 16)
                                                : .1),
                                            xmadinax ? 4 : .1),
                                        child: SizedBox(
                                            width:
                                                xwidthx *
                                                    (xmadinax ? 1.24 : 1.37),
                                            height: xheightx *
                                                (xmadinax ? 1.15 : 1.25),
                                                child: ximagex(xpagex)))));
  }
}