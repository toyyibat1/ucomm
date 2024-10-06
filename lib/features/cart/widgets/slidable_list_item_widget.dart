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
    return Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        extentRatio: 0.31,
        dragDismissible: false,
        children: [
          Container(
            child: Icon(
              Icons.cancel_outlined,
              size: 86,
            ),
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
          Expanded(
              child: Row(
            children: [
              SizedBox(
                width: 174.h,
                child: Column(
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
                          onTap: () {},
                          child: SizedBox(
                            height: 2.h,
                            width: 16.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.dashboard,
                                  size: 2.h,
                                )
                              ],
                            ),
                          ),
                        ),
                        Text("1"),
                        GestureDetector(
                          onTap: () {},
                          child: SizedBox(
                            height: 2.h,
                            width: 16.h,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 2.h,
                                )
                              ],
                            ),
                          ),
                        )
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
                size: 14.h,
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
    );
  }
}
