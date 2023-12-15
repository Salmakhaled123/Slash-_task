import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/product_details/presentation/view_model/product_details_cubit.dart';

import '../../../../home/data/models/product_model.dart';

class ImagesList extends StatelessWidget {
  const ImagesList({
    super.key,
    required this.product,
  });
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<ProductDetailsCubit>(context);
        return SizedBox(
          height: 120.h,
          child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              controller: cubit.pageController,
              itemCount: product.productImages?.length,
              onPageChanged: (index) {
                cubit.changeIndex(index);
              },
              itemBuilder: (context, index) {
                return Image.asset(product.productImages![index]);
              }),
        );
      },
    );
  }
}
