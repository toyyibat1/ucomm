import 'package:flutter/material.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/favorites/model/favorities_model.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_image_view.dart';

class FavoritiesListItemWidget extends StatelessWidget {
  FavoritiesListItemWidget(this.favoritiesItemModel, {super.key});
  FavoritiesItemModel favoritiesItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: favoritiesItemModel.image,
            height: 54.h,
            width: 30.h,
            alignment: Alignment.center,
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  favoritiesItemModel.title,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  favoritiesItemModel.subtitle,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Text(
            favoritiesItemModel.price,
            style: CustomTextStyles.titleMedium16_1,
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 8.h,
          )
        ],
      ),
    );
  }
}
