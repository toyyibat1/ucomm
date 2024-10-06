// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/theme_helper.dart';

class ListOrganicItemWidget extends StatelessWidget {
  ListOrganicItemWidget({required this.item, super.key});
  ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.h),
      width: 172.h,
      padding: EdgeInsets.all(8.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.roundedBorder16,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10.h),
          CustomImageView(
            imagePath: item.image,
            height: 78.h,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 18.h, right: 24.h),
          ),
          SizedBox(height: 20.h),
          Text(
            item.title ?? "",
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 6.h),
          Text(
            item.subtitle ?? "",
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 20.h),
          Row(
            children: [
              Text(item.price!, style: theme.textTheme.titleMedium),
              Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    border: Border.all(color: appTheme.gray200, width: 1),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
