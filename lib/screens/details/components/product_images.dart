import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/products.dart';
import '../../../size_config.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {

  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238),
          child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.product.images[selectedImage])
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [...List.generate(widget.product.images.length, (index) => buildSmallPreview(index) ,)
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallPreview(int index ) {


    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(left: getProportionateScreenWidth(15)),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border:  selectedImage ==  index ?  Border.all(color: kPrimaryColor) : null
        ),
        width: getProportionateScreenWidth(48),
        height: getProportionateScreenHeight(48),
        child:Image.asset(widget.product.images[index]),
      ),
    );
  }
}