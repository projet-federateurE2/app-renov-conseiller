import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:git/background_green_wave.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/widgets/category_item.dart';
import 'package:git/widgets/fab_text.dart';
import 'package:git/widgets/text_side.dart';

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
      theme: ThemeData(fontFamily: 'Lexend'),
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
    const Icon(
      Icons.arrow_back,
      size: 28.0,
    ),
    const SizedBox(
      height: 10,
    ),
    const Text(
      "Catégorie de travaux",
      textAlign: TextAlign.center,
      style: lightTheme.headline1,
      overflow: TextOverflow.clip,
    ),
    const SizedBox(
      height: 40,
    ),
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const BackgroundGreenWave(),
          Container(
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 3, 0, 0, 0),
            height: MediaQuery.of(context).size.height,
            child: const Center(
              child: Text(
                  "Sélectionner un élément pour voir ses détails",
                style: lightTheme.headline1,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.fromLTRB(56, 42, 62, 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: categoryItems,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: FabText(
                        text: "Ajouter une nouvelle catégorie",
                        textSide: TextSide.right,
                        icon: Icons.add),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
