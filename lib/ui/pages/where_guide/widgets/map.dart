import 'package:flutter/material.dart';

import 'map_layout.dart';

class MapForm extends StatefulWidget {
  const MapForm({Key? key});

  @override
  _MapFormState createState() => _MapFormState();
}

class _MapFormState extends State<MapForm> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: GestureDetector(
        child: MapLayout(),
      ),
    );
  }
}
