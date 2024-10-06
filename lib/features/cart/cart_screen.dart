import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/cart/model/cart_item_model.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

import 'widgets/slidable_list_item_widget.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              ListView.separated(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return SlidableListItemWidget(cartItem[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 1.h,
                    thickness: 1.h,
                    color: appTheme.gray300,
                  );
                },
                itemCount: cartItem.length,
              ),
              SizedBox(height: 8.h),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(16.0),
          child: CustomElevatedButton(
            text: "Go to Checkout",
            buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainer,
          ),
        ));
  }
}
