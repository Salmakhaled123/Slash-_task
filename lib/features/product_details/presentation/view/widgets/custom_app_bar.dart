import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back)),
        const Center(
          child: Text(
            'Product Details',
            style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
