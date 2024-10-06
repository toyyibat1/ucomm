import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/theme_helper.dart';

import '../model/product_item_model.dart';

class ProductGridItemWidget extends StatelessWidget {
  ProductGridItemWidget({super.key, required this.productItemModel});
  ProductItemModel productItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 24),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: productItemModel.color.withOpacity(0.1),
        borderRadius: BorderRadiusStyle.roundedBorder16,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          CustomImageView(
            imagePath: productItemModel.image,
            height: 74.h,
          ),
          SizedBox(height: 24.h),
          Text(
            productItemModel.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: theme.textTheme.bodyLarge!.copyWith(height: 1.38),
          )
        ],
      ),
    );
  }
}
