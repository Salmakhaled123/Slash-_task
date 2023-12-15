import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/product_details/presentation/view/widgets/size_item_list_view.dart';

import '../../../../home/data/models/product_model.dart';

class SizeItemColumn extends StatelessWidget {
  const SizeItemColumn({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select size',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizeItemsListView(
            product: product,
          ),
          SizedBox(
            height: 10.h,
          )
        ],
      ),
    );
  }
}
