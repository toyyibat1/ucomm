import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_checkbox.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

class FilterScreen extends ConsumerWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filters"),
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: appTheme.gray100,
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Column(
          children: [
            Text(
              "Categories",
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 22.h),
            _buildCheckout(context, "Eggs"),
            SizedBox(height: 20.h),
            _buildCheckout(context, "Noodles & Pasta"),
            SizedBox(height: 20.h),
            _buildCheckout(context, "Chips & Crisps"),
            SizedBox(height: 20.h),
            _buildCheckout(context, "Fast Food"),
            SizedBox(height: 34.h),
            Text(
              "Brand",
              style: theme.textTheme.headlineSmall,
            ),
            SizedBox(height: 24.h),
            _buildCheckout(context, "Individual Callection"),
            SizedBox(height: 20.h),
            _buildCheckout(context, "Cocola"),
            SizedBox(height: 20.h),
            _buildCheckout(context, "Ifad"),
            SizedBox(height: 20.h),
            _buildCheckout(context, "Kazi Farmas"),
            Spacer(),
            CustomElevatedButton(text: "Apply Filter"),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  _buildCheckout(BuildContext context, String title) {
    return CustomCheckboxButton(
      text: title,
      value: true,
      textStyle: CustomTextStyles.bodyLargeGilroyMedium,
      onChange: (value) {},
    );
  }
}
