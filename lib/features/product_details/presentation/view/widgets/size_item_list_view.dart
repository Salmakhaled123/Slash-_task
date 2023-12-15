import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/product_details/presentation/view_model/product_details_cubit.dart';

import '../../../../home/data/models/product_model.dart';

class SizeItemsListView extends StatelessWidget {
  const SizeItemsListView({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
        builder: (context, state) {
          return ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: product.productVariations!.size!.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 70.w,
                  height: 50.h,
                  child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<ProductDetailsCubit>(context)
                            .changeIndexOfSize(index);
                      },
                      child: BlocProvider.of<ProductDetailsCubit>(context)
                                  .currentSizeIndex2 ==
                              index
                          ? Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              color: Colors.pink,
                              child: Center(
                                  child: Text(
                                product.productVariations!.size![index],
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            )
                          : Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              color: Colors.grey[300],
                              child: Center(
                                  child: Text(
                                product.productVariations!.size![index],
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            )),
                );
              });
        },
      ),
    );
  }
}
