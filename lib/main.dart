import 'package:flutter/material.dart';
import 'package:git/background_green_wave.dart';
import 'package:git/widgets/category_item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Renov Propriétaire',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var categoryItems = [
    CategoryItem(
        title: "test",
        subtitle: "subtitle",
        icon: Icons.favorite,
        selected: false),
    CategoryItem(
        title: "dazot", subtitle: "sub", icon: Icons.add, selected: false),
  ];

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        BackgroundGreenWave(),

      ],
    );
    /*
    return Scaffold(
      backgroundColor: lightTheme.scaffoldBackgroundColor,
      body: Center(
        child: Row(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(Icons.arrow_back),
                    Text(
                      "test",
                      style: lightTheme.headline1,
                    ),
                    Column(
                      children: categoryItems,
                    ),
                  ],
                ),
              ),
              FabText(
                  text: "Ajouter une nouvelle catégorie",
                  textSide: TextSide.right,
                  icon: Icons.add)
            ],
          ),
          /*
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: categoryItems,
                ),
                FabText(text: "Ajouter une nouvelle catégorie", textSide: TextSide.right, icon: Icons.add)
              ]
            ),*/
        ]),
      ),
    );*/
  }
}
