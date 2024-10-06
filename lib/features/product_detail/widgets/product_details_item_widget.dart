// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/theme/custom_text_style.dart';

class ProductDetailsSectionItemWidget extends StatelessWidget {
  ProductDetailsSectionItemWidget(
      {super.key,
      required this.item,
      required this.onSelectedExpandableList,
      required this.isSelected,
      required this.title});
  ItemModel item;
  Function(dynamic value) onSelectedExpandableList;
  bool isSelected;
  String title;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: CustomTextStyles.titleMedium16,
              ),
            ],
          ),
        ),
        children: [
          Column(
            children: [
              Text(
                item.desc!,
                style: CustomTextStyles.bodyMedium13,
              ),
            ],
          ),
        ],
        onExpansionChanged: (value) {
          onSelectedExpandableList.call(value);
        },
      ),
    );
  }
}
