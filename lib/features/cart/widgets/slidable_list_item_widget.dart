// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/cart/model/cart_item_model.dart';
import 'package:ucomm/theme/theme_helper.dart';

class SlidableListItemWidget extends StatelessWidget {
  SlidableListItemWidget(this.cartItemModel, {super.key});

  CartItemModel cartItemModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, top: 12, bottom: 12),
      child: Slidable(
        startActionPane: const ActionPane(
          motion: ScrollMotion(),
          extentRatio: 0.31,
          dragDismissible: false,
          children: [
            Icon(
              Icons.cancel_outlined,
              size: 86,
            )
          ],
        ),
        child: Row(
          children: [
            CustomImageView(
              imagePath: cartItemModel.image,
              height: 64.h,
              width: 70.h,
            ),
            const SizedBox(width: 20),
            Expanded(
                child: Row(
              children: [
                SizedBox(
                  width: 174.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cartItemModel.title,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Text(
                        cartItemModel.subtitle,
                        style: theme.textTheme.bodyMedium,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              // ref.read(itemQuantityProvider.notifier).decrease();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: appTheme.gray300, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child:
                                  Icon(Icons.remove, color: appTheme.gray300),
                            ),
                          ),
                          const SizedBox(width: 16),

                          // Quantity display
                          const Text(
                            '1',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 16),

                          // Plus button
                          GestureDetector(
                            onTap: () {
                              // ref.read(itemQuantityProvider.notifier).increase();
                            },
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: appTheme.gray300, width: 1),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Icon(Icons.add,
                                  color: theme.colorScheme.primary),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            )),
            Column(
              children: [
                Icon(
                  Icons.close,
                  size: 18.h,
                ),
                SizedBox(height: 46.h),
                Text(
                  cartItemModel.price,
                  style: theme.textTheme.titleMedium,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
