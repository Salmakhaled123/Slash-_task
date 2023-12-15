import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slash_task/features/home/data/models/product_model.dart';
import 'package:slash_task/features/product_details/presentation/view/product_details_view.dart';
import 'package:slash_task/features/product_details/presentation/view_model/product_details_cubit.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ProductDetailsView(
                product: productList[index],
              );
            }));
            BlocProvider.of<ProductDetailsCubit>(context).currentSizeIndex2 = 0;
            BlocProvider.of<ProductDetailsCubit>(context)
                .currentMaterialIndex3 = 0;
          },
          child: Card(
            color: Colors.grey[200],
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(width: 100.w, productList[index].productImage),
              SizedBox(
                height: 5.w,
              ),
              Text(
                '${productList[index].productPrice[0].toString()} EGP ${productList[index].productName}',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
          ),
        );
      },
      itemCount: productList.length,
    );
  }
}
