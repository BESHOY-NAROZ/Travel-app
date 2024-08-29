import 'package:a_a_travel_ui/core/app_assets/app_assets.dart';
import 'package:a_a_travel_ui/core/app_colors/app_colors.dart';
import 'package:a_a_travel_ui/core/app_lists/app_lists.dart';
import 'package:a_a_travel_ui/core/app_size/app_size.dart';
import 'package:a_a_travel_ui/core/app_strings/app_strings.dart';
import 'package:a_a_travel_ui/core/app_styles/app_styles.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/shared_widgets/custom_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppProfile extends StatelessWidget {
  const AppProfile({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.init(context: context,usingStatusBarHeight: false, designHeight: 812, designWidth: 375);
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      backgroundColor: AppColors.kWhiteFF,
      body: ListView(
        children: [
          SizedBox(
            height: AppSize.getHeight(51),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSize.getWidth(30),
            ),
            child: Row(
              children: [
                Container(
                  width: AppSize.getWidth(70),
                  height: AppSize.getHeight(70),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Image.asset(
                    AppAssets.kMainProfile,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: AppSize.getWidth(15),
                ),
                Column(
                  children: [
                    Text(
                      AppStrings.kElly,
                      style: AppStyles.kStyleBold.copyWith(
                        color: AppColors.kBlack2D,
                        fontSize: AppSize.getMainSize(16),
                      ),
                    ),
                    Text(
                      AppStrings.kAuthor,
                      style: AppStyles.kStyleRegular.copyWith(
                        color: AppColors.kBlack2D,
                        fontSize: AppSize.getMainSize(12),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: AppSize.getWidth(36),
                ),
                MaterialButton(
                  color: AppColors.kMoveFD,
                  minWidth: AppSize.getWidth(109),
                  height: AppSize.getHeight(42),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(14),
                    ),
                  ),
                  child: Text(
                    AppStrings.kFollowing,
                    style: AppStyles.kStyleMedium.copyWith(
                      color: AppColors.kWhite,
                      fontSize: AppSize.getMainSize(12),
                    ),
                  ),
                  onPressed: () {
                    AppSize.getMainSize(100);
                  },
                )
              ],
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(20),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: AppSize.getWidth(30),
              right: AppSize.getWidth(75),
            ),
            child: Text(
              AppStrings.kEvery,
              style: AppStyles.kStyleMedium
                  .copyWith(fontSize: AppSize.getMainSize(12), color: AppColors.kGreyA0,height: 1.1),
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(33),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(30)),
            child: Container(
              height: AppSize.getHeight(95),
              width: AppSize.getWidth(315),
              decoration: BoxDecoration(
                color: AppColors.kBlack2D,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.k54,
                        style: AppStyles.kStyleBold.copyWith(
                          fontSize: AppSize.getMainSize(16),
                          color: AppColors.kWhite,
                        ),
                      ),
                      Text(
                        AppStrings.kFollowers,
                        style: AppStyles.kStyleMedium.copyWith(
                          fontSize: AppSize.getMainSize(12),
                          color: AppColors.kWhite,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: AppSize.getHeight(38),
                    width: AppSize.getWidth(1),
                    color: AppColors.kWhite,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.k2,
                        style: AppStyles.kStyleBold.copyWith(
                          fontSize: AppSize.getMainSize(16),
                          color: AppColors.kWhite,
                        ),
                      ),
                      Text(
                        AppStrings.kPosts,
                        style: AppStyles.kStyleMedium.copyWith(
                          fontSize: AppSize.getMainSize(12),
                          color: AppColors.kWhite,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: AppSize.getHeight(38),
                    width: AppSize.getWidth(1),
                    color: AppColors.kWhite,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.k36,
                        style: AppStyles.kStyleBold.copyWith(
                          fontSize: AppSize.getMainSize(16),
                          color: AppColors.kWhite,
                        ),
                      ),
                      Text(
                        AppStrings.kFollowers,
                        style: AppStyles.kStyleMedium.copyWith(
                          fontSize: AppSize.getMainSize(12),
                          color: AppColors.kWhite,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(30),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: AppSize.getWidth(30),
              right: AppSize.getWidth(29),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.kEllyPost,
                  style: AppStyles.kStyleBold
                      .copyWith(fontSize: AppSize.getMainSize(17), color: AppColors.kBlack2D,height: 1.1),
                ),
                Text(
                  AppStrings.kViewAll,
                  style: AppStyles.kStyleMedium
                      .copyWith(fontSize: AppSize.getMainSize(12), color: AppColors.kMoveFD),
                ),
              ],
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(19),
          ),
          const EllyPost(
            museum: AppAssets.kEgyptianMuseum,
            newsType: AppStrings.kNewsPolitics,
            newsDesc: AppStrings.kIran,
            date: AppStrings.k16th,
            time: AppStrings.k09,
          ),
          SizedBox(
            height: AppSize.getHeight(15),
          ),
          const EllyPost(
            museum: AppAssets.kBritishMuseum,
            newsType: AppStrings.kNewsScience,
            newsDesc: AppStrings.kPutin,
            date: AppStrings.k11th,
            time: AppStrings.k10,
          ),
          SizedBox(
            height: AppSize.getHeight(30),
          ),
          Padding(
            padding: EdgeInsets.only(left: AppSize.getWidth(30)),
            child: Text(
              AppStrings.kPopular,
              style: AppStyles.kStyleBold
                  .copyWith(fontSize: AppSize.getMainSize(17), color: AppColors.kBlack2D,height: 1.1),
            ),
          ),
          SizedBox(
            height: AppSize.getHeight(20),
          ),
          SizedBox(
            height: AppSize.getHeight(143),
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(30)),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(14),
                    child: Image.asset(AppLists.russiaMuseum[index],
                        fit: BoxFit.fill,
                        height: AppSize.getHeight(143),
                        width: AppSize.getWidth(248)),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: AppSize.getWidth(15));
                },
                itemCount: AppLists.russiaMuseum.length),
          ),
          SizedBox(
            height: AppSize.getHeight(18),
          ),
        ],
      ),
    );
  }
}

