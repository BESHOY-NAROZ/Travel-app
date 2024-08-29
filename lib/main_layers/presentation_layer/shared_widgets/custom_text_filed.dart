import 'package:a_a_travel_ui/core/app_colors/app_colors.dart';
import 'package:a_a_travel_ui/core/app_size/app_size.dart';
import 'package:a_a_travel_ui/core/app_strings/app_strings.dart';
import 'package:a_a_travel_ui/core/app_styles/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  static final InputBorder inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: BorderSide.none,
  );

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        style: AppStyles.kStyleRegular
            .copyWith(fontSize: AppSize.getMainSize(12), color: AppColors.kBlack2D),
        decoration: InputDecoration(
          hintText: AppStrings.kSearch,
          hintStyle: AppStyles.kStyleRegular
              .copyWith(fontSize: AppSize.getMainSize(12), color: AppColors.kGreyA7),
          border: inputBorder,
          disabledBorder: inputBorder,
          enabledBorder: inputBorder,
          errorBorder: inputBorder,
          focusedBorder: inputBorder,
          focusedErrorBorder: inputBorder,
        ),
      ),
    );
  }
}
