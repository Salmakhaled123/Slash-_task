import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/product_details/presentation/view/widgets/custom_app_bar.dart';
import 'package:slash_task/features/product_details/presentation/view/widgets/expansion_tile_item.dart';
import 'package:slash_task/features/product_details/presentation/view/widgets/material_item_column.dart';
import 'package:slash_task/features/product_details/presentation/view/widgets/size_item_column.dart';
import 'package:slash_task/features/product_details/presentation/view_model/product_details_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../home/data/models/product_model.dart';
import 'color_item_column.dart';
import 'custom_button.dart';
import 'images_list.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({Key? key, required this.product})
      : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          const CustomAppBar(),
          ImagesList(product: product),
          SizedBox(
            height: 20.h,
          ),
          Text(product.productName,
              style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(
            height: 10.h,
          ),
          BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            builder: (context, state) {
              var cubit = BlocProvider.of<ProductDetailsCubit>(context);
              return SmoothPageIndicator(
                  effect: const JumpingDotEffect(activeDotColor: Colors.pink),
                  controller: cubit.pageController,
                  count: product.productImages!.length);
            },
          ),
          BlocBuilder<ProductDetailsCubit, ProductDetailsState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                        BlocProvider.of<ProductDetailsCubit>(context)
                                    .currentMaterialIndex3 ==
                                1
                            ? '${(product.productPrice[BlocProvider.of<ProductDetailsCubit>(context).currentSizeIndex2] + 100).toString()} EGP'
                            : '${product.productPrice[BlocProvider.of<ProductDetailsCubit>(context).currentSizeIndex2].toString()} EGP',
                        style: TextStyle(
                            fontSize: 21.sp, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Text(product.brandName,
                        style: TextStyle(
                          fontSize: 21.sp,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
              );
            },
          ),
          SizedBox(
            height: 5.h,
          ),
          ExpansionTileItem(product: product),
          product.productVariations!.colors!.isNotEmpty
              ? ColorItemColumn(product: product)
              : const SizedBox.shrink(),
          product.productVariations!.size!.isNotEmpty
              ? SizeItemColumn(product: product)
              : const SizedBox.shrink(),
          product.productVariations!.material!.isNotEmpty
              ? MaterialItemColumn(product: product)
              : const SizedBox.shrink(),
          CustomButton(product: product),
        ],
      ),
    );
  }
}
