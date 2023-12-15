import 'package:flutter/material.dart';
import 'package:slash_task/features/product_details/presentation/view/widgets/product_details_view_body.dart';

import '../../../home/data/models/product_model.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductDetailsViewBody(product: product),
    );
  }
}
