import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';

class BannerItemWidget extends StatelessWidget {
  const BannerItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.backgroundImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: appTheme.whiteA70001.withOpacity(0.53),
              borderRadius: BorderRadiusStyle.roundedBorder8,
              border: Border.all(
                color: appTheme.gray100,
                width: 1.h,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: 114.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.banner1,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 30.h),
                        child: Column(
                          children: [
                            Text(
                              "Freash Vegetables",
                              style:
                                  CustomTextStyles.titleLargeAclonicaOnPrimary,
                            ),
                            Text(
                              "Get Up To 40% OFF",
                              style:
                                  CustomTextStyles.titleLargeAclonicaOnPrimary,
                            )
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.carrot,
                        height: 104.h,
                        width: 122.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 2.h,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 114.h,
                          width: 202.h,
                          decoration: BoxDecoration(
                              color: appTheme.whiteA70001.withOpacity(0.6)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
