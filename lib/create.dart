import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:git/main.dart';
import 'package:git/widgets/background_green_wave.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/widgets/app_icon.dart';
import 'package:git/widgets/category_item.dart';
import 'package:git/widgets/fab_text.dart';
import 'package:git/widgets/main_container.dart';
import 'package:git/widgets/main_text_field.dart';
import 'package:git/widgets/text_side.dart';

class CreateCategory extends StatefulWidget {
  const CreateCategory({Key? key}) : super(key: key);

  @override
  State<CreateCategory> createState() => _CreateCategoryState();
}

class _CreateCategoryState extends State<CreateCategory> {
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
              child: Center(
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
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: AppMargin.rightMargin2,
                                child: const AppIcon(
                                  icon: Icons.cloud_upload_outlined,
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: [
                                    const Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Nom",
                                        style: lightTheme.subtitle1,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: AppPadding.topPadding1,
                                      child: MainTextField(
                                          "Ajouter un nom...", false, ""),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            margin: AppMargin.topMargin8,
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Pitch",
                                    style: lightTheme.subtitle1,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: AppMargin.topMargin2,
                                  child: MainTextField(
                                      "Ajouter un pitch...", false, ""),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: AppMargin.topMargin8,
                            width: double.infinity,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Description",
                                    style: lightTheme.subtitle1,
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: AppMargin.topMargin2,
                                  child: MainTextField(
                                      "Ajouter une description...", false, ""),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.fromLTRB(56, 42, 62, 32),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                      color: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyApp()),
                        );
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 28.0,
                      ),
                      label: Text("")),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Nouvelle catégorie",
                  textAlign: TextAlign.center,
                  style: lightTheme.headline1,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CategoryItem(
                    title: "Présentation générale",
                    subtitle: "",
                    icon: Icons.info_outline,
                    selected: true),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.lightPrimaryColor,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(1))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
