import 'package:ecommerce_mobile_app/consts.dart';
import 'package:ecommerce_mobile_app/screens/model/products.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';

class ProductImages extends StatefulWidget {
  ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Products product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedimage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: getPropotionatelayoutWidth(200),
            child: AspectRatio(
                aspectRatio: 1.3,
                child: Hero(
                    tag: widget.product.id.toString(),
                    child: Image.asset(widget.product.images[selectedimage])))),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(widget.product.images.length,
                (index) => buildAnimatedContainer(index))
          ],
        )
      ],
    );
  }

  GestureDetector buildAnimatedContainer(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedimage = index;
        });
      },
      child: AnimatedContainer(
        width: 55,
        height: 50,
        duration: kAnimationDuration,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            widget.product.images[index],
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color:
                    kprimarycolor.withOpacity(selectedimage == index ? 1 : 0)),
            borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
