import 'package:flutter/material.dart';

import '../../../size_config.dart';

class TopRoundedContainer extends StatelessWidget {
  TopRoundedContainer({
    Key key,
    @required this.collor,
    @required this.child,
  }) : super(key: key);

  final Color collor;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: collor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: child,
    );
  }
}
