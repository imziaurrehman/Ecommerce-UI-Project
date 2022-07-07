import 'package:ecommerce_mobile_app/components/default_button.dart';
import 'package:ecommerce_mobile_app/consts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ecommerce_mobile_app/screens/model/products.dart';
import 'package:ecommerce_mobile_app/sizeConfig.dart';
import 'package:flutter/material.dart';
import 'product_description.dart';
import 'product_images.dart';

class Detail_Body extends StatelessWidget {
  Detail_Body({required this.product});
  final Products product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView(
        children: [
          ProductImages(product: product),
          SizedBox(height: getPropotionatelayoutheight(15)),
          TopRoundedContainer(
            color: Colors.white,
            child: ProductDescription(
              product: product,
              presstxtExpands: () {},
            ),
          ),
          TopRoundedContainer(
            color: Colors.grey.shade300,
            child: Column(
              children: [
                ColorsDot(
                  products: product,
                )
              ],
            ),
          ),
          Container(
            height: 75,
            margin: EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: DefaultButtons(
              text: "Add to Cart",
              button: () {},
            ),
          )
        ],
      ),
    );
  }
}

class ColorsDot extends StatelessWidget {
  const ColorsDot({Key? key, required this.products}) : super(key: key);
  final Products products;
  @override
  Widget build(BuildContext context) {
    int selectedColor = 3;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
              products.colors.length,
              (index) => ColorDotIndex(
                    products: products,
                    color: products.colors[index],
                    selectedIndex: selectedColor == index,
                  )),
          RoundedIconBtn(
            icon: Icon(Icons.remove),
            press: () {},
          ),
          RoundedIconBtn(
            icon: Icon(Icons.add),
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final Icon icon;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),

      ),
      margin: EdgeInsets.symmetric(horizontal: 4),
    padding: EdgeInsets.symmetric(horizontal: 0),
      child: IconButton(
        icon: icon,
        onPressed: () {},
      ),
    );
  }
}

class ColorDotIndex extends StatelessWidget {
  const ColorDotIndex(
      {Key? key,
      required this.products,
      required this.color,
      required this.selectedIndex})
      : super(key: key);

  final Products products;
  final Color color;
  final bool selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getPropotionatelayoutWidth(45),
        height: getPropotionatelayoutheight(45),
        decoration: BoxDecoration(
          color: Colors.transparent,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
                color: selectedIndex ? kprimarycolor : Colors.transparent),
            shape: BoxShape.circle,
          ),
        ));
  }
}

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    required this.color,
    required this.child,
  }) : super(key: key);
  final Color color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: getPropotionatelayoutheight(20)),
      margin: EdgeInsets.only(top: getPropotionatelayoutheight(0)),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: child,
    );
  }
}