class EllyPost extends StatelessWidget {
  final String museum;
  final String newsType;
  final String newsDesc;
  final String date;
  final String time;

  const EllyPost({
    super.key,
    required this.museum,
    required this.newsType,
    required this.newsDesc,
    required this.date,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(30)),
      child: Row(
        children: [
          Container(
            height: AppSize.getHeight(100),
            width: AppSize.getWidth(100),
            padding: EdgeInsets.all(AppSize.getHeight(5)),
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(14), color: AppColors.kWhite),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                museum,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: AppSize.getWidth(14.4),
          ),
          Column(
            children: [
              Text(
                newsType,
                style: AppStyles.kStyleRegular
                    .copyWith(fontSize: AppSize.getMainSize(10), color: AppColors.kGreyA0),
              ),
              SizedBox(
                height: AppSize.getHeight(10),
              ),
              Text(
                newsDesc,
                style: AppStyles.kStyleSemiBold
                    .copyWith(fontSize: AppSize.getMainSize(14), color: AppColors.kBlack2D),
              ),
              SizedBox(
                height: AppSize.getHeight(10.4),
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    AppAssets.kDate,
                    width: AppSize.getWidth(16.16),
                    height: AppSize.getHeight(17.33),
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: AppSize.getWidth(7.68),
                  ),
                  Text(
                    date,
                    style: AppStyles.kStyleMedium
                        .copyWith(fontSize: AppSize.getMainSize(11), color: AppColors.kGreyA0),
                  ),
                  SizedBox(
                    width: AppSize.getWidth(55.9),
                  ),
                  SvgPicture.asset(
                    AppAssets.kTime,
                    width: AppSize.getWidth(16.16),
                    height: AppSize.getHeight(17.33),
                    fit: BoxFit.fill,
                  ),
                  SizedBox(
                    width: AppSize.getWidth(7.68),
                  ),
                  Text(
                    time,
                    style: AppStyles.kStyleMedium
                        .copyWith(fontSize: AppSize.getMainSize(11), color: AppColors.kGreyA0),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
