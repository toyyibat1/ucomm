import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/features/product_detail/widgets/product_details_item_widget.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';
import 'package:ucomm/widgets/custom_image_view.dart';
import 'package:ucomm/widgets/custom_text_form_filed.dart';

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
                const Icon(Icons.share)
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
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Row(
            children: [
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 2.h,
                  width: 16.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.remove,
                        size: 17.h,
                      )
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CustomTextFormField(
                  // readOnly: true,
                  width: 44.h,
                  hintText: "1",

                  hintStyle: CustomTextStyles.titleMedium_1,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.outlineGray,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: SizedBox(
                  height: 2.h,
                  width: 16.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(
                        Icons.add,
                        size: 17.h,
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
          Text(
            item.price!,
            style: CustomTextStyles.headlineSmallGilroyBold,
          )
        ],
      ),
    );
  }

  _buildProductDetailsSection(BuildContext context) {
    return Container(
        child: Column(
      children: [
        ProductDetailsSectionItemWidget(
          item: item,
          onSelectedExpandableList: (value) {},
          isSelected: true,
        ),
        ProductDetailsSectionItemWidget(
          item: item,
          onSelectedExpandableList: (value) {},
          isSelected: false,
        ),
        ProductDetailsSectionItemWidget(
          item: item,
          onSelectedExpandableList: (value) {},
          isSelected: false,
        ),
      ],
    ));
  }

  _buildAddToBasketButton(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: CustomElevatedButton(text: "Add To Basket"),
    );
  }
}
