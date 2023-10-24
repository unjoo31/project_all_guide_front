import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/on_boarding/widgets/number_indecator.dart';

import '../../../../data/model/guide.dart';

class OnBoardingItem extends StatefulWidget {
  const OnBoardingItem({super.key});

  @override
  State<OnBoardingItem> createState() => _OnBoardingItemState();
}

class _OnBoardingItemState extends State<OnBoardingItem> {
  final List<Guide> list = guideList;
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        PageView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/${list[index].imageUrl}"),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          onPageChanged: (value) {
            setState(() {
              currentPage = value;
            });
          },
        ),
        Positioned(
          bottom: 10,
          right: MediaQuery.of(context).size.width / 2.3,
          child: NumberIndicator(
            currentPage: currentPage + 1,
            length: list.length,
          ),
        ),
      ],
    );
  }
}
