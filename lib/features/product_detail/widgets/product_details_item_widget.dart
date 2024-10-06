import 'package:flutter/material.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/theme/custom_text_style.dart';

class ProductDetailsSectionItemWidget extends StatelessWidget {
  ProductDetailsSectionItemWidget({
    super.key,
    required this.item,
    required this.onSelectedExpandableList,
    required this.isSelected,
  });
  ItemModel item;
  Function(dynamic value) onSelectedExpandableList;
  bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
      child: ExpansionTile(
        tilePadding: EdgeInsets.zero,
        title: SizedBox(
          width: double.maxFinite,
          child: Row(
            children: [
              Text(
                "Product Detail",
                style: CustomTextStyles.titleMedium16,
              )
            ],
          ),
        ),
        trailing: isSelected
            ? Icon(
                Icons.arrow_drop_down,
                size: 8.h,
              )
            : Icon(
                Icons.arrow_forward_ios,
                size: 8.h,
              ),
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  item.title!,
                  style: CustomTextStyles.bodyMedium13,
                )
              ],
            ),
          )
        ],
        onExpansionChanged: (value) {
          onSelectedExpandableList?.call(value);
        },
      ),
    );
  }
}
