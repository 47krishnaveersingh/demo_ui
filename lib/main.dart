import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget buildCard(BuildContext context, int index) {
    return Container(
      width: 150,
      child: Column(
        children: [
          plan(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          border: null,
          backgroundColor: Colors.transparent,
          leading: CupertinoNavigationBarBackButton(
            onPressed: () {},
            color: CupertinoColors.white,
          ),
          middle: Text(
            "Losing never felt so good!",
            style: GoogleFonts.nunitoSans(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/MOOD-UI 1.png"),
                    fit: BoxFit.cover)),
          ),
          VxArc(
            height: 70,
            child: Container(
              height: 420,
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/image 10.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 100, 50, 0),
            alignment: Alignment.topCenter,
            child: Text(
              "With Mood, it takes just a few minutes a day to lose weight and lead a healthier life.",
              style: GoogleFonts.nunitoSans(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 360, 0, 35),
            child: Column(
              children: [
                Expanded(
                  child: ScrollSnapList(
                    onItemFocus: (p0) {},
                    dynamicItemSize: true,
                    itemSize: 150,
                    itemBuilder: buildCard,
                    itemCount: 3,
                    reverse: true,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset("assets/images/Group 2.png"),
                  style: ElevatedButton.styleFrom(
                      elevation: 8,
                      primary: Colors.black,
                      minimumSize: Size(223, 50)),
                ),
              ],
            ),
          ),
        ]));
  }
}

Widget plan() {
  return Container(
    child: Stack(children: [
      Container(
        margin: EdgeInsets.only(top: 18),
        child: Stack(
          children: [
            Container(
              height: 380,
              width: 800,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Rectangle 9.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              height: 112,
              width: 800,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Vector 9.png"),
                    fit: BoxFit.fill),
              ),
              child: Center(
                  child: Text("Gold",
                      style: GoogleFonts.nunitoSans(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1))),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              height: 240,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.done, color: Colors.green),
                      Text("Lorem Ipsum Dolor Sit Amet",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.white, fontSize: 8))
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(Icons.done, color: Colors.green),
                      Text("Lorem Ipsum Dolor Sit Amet",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.white, fontSize: 8))
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(Icons.done, color: Colors.green),
                      Text("Lorem Ipsum Dolor Sit Amet",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.white, fontSize: 8))
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Icon(Icons.close, color: Colors.red),
                      Text("Lorem Ipsum Dolor Sit Amet",
                          style: GoogleFonts.nunitoSans(
                              color: Colors.white, fontSize: 8))
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  TextButton(
                      style: TextButton.styleFrom(
                          primary: Colors.blue, backgroundColor: Colors.white),
                      onPressed: () {},
                      child: Text(
                        "BUY",
                      ))
                ],
              ),
            )
          ],
        ),
      ),
      Container(
        alignment: Alignment.topCenter,
        child: Stack(
          children: [
            Center(
              child: Image(
                image: AssetImage("assets/images/Ellipse 19.png"),
                alignment: Alignment.topCenter,
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "US\$ \n 19.99",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ]),
  );
}
