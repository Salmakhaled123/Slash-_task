import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/data/models/product_model.dart';

class ExpansionTileItem extends StatelessWidget {
  const ExpansionTileItem({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Description',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21.sp),
      ),
      children: [
        Text(
          product.description,
          style: TextStyle(fontSize: 18.sp),
        )
      ],
    );
  }
}
