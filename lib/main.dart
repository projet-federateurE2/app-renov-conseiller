import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:git/themes/app_theme.dart';
import 'package:git/themes/dimension.dart';
import 'package:git/themes/string.dart';
import 'package:git/view/pages/create.dart';
import 'package:git/view/pages/modif_categorie.dart';
import 'package:git/view/widgets/app_button.dart';
import 'package:git/view/widgets/app_icon.dart';
import 'package:git/view/widgets/background_green_wave.dart';
import 'package:git/view/widgets/category_item.dart';
import 'package:git/view/widgets/fab_text.dart';
import 'package:git/view/widgets/main_container.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'api/search_api_bloc.dart';
import 'model/category.dart';

// Main class, this class execute every time we run
void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider<SearchApiBloc>(create: (_) => SearchApiBloc())],
      child: const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
  @override
  void initState() {
    super.initState();
    _addEvent(context, const SearchDoQueryEvent());
  }

  void _addEvent(BuildContext context, SearchApiEvent event) {
    BlocProvider.of<SearchApiBloc>(context).add(event);
  }

  bool selected = true;

  String catName = "Isolation thermique";
  String catPitch =
      "Pour faire des économies d’énergie, et améliorer votre confort en hiver comme en été.";
  String catDesc =
      "L’isolation de votre maison est primordiale. Une maison mal isolée est sujette à de sérieuses pertes énergétiques engendrant une perte de confort et d’argent.";

  var categoryItems = [];

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

  late List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchApiBloc, SearchApiState>(
        builder: (context, state) {
          if (state is SearchApiResolvedState) {
            categories = state.categories;

            categoryItems.clear();
            for (int i = 0; i < categories.length; i++) {
              String subtitle =
                  "Contient " + categories[i].steps.length.toString() + " travaux";
              categoryItems.add(
                  CategoryItem(
                      title: categories[i].name,
                      subtitle: subtitle,
                      icon: Icons.home,
                      selected: i == 0 ? true : false)
              );
            }
          }
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
                                    margin:
                                    const EdgeInsets.all(AppDimens.xs),
                                    child: const AppIcon(
                                      icon: Icons.home,
                                      size: IconSize.big,
                                    )),
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.all(
                                            AppDimens.xxs),
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
                              margin: const EdgeInsets.all(AppDimens.l),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    AppStrings.description,
                                    style: AppLightTheme.subtitle1,
                                  ),
                                  Container(
                                    margin:
                                    const EdgeInsets.all(AppDimens.xs),
                                    child: Text(
                                      catDesc,
                                      style: AppLightTheme.bodyText1,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                height: 140,
                                margin: const EdgeInsets.all(AppDimens.m),
                                width: double.infinity,
                                child: const Text(
                                  AppStrings.categoryWork,
                                  style: AppLightTheme.subtitle1,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
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
                                  ),),
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
                            borderRadius:
                            const BorderRadius.all(Radius.circular(1))),
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
        });
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