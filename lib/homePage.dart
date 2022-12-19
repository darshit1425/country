import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  List l1 = [
    "india",
    "Germany",
    "United Kingdom",
    "France",
    "Italy",
    "ukraine",
    "netherlands",
    "switzerland",
    "greece",
    "poland",
    "austria",
    "sweden",
    "belgium",
    "croatia",
    "norway",
    "denmark",
    "lreland",
    "czechia",
    "serbia",
    "romania",
  ];

  List ColorList = [
    Colors.red.shade100,
    Colors.pink.shade300,
    Colors.red.,
    Colors.amber.shade100,
    Colors.yellow,
    Colors.yellow.shade400,
    Colors.red.shade50,
    Colors.green.shade50,
    Colors.green.shade100,
    Colors.green.shade200,
    Colors.green.shade300,
    Colors.green.shade400,
    Colors.green.shade500,
    Colors.green.shade600,
    Colors.green.shade700,
    Colors.green.shade800,
    Colors.red.shade400,
    Colors.blueAccent.shade100,
    Colors.blue.shade100,
    Colors.blueAccent.shade700,
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("country"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: l1.asMap().entries.map((e) => sampleUI(l1[e.key],ColorList[e.key])).toList(),
          ),
        ),
      ),
    );
  }
}

Widget sampleUI(String name, Color c1) {
  return Container(
    height: 100,
    color: c1,
    margin: EdgeInsets.all(5),
    alignment: Alignment.center,
    child: Text(
      "$name",
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}
