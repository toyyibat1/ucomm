// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/explore/model/product_item_model.dart';
import 'package:ucomm/features/explore/widgets/product_grid_widget.dart';
import 'package:ucomm/features/filters/filter_screen.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/features/product_detail/product_detail_screen.dart';

import '../home/widgets/list_organic_item_widget.dart';

class ProductItemScreen extends StatelessWidget {
  ProductItemScreen({super.key, required this.product});

  ProductItemModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
        centerTitle: true,
        actions: [
          CustomImageView(
            svgPath: ImageConstant.filter,
            margin: const EdgeInsets.only(right: 16.0),
            height: 17,
            width: 17,
            onTap: () {
              _showFilterBottomSheet(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            _buildGrid(context),
            SizedBox(height: 4.h),
          ],
        ),
      ),
    );
  }

  _buildGrid(BuildContext context) {
    return Expanded(
      child: ResponsiveGridListBuilder(
        minItemWidth: 1,
        minItemsPerRow: 2,
        maxItemsPerRow: 2,
        horizontalGridSpacing: 14.h,
        verticalGridMargin: 14.h,
        gridItems: List.generate(
          productmodel.length,
          (index) {
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailScreen(item: productmodel[index]),
                  ),
                );
              },
              child: ProductGrid(
                item: productmodel[index],
              ),
            );
          },
        ),
        builder: (context, items) => ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          children: items,
        ),
      ),
    );
  }

  // void _showFilterBottomSheet(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
  //     ),
  //     builder: (context) => DraggableScrollableSheet(
  //       expand: false,
  //       maxChildSize: 0.9,
  //       initialChildSize: 0.9,
  //       minChildSize: 0.5,
  //       builder: (_, scrollController) => FilterScreen(
  //         scrollController: scrollController,
  //       ),
  //     ),
  //   );
  // }
  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        maxChildSize: 0.9,
        initialChildSize: 0.7,
        minChildSize: 0.5,
        builder: (_, scrollController) => FilterScreen(
          scrollController: scrollController,
        ),
      ),
    );
  }
}
