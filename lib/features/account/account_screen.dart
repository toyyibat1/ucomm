import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/custom_button_style.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

import 'model/account_model.dart';
import 'widget/account_option_list_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Container(
            width: double.maxFinite,
            child: Column(
              children: [
                SizedBox(height: 10.h),
                _buildProfileSection(context),
                SizedBox(height: 30.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.gray300,
                  ),
                ),
                SizedBox(height: 14.h),
                _buildActionOptionList(context),
                SizedBox(height: 18.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    color: appTheme.gray300,
                  ),
                ),
                SizedBox(height: 50.h),
                _buildLogoutSection(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProfileSection(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                height: 64.h,
                width: 62.h,
                radius: BorderRadius.circular(
                  26.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(width: 20.h),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      "Afsar Hossen",
                      style: theme.textTheme.titleLarge,
                    ),
                    Icon(Icons.edit, size: 14.h)
                  ],
                ),
              ),
              Text(
                "Imshuvo97@gmail.com",
                style: CustomTextStyles.bodyLargeGilroyMedium,
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildActionOptionList(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemCount: accountModel.length,
      separatorBuilder: (context, index) {
        return Divider(height: 1.h, thickness: 1.h, color: appTheme.gray300);
      },
      itemBuilder: (context, index) {
        return AccountOptionListWidget(accountModel[index]);
      },
    );
  }

  _buildLogoutSection(BuildContext context) {
    return CustomElevatedButton(
      text: "Log out",
      leftIcon: Icon(
        Icons.arrow_forward_ios,
        size: 18.h,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
    );
  }
}
