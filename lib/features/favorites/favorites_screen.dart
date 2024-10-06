import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

import 'model/favorities_model.dart';
import 'widgets/favorities_list_item_widget.dart';

class FavoritesPage extends ConsumerWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorities"),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 4.h),
              Container(
                width: double.maxFinite,
                child: _buildFavoritiesList(context),
              ),
              SizedBox(height: 18.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(
                  color: appTheme.gray300,
                ),
                height: 4.h,
              ),
              SizedBox(height: 50.h),
              _buildAddToCart(context)
            ],
          ),
        ));
  }

  _buildFavoritiesList(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return FavoritiesListItemWidget(favoritesItem[index]);
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1.h,
          thickness: 1.h,
          color: appTheme.gray300,
        );
      },
      itemCount: 6,
    );
  }

  _buildAddToCart(BuildContext context) {
    return CustomElevatedButton(text: "Add All To Cart");
  }
}
