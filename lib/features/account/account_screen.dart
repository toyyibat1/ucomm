import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/navigator_service.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
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
                    SizedBox(
                      width: double.maxFinite,
                      child: Divider(
                        color: appTheme.gray300,
                      ),
                    ),
                    _buildLogoutSection(context),
                  ],
                ),
              ),
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
                imagePath: ImageConstant.profile,
                height: 64.h,
                width: 62.h,
                radius: BorderRadius.circular(
                  26.h,
                ),
                alignment: Alignment.center,
              ),
              SizedBox(width: 20.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Afsar Hossen",
                        style: theme.textTheme.titleLarge,
                      ),
                      SizedBox(
                        width: 4.h,
                      ),
                      Icon(
                        Icons.edit_outlined,
                        size: 14.h,
                        color: theme.colorScheme.primary,
                      )
                    ],
                  ),
                  Text(
                    "Imshuvo97@gmail.com",
                    style: CustomTextStyles.bodyLargeGilroyMedium,
                  ),
                ],
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
      physics: NeverScrollableScrollPhysics(),
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
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      text: "Log Out",
      onPressed: () {
        NavigationService.popAndPushNamed(AppRoutes.loginScreen);
      },
      leftIcon: Icon(
        Icons.logout,
        size: 18.h,
        color: Color.fromARGB(255, 109, 116, 145),
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: TextStyle(color: Color(0xFF1A48FF)),
    );
  }
}
