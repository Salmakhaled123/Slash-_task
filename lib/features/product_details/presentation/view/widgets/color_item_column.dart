import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/data/models/product_model.dart';
import 'color_item_list_view.dart';

class ColorItemColumn extends StatelessWidget {
  const ColorItemColumn({
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
            'Select color',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
          ),
          SizedBox(
            height: 10.h,
          ),
          ColorItemListView(
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
