import 'package:flutter/material.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/themes/string.dart';
import 'package:git/view/widgets/list_item.dart';
import '../widgets/app_button.dart';
import '../widgets/app_icon.dart';
import '../widgets/background_green_wave.dart';
import '../widgets/main_container.dart';
import 'create.dart';

// ModifCaterogie screen witch allows to modify a category
class ModifCaterogie extends StatefulWidget {
  const ModifCaterogie({Key? key}) : super(key: key);

  @override
  State<ModifCaterogie> createState() => _ModifCaterogieState();
}

class _ModifCaterogieState extends State<ModifCaterogie> {
  bool selected = true;

  var listItems = [
    const ListItem(
      title: "Présentation générale",
      icon: Icons.info,
      selected: true,
    ),
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
      backgroundColor: AppColors.white,
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
                        content: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.all(AppDimens.xs),
                                  child: const AppIcon(
                                    icon: Icons.home,
                                    size: IconSize.big,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding:
                                          const EdgeInsets.all(AppDimens.xxs),
                                      margin:
                                          const EdgeInsets.all(AppDimens.xxs),
                                      child: const Text(
                                        AppStrings.name,
                                        style: AppLightTheme.subtitle1,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.only(
                                          left: AppDimens.s),
                                      margin:
                                          const EdgeInsets.all(AppDimens.m),
                                      width:
                                          MediaQuery.of(context).size.width /
                                              AppModifDimens.resWidthModif,
                                      height:
                                          MediaQuery.of(context).size.height /
                                              AppModifDimens.resHeightModif,
                                      decoration: BoxDecoration(
                                        color:
                                            AppColors.lightPrimaryColorLight,
                                        borderRadius: BorderRadius.circular(
                                            AppDimens.s),
                                      ),
                                      child: TextFormField(
                                        //controller: pitchController,
                                        decoration: const InputDecoration(
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          fillColor: Colors.red,
                                          border: OutlineInputBorder(),
                                          labelText: AppStrings.catName,
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
                                    padding: const EdgeInsets.only(
                                        left: AppDimens.s),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightPrimaryColorLight,
                                      borderRadius:
                                          BorderRadius.circular(AppDimens.s),
                                    ),
                                    margin: const EdgeInsets.all(AppDimens.s),
                                    child: TextFormField(
                                      //controller: pitchController,
                                      decoration: const InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        fillColor: Colors.red,
                                        border: OutlineInputBorder(),
                                        labelText: AppStrings.catPitch,
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
                                    padding: const EdgeInsets.only(
                                        left: AppDimens.s),
                                    height:
                                        MediaQuery.of(context).size.height /
                                            AppDimens.xs,
                                    decoration: BoxDecoration(
                                      color: AppColors.lightPrimaryColorLight,
                                      borderRadius:
                                          BorderRadius.circular(AppDimens.s),
                                    ),
                                    margin: const EdgeInsets.all(AppDimens.s),
                                    child: TextFormField(
                                      //controller: pitchController,
                                      decoration: const InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        fillColor: Colors.red,
                                        border: OutlineInputBorder(),
                                        labelText: AppStrings.catDesc,
                                      ),
                                      style: AppLightTheme.bodyText1,
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        top: AppDimens.xxl),
                                    alignment: Alignment.topRight,
                                    child: AppButton(
                                      onPressed: () {},
                                      text: AppStrings.valider,
                                      style: AppButtonStyle.filled,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
                  AppStrings.categoryOfWork,
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
                    },
                  ),
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
