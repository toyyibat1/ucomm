import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/explore/model/product_item_model.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';

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
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shuffle),
          ),
        ],
      ),
      body: Column(
        children: [
          _buildGrid(context),
          SizedBox(height: 4.h),
        ],
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
          productItemModel.length,
          (index) {
            return ListOrganicItemWidget(
              item: items[index],
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
}
