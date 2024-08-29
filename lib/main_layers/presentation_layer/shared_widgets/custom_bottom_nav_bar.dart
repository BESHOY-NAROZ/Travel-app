import 'package:a_a_travel_ui/core/app_assets/app_assets.dart';
import 'package:a_a_travel_ui/core/app_colors/app_colors.dart';
import 'package:a_a_travel_ui/core/app_size/app_size.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/app_home/app_home.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/app_news/app_news.dart';
import 'package:a_a_travel_ui/main_layers/presentation_layer/app_profile/app_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  static int myIndex = 0;

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top]);
    // const SystemUiOverlayStyle(
    //     systemNavigationBarColor: AppColors.kWhiteFF,
    //     systemNavigationBarIconBrightness: Brightness.dark);
    return SizedBox(
      height: AppSize.getHeight(82),
      child: BottomNavigationBar(
        elevation: 20,
        currentIndex: myIndex,
        backgroundColor: AppColors.kWhiteFF,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.kHome,
                colorFilter: ColorFilter.mode(
                    myIndex == 0 ? AppColors.kMoveFD : AppColors.kGreyA0, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.kNews,
                colorFilter: ColorFilter.mode(
                    myIndex == 1 ? AppColors.kMoveFD : AppColors.kGreyA0, BlendMode.srcIn),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppAssets.kNotification,
                colorFilter: ColorFilter.mode(
                    myIndex == 2 ? AppColors.kMoveFD : AppColors.kGreyA0, BlendMode.srcIn),
              ),
              label: ''),


        ],
        onTap: (value) {
          setState(() {
            myIndex = value;
            if (myIndex == 0) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppHome(),
                  ));
            } else if (myIndex == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppNews(),
                  ));
            } else if (myIndex == 2) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppProfile(),
                  ));
            }
          });
        },
      ),
    );
  }
}
