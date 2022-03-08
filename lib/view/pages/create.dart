import 'package:flutter/material.dart';
import 'package:git/main.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/themes/string.dart';
import '../widgets/app_icon.dart';
import '../widgets/background_green_wave.dart';
import '../widgets/category_item.dart';
import '../widgets/main_container.dart';
import '../widgets/main_text_field.dart';

// CreateCategory screen witch allows to create screen for a category
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
            padding: const EdgeInsets.only(
                top: AppDimens.l, right: AppDimens.xl, bottom: 228),
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 3, 0, 0, 0),
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppDimens.m),
                  color: AppColors.white,
                ),
                child: MainContainer(
                  content: Container(
                    padding: const EdgeInsets.only(
                      left: AppDimens.xl,
                      top: AppDimens.l,
                      right: AppDimens.xl,
                      bottom: AppDimens.l,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.all(AppDimens.xs),
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
                                      AppStrings.name,
                                      style: AppLightTheme.subtitle1,
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding:
                                        const EdgeInsets.all(AppDimens.xxs),
                                    child: const MainTextField(
                                      AppStrings.addName,
                                      false,
                                      "",
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.all(AppDimens.l),
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  AppStrings.pitch,
                                  style: AppLightTheme.subtitle1,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(AppDimens.xs),
                                child: const MainTextField(
                                  AppStrings.addPitch,
                                  false,
                                  "",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(AppDimens.l),
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  AppStrings.description,
                                  style: AppLightTheme.subtitle1,
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                margin: const EdgeInsets.all(AppDimens.xs),
                                child: const MainTextField(
                                  AppStrings.addDescription,
                                  false,
                                  "",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 3,
            padding: const EdgeInsets.fromLTRB(
              AppDimens.xxl,
              AppDimens.xl,
              AppDimens.xxl,
              AppDimens.l,
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: FlatButton.icon(
                    color: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const MyApp()),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 28.0,
                    ),
                    label: const Text(""),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  AppStrings.newCategory,
                  textAlign: TextAlign.center,
                  style: AppLightTheme.headline1,
                  overflow: TextOverflow.clip,
                ),
                const SizedBox(
                  height: 40,
                ),
                const CategoryItem(
                    title: AppStrings.generalPresentation,
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
                    borderRadius: const BorderRadius.all(
                      Radius.circular(1),
                    ),
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
