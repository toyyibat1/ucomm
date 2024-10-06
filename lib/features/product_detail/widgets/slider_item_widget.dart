import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/home/model/list_organic_item_model.dart';
import 'package:ucomm/widgets/custom_image_view.dart';

class SliderItemWidget extends StatelessWidget {
  SliderItemWidget({required this.item, super.key});

  ItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(16),
        bottomRight: Radius.circular(16),
      )),
      height: 236.h,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Opacity(
            opacity: 0.9,
            child: CustomImageView(
              imagePath: item.image,
              height: 198.h,
              width: double.maxFinite,
              alignment: Alignment.topCenter,
              fit: BoxFit.fitHeight,
            ),
          )
        ],
      ),
    );
  }
}
