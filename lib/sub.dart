import 'main.dart';
_ff(){}
class Sub extends StatelessWidget {
   Sub({Key? key, this.icon, this.text, this.f, this.widthcr}) : super(key: key);
  final IconData? icon;
  final String? text;
  final Function? f;
  final double? widthcr;
  ///circle
  xcrx(context) {
    return ClipOval(
        child: Container(
      height: xwidthx*0.1,
      width: widthcr == null ? xwidthx*0.1 : xwidthx*0.2,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("a/bu.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: icon == null
          ? Textt(text.toString(), wrap: false, size: 16.0, color: Colors.black87)
          : Center(child: Icon(icon??Icons.extension_off, color: Colors.black)),
    ));
  }

  ///button circle
  xbuzcrx(context,Function() f) {
    return InkWell(
        onTap: () {
          f();
        },
        child: xcrx(context));
  }

  ///setting
  xelbux(context,Function() f) {
    return SizedBox(
      width: 300,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(elevation: 1),
          onPressed: () {
            f();
          },
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SizedBox(child: Textt(text.toString()), width: 120), xcrx(context)])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return (text == null || icon == null) ? xbuzcrx(context,f??_ff()) : xelbux(context,f??_ff());
  }
}
