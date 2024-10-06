import 'package:flutter/material.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/explore/model/product_item_model.dart';
import 'package:ucomm/features/home/widgets/list_organic_item_widget.dart';
import 'package:ucomm/widgets/custom_search_view.dart';

import '../home/model/list_organic_item_model.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leadingWidth: 324.h,
        leading: const Icon(Icons.arrow_back_ios),
        title: const CustomSearchView(
          hintText: "Egg",
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shuffle),
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
          physics: const BouncingScrollPhysics(),
          children: items,
        ),
      ),
    );
  }
}
