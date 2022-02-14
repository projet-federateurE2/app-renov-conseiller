import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:git/widgets/background_green_wave.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/widgets/app_button_empty.dart';
import 'package:git/widgets/app_icon.dart';
import 'package:git/widgets/category_item.dart';
import 'package:git/widgets/fab_text.dart';
import 'package:git/widgets/main_container.dart';
import 'package:git/widgets/text_side.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'create.dart';

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
  bool selected = true;

  String catName = "Isolation thermique";
  String catPitch =
      "Pour faire des économies d’énergie, et améliorer votre confort en hiver comme en été.";
  String catDesc =
      "L’isolation de votre maison est primordiale. Une maison mal isolée est sujette à de sérieuses pertes énergétiques engendrant une perte de confort et d’argent.";

  var categoryItems = [
    const CategoryItem(
        title: "Isolation thermique",
        subtitle: "Contient 4 sous-catégorie",
        icon: Icons.home,
        selected: true),
    const CategoryItem(
        title: "Chauffage", subtitle: "Contient 4 sous-catégorie", icon: Icons.hot_tub, selected: false),
  ];

  void addCategory() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreateCategory()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          const BackgroundGreenWave(),
          Container(
            padding: const EdgeInsets.only(top: 32, right: 40, bottom: 228),
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 3, 0, 0, 0),
            height: MediaQuery.of(context).size.height,
            child: selected
                ? Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: AppRadius.radius3,
                        color: AppColors.white,
                      ),
                      child: MainContainer(
                        content: Container(
                          padding: const EdgeInsets.only(
                              left: 40, top: 32, right: 40, bottom: 32),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                      margin: AppMargin.rightMargin2,
                                      child: const AppIcon(
                                        icon: Icons.home,
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: AppPadding.paddingHalf,
                                          margin: AppMargin.topMargin4,
                                          child: const Text(
                                            "Nom",
                                            style: lightTheme.subtitle1,
                                          )),
                                      Container(
                                        padding: AppPadding.topPadding1,
                                        child: Text(
                                          catName,
                                          style: lightTheme.headline1,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                margin: AppMargin.topMargin8,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Pitch",
                                      style: lightTheme.subtitle1,
                                    ),
                                    Container(
                                      margin: AppMargin.topMargin2,
                                      child: Text(
                                        catPitch,
                                        style: lightTheme.headline6,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: AppMargin.topMargin8,
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "Description",
                                      style: lightTheme.subtitle1,
                                    ),
                                    Container(
                                      margin: AppMargin.topMargin2,
                                      child: Text(
                                        catDesc,
                                        style: lightTheme.headline6,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 230,
                                margin: AppMargin.topMargin8,
                                width: double.infinity,
                                child: const Text(
                                  "Liste des travaux se trouve ici....",
                                  style: lightTheme.subtitle1,
                                ),
                              ),
                              Container(
                                  margin: AppMargin.topMargin8,
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppButtonEmpty(
                                          onPressed: onAlertButtonsPressed,
                                          text: "Supprimer la catégorie")
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : const Center(
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
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    size: 28.0,
                  ),
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
                Expanded(
                  child: ListView.builder(
                      itemCount: categoryItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return categoryItems[index];
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.grey1,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(1))),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 0, 0),
                    child: FabText(
                        text: "Ajouter une nouvelle catégorie",
                        textSide: TextSide.right,
                        onPressed: addCategory,
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

// Alert with multiple and custom buttons
  onAlertButtonsPressed() {
    Alert(
      context: context,
      desc:
          "Êtes vous sûr(e) de vouloir supprimer la \n catégorie \"${catName}\" ?",
      buttons: [
        DialogButton(
          radius: AppRadius.radius1,
          width: 148,
          color: AppColors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            height: 54,
            decoration: BoxDecoration(
              border:
              Border.all(color: AppColors.lightPrimaryColor, width: 3.0),
              shape: BoxShape.rectangle,
              borderRadius: AppRadius.radius1,
            ),
            child: const Center(
              child: Text(
                'Garder',
                style: lightTheme.buttonEmpty,
              ),
            ),
          ),
        ),
        DialogButton(
          radius: AppRadius.radius1,
          width: 148,
          color: AppColors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Container(
            width: double.infinity,
            height: 54,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: AppRadius.radius1,
                color: lightTheme.primaryColor),
            child: const Center(
              child: Text(
                'Supprimer',
                style: lightTheme.buttonFull,
              ),
            ),
          ),
        )

      ],
    ).show();
  }
}
