import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
  int selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
              widget.product.colors.length,
              (index) => ColorDot(
                    color: widget.product.colors[index],
                    index: selectedColor == index,
                    press: () {
                      setState(() {
                        selectedColor = index;
                      });
                    },
                  )),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
          SizedBox(
            width: getProportionateScreenWidth(15),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key key,
    @required this.color,
    @required this.index,
    @required this.press,
  }) : super(key: key);

  final Color color;
  final bool index;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(right: 2),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
              color:
                  index ? kPrimaryColor : Colors.transparent),
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
