import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../_core/constants/colors.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({required this.onSelectedKeywordsChanged}) : super();

  final Function(List<String>) onSelectedKeywordsChanged;

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  List<String> selectedKeywords = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          SizedBox(
            child: Image.asset("assets/search.png"),
          ),
          Positioned(
            right: 15,
            top: 20,
            child: SvgPicture.asset(
              "assets/voice.svg",
              width: 25,
              height: 25,
            ),
          ),
          Positioned(
            left: 15,
            top: 20,
            child: Wrap(
              spacing: 5.0,
              children: selectedKeywords.map((keyword) {
                return Chip(
                  label: Text(
                    keyword,
                    style: TextStyle(color: kPrimaryColor, fontSize: 16),
                  ),
                  backgroundColor: kBackWhite,
                  onDeleted: () {
                    setState(() {
                      selectedKeywords.remove(keyword);
                      widget.onSelectedKeywordsChanged(selectedKeywords);
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
