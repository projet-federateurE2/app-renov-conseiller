import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/themes/string.dart';
import 'package:git/widgets/app_button.dart';
import 'package:git/widgets/app_icon.dart';
import 'package:git/widgets/background_green_wave.dart';
import 'package:git/widgets/category_item.dart';
import 'package:git/widgets/fab_text.dart';
import 'package:git/widgets/main_container.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'create.dart';
import 'modif_categorie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
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
        title: "Chauffage",
        subtitle: "Contient 4 sous-catégorie",
        icon: Icons.hot_tub,
        selected: false),
  ];

  void addCategory() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreateCategory()),
    );
  }

  void handleModifButton(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ModifCaterogie()),
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
            padding: const EdgeInsets.only(
                top: AppDimens.l, right: AppDimens.xl, bottom: 228),
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 3, 0, 0, 0),
            height: MediaQuery.of(context).size.height,
            child: selected
                ? Center(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppDimens.m),
                        color: AppColors.white,
                      ),
                      child: MainContainer(
                        content: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: const EdgeInsets.all(AppDimens.xs),
                                    child: const AppIcon(
                                      icon: Icons.home,
                                      size: IconSize.big,
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding:
                                            const EdgeInsets.all(AppDimens.xxs),
                                        child: const Text(
                                          AppStrings.name,
                                          style: AppLightTheme.subtitle1,
                                        )),
                                    Container(
                                      padding:
                                          const EdgeInsets.all(AppDimens.xxs),
                                      child: Text(
                                        catName,
                                        style: AppLightTheme.headline1,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.all(AppDimens.m),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.pitch,
                                    style: AppLightTheme.subtitle1,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(AppDimens.s),
                                    child: Text(
                                      catPitch,
                                      style: AppLightTheme.bodyText1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(AppDimens.m),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.description,
                                    style: AppLightTheme.subtitle1,
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(AppDimens.xs),
                                    child: Text(
                                      catDesc,
                                      style: AppLightTheme.bodyText1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 140,
                              margin: const EdgeInsets.all(AppDimens.m),
                              width: double.infinity,
                              child: const Text(
                                AppStrings.categoryWork,
                                style: AppLightTheme.subtitle1,
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.all(AppDimens.l),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppButton(
                                      onPressed: onAlertButtonsPressed,
                                      text: AppStrings.deleteCategory,
                                      style: AppButtonStyle.outlined,
                                    ),
                                    Container(
                                          padding:   EdgeInsets.only(left: MediaQuery.of(context).size.width/5.5),
                                          child: AppButton(
                                              text: AppStrings.modifCategory,
                                              onPressed: handleModifButton,
                                              style: AppButtonStyle.filled
                                          )
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  )
                : const Center(
                    child: Text(
                      AppStrings.selectElementToSeeMore,
                      style: AppLightTheme.headline1,
                    ),
                  ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.fromLTRB(
                AppDimens.xxl, AppDimens.xl, AppDimens.xxl, AppDimens.l),
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
                  AppStrings.categoryWork,
                  textAlign: TextAlign.center,
                  style: AppLightTheme.headline1,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: AppDimens.xl,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: categoryItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return categoryItems[index];
                      }),
                ),
                const SizedBox(
                  height: AppDimens.m,
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
                    padding: const EdgeInsets.fromLTRB(
                        AppDimens.s, AppDimens.s, 0, 0),
                    child: FabText(
                        text: AppStrings.addNewCategory,
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
      desc: "${AppStrings.areYouSureToDeleteCategory} \"$catName\" ?",
      buttons: [
        DialogButton(
          radius: BorderRadius.circular(AppDimens.xxs),
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
              borderRadius: BorderRadius.circular(AppDimens.xxs),
            ),
            child: const Center(
              child: Text(
                AppStrings.cancel,
                style: AppLightTheme.buttonEmpty,
              ),
            ),
          ),
        ),
        DialogButton(
          radius: BorderRadius.circular(AppDimens.xs),
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
                borderRadius: BorderRadius.circular(AppDimens.xs),
                color: AppLightTheme.primaryColor),
            child: const Center(
              child: Text(
                AppStrings.delete,
                style: AppLightTheme.buttonFull,
              ),
            ),
          ),
        )
      ],
    ).show();
  }
}
