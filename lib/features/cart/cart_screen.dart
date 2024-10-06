import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/cart/model/cart_item_model.dart';
import 'package:ucomm/features/checkout_bottomsheet/checkout_bottomsheet.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';

import '../../widgets/custom_elevated_button.dart';
import 'widgets/slidable_list_item_widget.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        automaticallyImplyLeading: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView.separated(
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
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomElevatedButton(
          text: "Go to Checkout",
          onPressed: () {
            _showFilterBottomSheet(context);
          },
          rightIcon: Row(
            children: [
              SizedBox(width: 40.h),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1A48BBC2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "\$12.96",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          buttonTextStyle: CustomTextStyles.titleMediumPrimaryContainer,
        ),
      ),
    );
  }

  void _showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => DraggableScrollableSheet(
        expand: false,
        maxChildSize: 0.9,
        initialChildSize: 0.7,
        minChildSize: 0.5,
        builder: (_, scrollController) => CheckoutBottomSheet(
            // scrollController: scrollController,
            ),
      ),
    );
  }
}
