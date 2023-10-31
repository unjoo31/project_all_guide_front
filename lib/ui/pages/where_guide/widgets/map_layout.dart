import 'package:flutter/material.dart';
import 'package:project_all_guide_front/ui/pages/where_guide/widgets/map_detail.dart';

class MapLayout extends StatefulWidget {
  const MapLayout({super.key});

  @override
  State<MapLayout> createState() => _MapLayoutState();
}

class _MapLayoutState extends State<MapLayout> {
  List<String> imageOptions = ["assets/map_off.png", "assets/map_on.png"];
  int currentImageIndex = 0;

  void _mapDetail() {
    showModalBottomSheet(
      context: Scaffold.of(context).context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return MapDetail();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // 적절한 폭 설정
      height: 600, // 적절한 높이 설정
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/map_default.png", fit: BoxFit.cover),
          ),
          Positioned(
            top: 10,
            left: 20,
            child: Image.asset("assets/map_off.png"),
          ),
          Positioned(
            top: 50,
            left: 70,
            child: Image.asset("assets/map_off.png"),
          ),
          Positioned(
            top: 70,
            left: 150,
            child: Image.asset("assets/map_off.png"),
          ),
          Positioned(
            top: 150,
            left: 90,
            child: GestureDetector(
              onTap: () {
                _mapDetail();
                setState(() {
                  currentImageIndex =
                      (currentImageIndex + 1) % imageOptions.length;
                });
              },
              child: Image.asset(imageOptions[currentImageIndex]),
            ),
          ),
          Positioned(
            top: 200,
            left: 250,
            child: Image.asset("assets/map_off.png"),
          ),
        ],
      ),
    );
  }
}
