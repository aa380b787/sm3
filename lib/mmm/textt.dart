import '../main.dart';
class Textt extends StatelessWidget {
   Textt(this.x,
      {Key? key, this.bold = true, this.size, this.color, this.wrap = false})
      : super(key: key);
  final String x;
  final bool bold;
  final double? size;
  final Color? color;
  final bool wrap;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(x,
            softWrap: wrap,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
                fontWeight: bold == true ? FontWeight.bold : FontWeight.normal,
                fontSize: size,
                color: color)));
  }
}
