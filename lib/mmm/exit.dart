import 'dart:io';
import '../main.dart';
class Exitb extends StatelessWidget {
   Exitb({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenFront(
      backgroundColor:  Color.fromARGB(148, 163, 88, 88),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color.fromARGB(255, 188, 186, 211),
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
             Textt("هل تريد الخروج؟",size: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {
                      exit(0);
                    },
                    child:  Textt("نعم",size: 20,)),
                ElevatedButton(
                    onPressed: () {
                      exitb = false;
                      Q.of(context).q.qq();
                    },
                    child:  Textt("لا",size: 20,)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
