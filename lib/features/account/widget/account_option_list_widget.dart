// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ucomm/core/app_export.dart';
import 'package:ucomm/features/account/model/account_model.dart';

class AccountOptionListWidget extends StatelessWidget {
  AccountOptionListWidget(this.accountModel, {super.key});
  AccountModel accountModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      leading: CustomImageView(
        svgPath: accountModel.image,
        width: 18,
        height: 20,
      ),
      title: Text(accountModel.title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 14),
    );
  }
}
