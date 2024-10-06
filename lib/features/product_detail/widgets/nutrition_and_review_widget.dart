import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';

class NutritionReviewWidget extends StatelessWidget {
  NutritionReviewWidget({
    super.key,
    required this.item,
    required this.onSelectedExpandableList,
    required this.isSelected,
    required this.title,
    required this.widget,
  });
  ItemModel item;
  Function(dynamic value) onSelectedExpandableList;
  bool isSelected;
  String title;
  Widget widget;

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
              // Add Rating Bar here
              widget,
            ],
          ),
        ),
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  item.desc!,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
        ],
        onExpansionChanged: (value) {
          onSelectedExpandableList.call(value);
        },
      ),
    );
  }
}
