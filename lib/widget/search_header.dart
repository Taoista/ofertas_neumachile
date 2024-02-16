import 'package:flutter/material.dart';
import 'package:ofertas_neumachile/widget/icon_btn_counter.dart';
import 'package:ofertas_neumachile/widget/search_field.dart';



class SarchHeader extends StatelessWidget {
  const SarchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: SearchField()),
          const SizedBox(width: 16),
          IconBtnCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () {
              print("hola");
            },
          ),
          const SizedBox(width: 8),
          IconBtnCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
          // BanenrDiscount()
        ],
      );
  }
}