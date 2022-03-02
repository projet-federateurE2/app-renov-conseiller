import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/themes/string.dart';
import 'package:git/widgets/app_button.dart';
import 'package:git/widgets/app_icon.dart';
import 'package:git/widgets/background_green_wave.dart';
import 'package:git/widgets/category_item.dart';
import 'package:git/widgets/fab_text.dart';
import 'package:git/widgets/list_item.dart';
import 'package:git/widgets/main_container.dart';
import 'package:git/widgets/main_text_field.dart';

import 'create.dart';
import 'main.dart';


class ModifCaterogie extends StatefulWidget {
  const ModifCaterogie({Key? key}) : super(key: key);

  @override
  State<ModifCaterogie> createState() => _ModifCaterogieState();
}

class _ModifCaterogieState extends State<ModifCaterogie> {
  bool selected = true;

  String catName = "Isolation thermique";
  String catPitch =
      "Pour faire des économies d’énergie, et améliorer votre confort en hiver comme en été.";
  String catDesc =
      "L’isolation de votre maison est primordiale. Une maison mal isolée est sujette à de sérieuses pertes énergétiques engendrant une perte de confort et d’argent.";

  var listItems = [
    const ListItem(
        title: "Présentation générale",
        icon: Icons.info,
        selected: true),

  ];

  void addCategory() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CreateCategory()),
    );
  }

  late TextEditingController pitchController;

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
                  borderRadius: BorderRadius.circular(AppDimens.m),
                  color: AppColors.white,
                ),
                child: MainContainer(
                  content: Container(
                    child: Column(
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
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Container(
                                    padding: const EdgeInsets.all(AppDimens.xxs),
                                    margin: const EdgeInsets.all(AppDimens.xxs),
                                    child: const Text(
                                      AppStrings.name,
                                      style: AppLightTheme.subtitle1,
                                    )),
                                Container(
                                  padding: const EdgeInsets.only(left: AppDimens.s),
                                  margin: const EdgeInsets.all(AppDimens.m),
                                  width: MediaQuery.of(context).size.width/AppModifDimens.resWidthModif,
                                  height: MediaQuery.of(context).size.height/AppModifDimens.resHeightModif,
                                  decoration: BoxDecoration(
                                      color: AppColors.lightPrimaryColorLight ,
                                      borderRadius: BorderRadius.circular(AppDimens.s)),
                                  child: TextFormField(
                                    //controller: pitchController,
                                    decoration: InputDecoration(
                                      enabledBorder: InputBorder.none,
                                      focusedBorder: InputBorder.none,
                                      fillColor: Colors.red,
                                      border: OutlineInputBorder(),
                                      labelText: catName,
                                    ),
                                    style: AppLightTheme.bodyText1,
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
                                padding: const EdgeInsets.only(left: AppDimens.s),
                                decoration: BoxDecoration(
                                  color: AppColors.lightPrimaryColorLight ,
                                    borderRadius: BorderRadius.circular(AppDimens.s)),
                                margin: const EdgeInsets.all(AppDimens.s),
                                child: TextFormField(
                                  //controller: pitchController,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    fillColor: Colors.red,
                                    border: OutlineInputBorder(),
                                    labelText: catPitch,
                                  ),
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
                                padding: const EdgeInsets.only(left: AppDimens.s),
                                decoration: BoxDecoration(
                                    color: AppColors.lightPrimaryColorLight ,
                                    borderRadius: BorderRadius.circular(AppDimens.s)),
                                margin: const EdgeInsets.all(AppDimens.s),
                                child: TextFormField(
                                  //controller: pitchController,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    fillColor: Colors.red,
                                    border: OutlineInputBorder(),
                                    labelText: catDesc,
                                  ),
                                  style: AppLightTheme.bodyText1,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
                : const Center(
              child: Text(
                "Sélectionner un élément pour voir ses détails",
                style: AppLightTheme.headline1,
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
                  style: AppLightTheme.headline1,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: listItems.length,
                      itemBuilder: (BuildContext context, int index) {
                        return listItems[index];
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }


}