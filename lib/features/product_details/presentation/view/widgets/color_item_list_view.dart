import 'package:flutter/material.dart';

import '../../../../home/data/models/product_model.dart';
import 'color_item.dart';

class ColorItemListView extends StatefulWidget {
  const ColorItemListView({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  State<ColorItemListView> createState() => _ColorItemListViewState();
}

class _ColorItemListViewState extends State<ColorItemListView> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          itemCount: widget.product.productVariations?.colors!.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                  onTap: () {
                    currentIndex = index;
                    setState(() {});
                  },
                  child: ColorItem(
                      color: widget.product.productVariations!.colors![index],
                      isPicked: currentIndex == index)),
            );
          }),
    );
  }
}
