import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../home/data/models/product_model.dart';
import '../../view_model/product_details_cubit.dart';

class MaterialItemListView extends StatelessWidget {
  const MaterialItemListView({Key? key, required this.product})
      : super(key: key);
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
              itemCount: product.productVariations!.material!.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  width: 80.w,
                  height: 50.h,
                  child: GestureDetector(
                      onTap: () {
                        BlocProvider.of<ProductDetailsCubit>(context)
                            .changeIndexOfMaterial(index);
                      },
                      child: BlocProvider.of<ProductDetailsCubit>(context)
                                  .currentMaterialIndex3 ==
                              index
                          ? Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.r)),
                              color: Colors.pink,
                              child: Center(
                                  child: Text(
                                '${product.productVariations?.material?[index]}',
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
                                '${product.productVariations?.material?[index]}',
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
