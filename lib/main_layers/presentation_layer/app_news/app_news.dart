import 'package:a_a_travel_ui/core/app_assets/app_assets.dart';
import 'package:a_a_travel_ui/core/app_colors/app_colors.dart';
import 'package:a_a_travel_ui/core/app_lists/app_lists.dart';
import 'package:a_a_travel_ui/core/app_size/app_size.dart';
import 'package:a_a_travel_ui/core/app_strings/app_strings.dart';
import 'package:a_a_travel_ui/core/app_styles/app_styles.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/shared_widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class AppNews extends StatefulWidget {
  const AppNews({super.key});
  static int myIndex = 0;


  @override
  State<AppNews> createState() => _AppNewsState();
}

class _AppNewsState extends State<AppNews> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    AppSize.init(context: context,usingStatusBarHeight: false, designHeight: 812, designWidth: 375);
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                CustomPageView(myIndex: AppNews.myIndex,
                  pageController: pageController,
                  myFunction: (index) {
                  setState(() {
                    AppNews.myIndex = index;
                  });
                }, ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSize.getWidth(30),
                    vertical: AppSize.getHeight(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: AppSize.getWidth(50),
                        height: AppSize.getHeight(50),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(width: AppSize.getWidth(2), color: AppColors.kWhite),
                            borderRadius: BorderRadius.circular(16)),
                        child: Icon(
                          Icons.arrow_back_ios_new_outlined,
                          color: AppColors.kWhite,
                          size: AppSize.getMainSize(20),
                        ),
                      ),
                      Container(
                        width: AppSize.getWidth(50),
                        height: AppSize.getHeight(50),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(width: AppSize.getWidth(2), color: AppColors.kWhite),
                            borderRadius: BorderRadius.circular(16)),
                        child: Icon(
                          Icons.bookmark,
                          color: AppColors.kWhite,
                          size: AppSize.getMainSize(20),
                        ),
                      ),
                    ],
                  ),
                ),
              CustomIndicator(myIndex: AppNews.myIndex,myFunction: (index) {
                setState(() {
                  AppNews.myIndex = index;
                  pageController.jumpToPage(AppNews.myIndex);
                });
              }, ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: AppSize.getHeight(371),
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    width: AppSize.getWidth(375),
                    decoration: const BoxDecoration(
                      color: AppColors.kWhiteFF,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: AppSize.getHeight(27),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.getWidth(40),
                          ),
                          child: Text(
                            AppStrings.kUnravel,
                            style: AppStyles.kStyleBold.copyWith(
                              fontSize: AppSize.getMainSize(32),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: AppSize.getHeight(20),
                        ),
                        Container(
                          width: AppSize.getWidth(315),
                          height: AppSize.getHeight(54),
                          padding: EdgeInsets.symmetric(
                            horizontal: AppSize.getWidth(12),
                          ),
                          margin: EdgeInsets.symmetric(
                            horizontal: AppSize.getWidth(30),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.kGreyA7,
                              width: AppSize.getMainSize(3),
                            ),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: AppSize.getMainSize(13),
                                child: Image.asset(AppAssets.kWalterWhite),
                              ),
                              SizedBox(
                                width: AppSize.getWidth(13),
                              ),
                              Text(
                                AppStrings.kWalter,
                                style: AppStyles.kStyleRegular.copyWith(
                                    color: AppColors.kGreyA0, fontSize: AppSize.getMainSize(13)),
                              ),
                              SizedBox(
                                width: AppSize.getWidth(3),
                              ),
                              Text(
                                AppStrings.kMay,
                                style: AppStyles.kStyleRegular.copyWith(
                                    color: AppColors.kGreyA0, fontSize: AppSize.getMainSize(13)),
                              ),
                              SizedBox(
                                width: AppSize.getWidth(6),
                              ),
                              Text(
                                AppStrings.kDot,
                                style: AppStyles.kStyleRegular.copyWith(
                                    color: AppColors.kGreyA0, fontSize: AppSize.getMainSize(13)),
                              ),
                              SizedBox(
                                width: AppSize.getWidth(6),
                              ),
                              Text(
                                AppStrings.k8,
                                style: AppStyles.kStyleRegular.copyWith(
                                    color: AppColors.kGreyA0, fontSize: AppSize.getMainSize(13)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: AppSize.getHeight(21),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: AppSize.getWidth(30),
                          ),
                          child: Text(
                            AppStrings.kJust,
                            style: AppStyles.kStyleMedium.copyWith(
                              color: AppColors.kBlack2D,
                              fontSize: AppSize.getMainSize(16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  final void Function(int) myFunction;
  final int  myIndex;
  const CustomIndicator({super.key, required this.myFunction, required this.myIndex});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppSize.getHeight(320),
      child: SizedBox(
        height: AppSize.getHeight(15),
        width: AppSize.getWidth(375),
        child: Center(
          child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap:() {
                    myFunction(index);
                  },
                  child: Image.asset(
                    AppAssets.kSelected,
                    color: myIndex == index ? AppColors.kGreyA7 : AppColors.kWhiteFF,
                    height:
                       myIndex == index ? AppSize.getHeight(15) : AppSize.getHeight(10),
                    width: myIndex == index ? AppSize.getWidth(15) : AppSize.getWidth(10),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: AppSize.getWidth(5),
                );
              },
              itemCount: 3),
        ),
      ),
    );
  }
}

class CustomPageView extends StatelessWidget {
  final void Function(int) myFunction;
  final int myIndex;
  final PageController pageController;

  const CustomPageView({super.key, required this.myFunction, required this.myIndex, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.getHeight(730),
      child: PageView.builder(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: AppLists.myPageView.length,
        onPageChanged: myFunction,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            AppLists.myPageView[myIndex],
            fit: BoxFit.fill,
            height: AppSize.getHeight(730),
            width: double.infinity,
          );
        },
      ),
    );
  }
}
