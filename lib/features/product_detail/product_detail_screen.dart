// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/features/product_detail/widgets/product_details_item_widget.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

import 'widgets/nutrition_and_review_widget.dart';
import 'widgets/slider_item_widget.dart';

class ProductDetailScreen extends ConsumerWidget {
  ProductDetailScreen({required this.item, super.key});

  ItemModel item;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: appTheme.gray100,
      body: Column(
        children: [
          _buildImageSliderSection(context, item),
          Expanded(
              child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.title!,
                        style: CustomTextStyles.headlineSmallGilroyBold,
                      ),
                      Icon(
                        Icons.favorite_border,
                        size: 24.h,
                      )
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    item.subtitle!,
                    style: CustomTextStyles.titleMediumGray6000116,
                  ),
                  SizedBox(height: 26.h),
                  _buildPriceSection(context),
                  SizedBox(height: 30.h),
                  Divider(
                    indent: 2.h,
                    endIndent: 4.h,
                  ),
                  SizedBox(height: 10.h),
                  _buildProductDetailsSection(context),
                  SizedBox(height: 62.h),
                ],
              ),
            ),
          ))
        ],
      ),
      bottomNavigationBar: _buildAddToBasketButton(context),
    );
  }

  _buildImageSliderSection(BuildContext context, ItemModel item) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.gray100,
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            SizedBox(
              height: 60.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 18.h,
                  ),
                ),
                CustomImageView(
                  svgPath: ImageConstant.share,
                ),
              ],
            ),
            SizedBox(height: 24.h),
            SliderItemWidget(item: item)
          ],
        ),
      ),
    );
  }

  _buildPriceSection(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 40,
                height: 40,
                child: Icon(Icons.remove, color: appTheme.gray600),
              ),
            ),
            const SizedBox(width: 8),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.gray300, width: 1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 40,
                height: 40,
                child: Icon(Icons.add, color: theme.colorScheme.primary),
              ),
            ),
          ],
        )),
        Text(
          item.price!,
          style: CustomTextStyles.headlineSmallGilroyBold,
        )
      ],
    );
  }

  _buildProductDetailsSection(BuildContext context) {
    return Column(
      children: [
        ProductDetailsSectionItemWidget(
          item: item,
          onSelectedExpandableList: (value) {},
          isSelected: true,
          title: "Product Detail",
        ),
        NutritionReviewWidget(
          item: item,
          onSelectedExpandableList: (value) {},
          isSelected: false,
          title: "Nutrition",
          widget: Container(
            decoration: BoxDecoration(
              color: appTheme.gray300,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Text("100gr"),
          ),
        ),
        NutritionReviewWidget(
          item: item,
          onSelectedExpandableList: (value) {},
          isSelected: false,
          title: "Reviews",
          widget: RatingBarIndicator(
            rating: 5,
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5,
            itemSize: 20.0,
            direction: Axis.horizontal,
          ),
        ),
      ],
    );
  }

  _buildAddToBasketButton(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomElevatedButton(text: "Add To Basket"),
    );
  }
}
