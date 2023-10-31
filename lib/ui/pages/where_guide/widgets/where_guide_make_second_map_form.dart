import 'package:flutter/material.dart';

import 'map.dart';
import 'map_title.dart';

class WhereGuideSecondMapForm extends StatelessWidget {
  const WhereGuideSecondMapForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 10),
          MapTitle(),
          SizedBox(height: 10),
          MapForm(),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
