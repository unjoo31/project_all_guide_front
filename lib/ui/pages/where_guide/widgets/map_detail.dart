import 'package:flutter/material.dart';
import 'package:project_all_guide_front/_core/constants/colors.dart';
import 'package:project_all_guide_front/ui/pages/components/bottom_text.dart';
import 'package:project_all_guide_front/ui/pages/components/middle_text.dart';

import '../../../../data/model/where_store.dart';

class MapDetail extends StatefulWidget {
  const MapDetail({super.key});

  @override
  State<MapDetail> createState() => _MapDetailState();
}

class _MapDetailState extends State<MapDetail> {
  List<WhereStore> list = whereStoreList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: SizedBox(
        height: 800,
        child: Column(
          children: [
            _buildImage(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _buildAddress(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Expanded(
      child: PageView(
        children: [
          Image.asset(
            "assets/${list[0].picUrl_1}",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/${list[0].picUrl_2}",
            fit: BoxFit.fill,
          ),
          Image.asset(
            "assets/${list[0].picUrl_3}",
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }

  Widget _buildAddress() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MiddleText(text: "${list[0].storeName}"),
          BottomText(text: "${list[0].storeAddress}")
        ],
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, 'guidemakethirdform');
      },
      style: TextButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: Size(350, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        "가게 선택하기",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
