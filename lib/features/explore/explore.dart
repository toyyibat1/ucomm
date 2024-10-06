import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/explore/product_item_screen.dart';
import 'package:ucomm/widgets/custom_search_view.dart';

import 'model/product_item_model.dart';
import 'widgets/product_grid_item_widget.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Find Products"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 12.h),
            const CustomSearchView(
              hintText: "Search Store",
            ),
            SizedBox(height: 10.h),
            _buildProductGrid(context)
          ],
        ),
      ),
    );
  }

  _buildProductGrid(BuildContext context) {
    return Expanded(
        child: ResponsiveGridListBuilder(
      minItemWidth: 1,
      minItemsPerRow: 2,
      maxItemsPerRow: 2,
      horizontalGridSpacing: 14.h,
      verticalGridMargin: 14.h,
      gridItems: List.generate(
        productItemModel.length,
        (index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductItemScreen(product: productItemModel[index]),
                ),
              );
            },
            child: ProductGridItemWidget(
              productItemModel: productItemModel[index],
            ),
          );
        },
      ),
      builder: (context, items) => ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        children: items,
      ),
    ));
  }
}
