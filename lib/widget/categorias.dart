import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Categorias extends StatelessWidget {
  const Categorias({Key? key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Neumáticos"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Baterías"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Lubricantes"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Baterías"},
      {"icon": "assets/icons/Discover.svg", "text": "Repuestos"},
      {"icon": "assets/icons/Flash Icon.svg", "text": "Llantas"},
    ];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(
            categories.length,
            (index) => CategoryCard(
              icon: categories[index]["icon"],
              text: categories[index]["text"],
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String icon;
  final String text;
  final VoidCallback press;

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.text,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(icon),
          ),
          SizedBox(height: 5),
          Text(
            text,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}
