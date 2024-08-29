import 'package:a_a_travel_ui/core/app_assets/app_assets.dart';
import 'package:a_a_travel_ui/core/app_colors/app_colors.dart';
import 'package:a_a_travel_ui/core/app_size/app_size.dart';
import 'package:a_a_travel_ui/core/app_strings/app_strings.dart';
import 'package:a_a_travel_ui/core/app_styles/app_styles.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/shared_widgets/custom_bottom_nav_bar.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/shared_widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppHome extends StatelessWidget {
  const AppHome({super.key});

  @override
  Widget build(BuildContext context) {
    AppSize.init(context: context,usingStatusBarHeight: false, designHeight: 812, designWidth: 375);
    return Scaffold(
      bottomNavigationBar: const CustomBottomNavBar(),
      backgroundColor: AppColors.kWhiteFF,
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(30)),
              child: Column(
                children: [
                  SizedBox(
                    height: AppSize.getHeight(30),
                  ),
                  Row(
                    children: [
                      Container(
                        height: AppSize.getHeight(49),
                        width: AppSize.getWidth(49),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: SvgPicture.asset(
                          AppAssets.kBoy,
                        ),
                      ),
                      SizedBox(
                        width: AppSize.getWidth(16),
                      ),
                      Column(
                        children: [
                          Text(
                            AppStrings.kWelcomeBack,
                            style: AppStyles.kStyleBold.copyWith(fontSize: AppSize.getMainSize(16)),
                          ),
                          Text(
                            AppStrings.kMonday,
                            style: AppStyles.kStyleRegular.copyWith(
                                color: AppColors.kGreyA0, fontSize: AppSize.getMainSize(12)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: AppSize.getHeight(49),
                    width: AppSize.getWidth(315),
                    decoration: BoxDecoration(
                        color: AppColors.kWhite, borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        const CustomTextField(),
                        Container(
                          height: AppSize.getHeight(49),
                          decoration: BoxDecoration(
                            color: AppColors.kMoveFD,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(AppAssets.kSearch),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppSize.getHeight(15),
                  ),
                  SizedBox(
                    height: AppSize.getHeight(14),
                    child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Text(
                            AppStrings.kHealth,
                            style: AppStyles.kStyleMedium.copyWith(
                              color: AppColors.kGreyA0,
                              fontSize: AppSize.getMainSize(12),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: AppSize.getWidth(38),
                          );
                        },
                        itemCount: 10),
                  ),
                  SizedBox(
                    height: AppSize.getHeight(30),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(304),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: AppSize.getWidth(30)),
                  itemBuilder: (context, index) {
                    return Container(
                      width: AppSize.getWidth(255),
                      height: AppSize.getHeight(304),
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: AppSize.getWidth(10), right: AppSize.getWidth(12)),
                        child: Column(
                          children: [
                            SizedBox(
                              height: AppSize.getHeight(12),
                            ),
                            Image.asset(
                              AppAssets.kNatural,
                              width: AppSize.getWidth(231),
                              height: AppSize.getHeight(164),
                              fit: BoxFit.fill,
                            ),
                            SizedBox(
                              height: AppSize.getHeight(18),
                            ),
                            Text(
                              AppStrings.kFeel,
                              textAlign: TextAlign.center,
                              style: AppStyles.kStyleSemiBold
                                  .copyWith(fontSize: AppSize.getMainSize(15)),
                            ),
                            SizedBox(
                              height: AppSize.getHeight(16),
                            ),
                            NewWidget()
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: AppSize.getWidth(20),
                    );
                  },
                  itemCount: 10),
            ),
            SizedBox(
              height: AppSize.getHeight(30),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSize.getWidth(29.5)),
              child: Row(
                children: [
                  Text(
                    AppStrings.kShort,
                    style: AppStyles.kStyleBold.copyWith(fontSize: AppSize.getMainSize(17)),
                  ),
                  SizedBox(
                    width: AppSize.getWidth(170),
                  ),
                  Text(
                    AppStrings.kView,
                    style: AppStyles.kStyleMedium
                        .copyWith(color: AppColors.kMoveFD, fontSize: AppSize.getMainSize(12)),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: AppSize.getHeight(19),
            ),
            SizedBox(
              height: AppSize.getHeight(88),
              child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: AppSize.getWidth(30)),
                  itemBuilder: (context, index) {
                    return Container(
                      width: AppSize.getWidth(208),
                      height: AppSize.getHeight(88),
                      decoration: BoxDecoration(
                        color: AppColors.kWhite,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: AppSize.getWidth(9)),
                        child: Row(
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  AppAssets.kSea,
                                  width: AppSize.getWidth(70),
                                  height: AppSize.getHeight(70),
                                  fit: BoxFit.fill,
                                ),
                                Image.asset(
                                  AppAssets.kPlay,
                                  width: AppSize.getWidth(17.80),
                                  height: AppSize.getHeight(17.80),
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                            SizedBox(
                              width: AppSize.getWidth(12),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppStrings.kTop,
                                  style: AppStyles.kStyleSemiBold
                                      .copyWith(fontSize: AppSize.getMainSize(13)),
                                ),
                                SizedBox(
                                  height: AppSize.getHeight(9),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      AppAssets.kEye,
                                      width: AppSize.getWidth(14.54),
                                      height: AppSize.getHeight(11.75),
                                      fit: BoxFit.fill,
                                    ),
                                    SizedBox(
                                      width: AppSize.getWidth(4.3),
                                    ),
                                    Text(
                                      AppStrings.k40,
                                      style: AppStyles.kStyleMedium.copyWith(
                                          color: AppColors.kGreyA0,
                                          fontSize: AppSize.getMainSize(12)),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: AppSize.getWidth(20),
                    );
                  },
                  itemCount: 10),
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: AppSize.getMainSize(19),
          child: Image.asset(AppAssets.kGirl),
        ),
        SizedBox(width: AppSize.getWidth(12)),
        Column(
          children: [
            Text(
              AppStrings.kSang,
              style: AppStyles.kStyleSemiBold.copyWith(fontSize: AppSize.getMainSize(12)),
            ),
            SizedBox(
              height: AppSize.getHeight(5),
            ),
            Text(
              AppStrings.kSep,
              style: AppStyles.kStyleRegular
                  .copyWith(color: AppColors.kGreyA0, fontSize: AppSize.getMainSize(12)),
            ),
          ],
        ),
        SizedBox(
          width: AppSize.getWidth(61),
        ),
        Container(
          width: AppSize.getWidth(37),
          height: AppSize.getHeight(37),
          alignment: Alignment.center,
          decoration:
              BoxDecoration(color: AppColors.kWhiteF4, borderRadius: BorderRadius.circular(16)),
          child: SvgPicture.asset(
            AppAssets.kCursor,
            width: AppSize.getWidth(16.04),
            height: AppSize.getHeight(16.04),
          ),
        )
      ],
    );
  }
}
