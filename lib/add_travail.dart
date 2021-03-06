import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/themes/string.dart';
import 'package:git/view/pages/modif_categorie.dart';
import 'package:git/view/widgets/app_icon.dart';
import 'package:git/view/widgets/background_green_wave.dart';
import 'package:git/view/widgets/fab_text.dart';
import 'package:git/view/widgets/list_item.dart';
import 'package:git/view/widgets/main_container.dart';



class AddTravail extends StatefulWidget {
  const AddTravail({Key? key}) : super(key: key);

  @override
  State<AddTravail> createState() => _AddTravail();
}

class _AddTravail extends State<AddTravail> {
  bool selected = true;

  var listItems = [
    const ListItem(
        title: AppStrings.addNewTravail,
        subTitle: AppStrings.etapeNotExist,
        icon: Icons.warning_amber,
        selected: true),
  ];

  late TextEditingController pitchController;

  void goBack() {
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
                        Container(
                            alignment: Alignment.topLeft,
                            padding: const EdgeInsets.all(AppDimens.xxs),
                            margin: const EdgeInsets.all(AppDimens.xxs),
                            child: const Text(
                              AppStrings.travauxName,
                              style: AppLightTheme.headline1,
                            )),

                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.all(AppDimens.xs),
                                child: const AppIcon(
                                  icon: Icons.cloud_download_outlined ,
                                  size: IconSize.big,
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
                                decoration: const InputDecoration(
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  fillColor: Colors.red,
                                  border: OutlineInputBorder(),
                                  labelText: AppStrings.setNameTravail,
                                ),
                                style: AppLightTheme.bodyText1,
                              ),
                            ),
                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            )
                : const Center(
              child: Text(
                "S??lectionner un ??l??ment pour voir ses d??tails",
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
                 Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                    onPressed: () {goBack();},
                    child: const Icon(
                      Icons.arrow_back,
                      size: 28.0,
                      color: AppColors.darkPrimaryBackground,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Cat??gorie de travaux",
                  textAlign: TextAlign.center,
                  style: AppLightTheme.headline1,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.darkPrimaryColor,
                      ),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(1))),
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
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.darkPrimaryColor,
                      ),
                      borderRadius:
                      const BorderRadius.all(Radius.circular(1))),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                        AppDimens.s, AppDimens.s, 0, 0),
                    child: FabText(
                        text: AppStrings.newTravail,
                        textSide: TextSide.right,
                        onPressed: () {},
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