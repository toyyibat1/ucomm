import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/features/product_detail/product_detail_screen.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_search_view.dart';

import 'widgets/list_organic_item_widget.dart';

class ShopPage extends ConsumerWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSettingsSection(context),
            SizedBox(height: 22.h),
            SizedBox(
              width: double.maxFinite,
              child: Align(
                alignment: Alignment.center,
                child: _buildGroceriesColumn(
                  context,
                  groceries: "Exclusive Offer",
                  seeall: "See all",
                ),
              ),
            ),
            _buildExclusiveOfferColumn(context),
            SizedBox(height: 22.h),
            SizedBox(
              width: double.maxFinite,
              child: Align(
                alignment: Alignment.center,
                child: _buildGroceriesColumn(
                  context,
                  groceries: "Best Selling",
                  seeall: "See all",
                ),
              ),
            ),
            _buildBestSellingColumn(context),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  _buildSettingsSection(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              svgPath: ImageConstant.carrot,
              height: 30.h,
              width: 26.h,
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 18,
                ),
                SizedBox(width: 6.h),
                Text(
                  "Dhaka, Banassre",
                  style: CustomTextStyles.bodyLargeABeeZeeGray80001,
                ),
              ],
            ),
            SizedBox(height: 18.h),
            CustomSearchView(hintText: "Search Store"),
            SizedBox(height: 18.h),
            SizedBox(
              height: 114.h,
              width: double.maxFinite,
              child: Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                        height: 114.h,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {}),
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return CustomImageView(imagePath: ImageConstant.banner);
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildExclusiveOfferColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 18.h),
        SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              children: List.generate(items.length, (index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(item: items[index]),
                        ),
                      );
                    },
                    child: ListOrganicItemWidget(item: items[index]));
              }),
            ),
          ),
        )
      ],
    );
  }

  _buildBestSellingColumn(
    BuildContext context,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 18.h),
        SizedBox(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              direction: Axis.horizontal,
              children: List.generate(items.length, (index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(item: items[index]),
                        ),
                      );
                    },
                    child: ListOrganicItemWidget(item: items[index]));
              }),
            ),
          ),
        )
      ],
    );
  }

  _buildGroceriesColumn(BuildContext context,
      {required String groceries, required String seeall}) {
    return Row(
      children: [
        Text(
          groceries,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            fontFamily: 'Gilroy',
          ),
        ),
        Spacer(),
        Text(
          seeall,
          style: TextStyle(
            color: theme.colorScheme.primary,
            fontSize: 16,
            fontFamily: 'Gilroy',
          ),
        ),
      ],
    );
  }
}


              // Align(
                  //   alignment: Alignment.bottomCenter,
                  //   child: Container(
                  //     child: AnimatedSmoothIndicator(
                  //       activeIndex: 0,
                  //       count: 3,
                  //       axisDirection: Axis.horizontal,
                  //       effect: ScrollingDotsEffect(
                  //         spacing: 7.09,
                  //         activeDotColor: theme.colorScheme.primary,
                  //         dotColor:
                  //             theme.colorScheme.onPrimary.withOpacity(0.46),
                  //         dotHeight: 4.h,
                  //         dotWidth: 4.h,
                  //       ),
                  //     ),
                  //   ),
                  // )