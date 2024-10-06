import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/navigator_service.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/error_dialog/error_dialog.dart';
import 'package:ucomm/features/explore/model/product_item_model.dart';
import 'package:ucomm/features/explore/product_item_screen.dart';
import 'package:ucomm/theme/custom_text_style.dart';
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
        automaticallyImplyLeading: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 4.h),
          _buildFavoritiesList(context),
          SizedBox(height: 50.h),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomElevatedButton(
          text: "Add All To Cart",
          onPressed: () {
            _failedDialog(context);
          },
          buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainer,
        ),
      ),
    );
  }

  _buildFavoritiesList(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: FavoritiesListItemWidget(
              favoritesItem[index],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 1.h,
            thickness: 1.h,
            color: appTheme.gray300,
          );
        },
        itemCount: favoritesItem.length,
      ),
    );
  }

  void _failedDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0), // Rounded corners
            ),
            backgroundColor: Colors.white,
            child: ErrorDialog(),
          );
        });
  }
}
