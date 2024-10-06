import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ucomm/core/utils/size_utils.dart';
import 'package:ucomm/features/filters/notifier/filter_notifier.dart';
import 'package:ucomm/theme/app_decoration.dart';
import 'package:ucomm/theme/custom_text_style.dart';
import 'package:ucomm/theme/theme_helper.dart';
import 'package:ucomm/widgets/custom_checkbox.dart';
import 'package:ucomm/widgets/custom_elevated_button.dart';

// class FilterScreen extends ConsumerWidget {
//   const FilterScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Filters"),
//       ),
//       body: Container(
//         width: double.maxFinite,
//         decoration: BoxDecoration(
//           color: appTheme.gray100,
//           borderRadius: BorderRadiusStyle.roundedBorder10,
//         ),
//         child: Column(
//           children: [
//             Text(
//               "Categories",
//               style: theme.textTheme.headlineSmall,
//             ),
//             SizedBox(height: 22.h),
//             _buildCheckout(context, "Eggs"),
//             SizedBox(height: 20.h),
//             _buildCheckout(context, "Noodles & Pasta"),
//             SizedBox(height: 20.h),
//             _buildCheckout(context, "Chips & Crisps"),
//             SizedBox(height: 20.h),
//             _buildCheckout(context, "Fast Food"),
//             SizedBox(height: 34.h),
//             Text(
//               "Brand",
//               style: theme.textTheme.headlineSmall,
//             ),
//             SizedBox(height: 24.h),
//             _buildCheckout(context, "Individual Callection"),
//             SizedBox(height: 20.h),
//             _buildCheckout(context, "Cocola"),
//             SizedBox(height: 20.h),
//             _buildCheckout(context, "Ifad"),
//             SizedBox(height: 20.h),
//             _buildCheckout(context, "Kazi Farmas"),
//             Spacer(),
//             CustomElevatedButton(text: "Apply Filter"),
//             SizedBox(height: 10.h),
//           ],
//         ),
//       ),
//     );
//   }

//   _buildCheckout(BuildContext context, String title) {
//     return CustomCheckboxButton(
//       text: title,
//       value: true,
//       textStyle: CustomTextStyles.bodyLargeGilroyMedium,
//       onChange: (value) {},
//     );
//   }
// }

class FilterScreen extends ConsumerWidget {
  final ScrollController scrollController;

  const FilterScreen({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final checkboxesState =
        ref.watch(checkboxProvider); // Watch the checkbox state

    return Scaffold(
      appBar: AppBar(
        title: Text("Filter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: theme.colorScheme.primaryContainer,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(16)), // Rounded corners at the top
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 22),
                      ..._buildCheckboxes(context, checkboxesState, ref),
                      const SizedBox(height: 34),
                      Text(
                        "Brand",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const SizedBox(height: 24),
                      ..._buildBrandCheckboxes(context, checkboxesState, ref),
                      const SizedBox(height: 34),
                      CustomElevatedButton(text: "Apply Filter"),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _buildCheckboxes(
    BuildContext context,
    Map<String, bool> checkboxesState,
    WidgetRef ref,
  ) {
    final categories = [
      "Eggs",
      "Noodles & Pasta",
      "Chips & Crisps",
      "Fast Food"
    ];
    return categories.map((category) {
      return CustomCheckboxButton(
        padding: EdgeInsets.all(4),
        text: category,
        value: checkboxesState[category] ?? false,
        textStyle: CustomTextStyles.bodyLargeGilroyMedium,
        onChange: (value) {
          ref.read(checkboxProvider.notifier).toggleCheckbox(category);
        },
      );
    }).toList();
  }

  List<Widget> _buildBrandCheckboxes(
    BuildContext context,
    Map<String, bool> checkboxesState,
    WidgetRef ref,
  ) {
    final brands = ["Individual Collection", "Cocola", "Ifad", "Kazi Farmas"];
    return brands.map((brand) {
      return CustomCheckboxButton(
        padding: EdgeInsets.all(4),
        text: brand,
        value: checkboxesState[brand] ?? false,
        textStyle: CustomTextStyles.bodyLargeGilroyMedium,
        onChange: (value) {
          ref.read(checkboxProvider.notifier).toggleCheckbox(brand);
        },
      );
    }).toList();
  }
}
