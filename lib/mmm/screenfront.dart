import '../main.dart';
class ScreenFront extends StatelessWidget {
   ScreenFront({Key? key,this.backgroundColor = Colors.transparent, this.child}) : super(key: key);
  final Color backgroundColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(child: child),
      ),
    );
  }
}
