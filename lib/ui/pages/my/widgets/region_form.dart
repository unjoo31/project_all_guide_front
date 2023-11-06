import 'package:flutter/cupertino.dart';

import '../../../../_core/constants/colors.dart';

class RegionForm extends StatefulWidget {
  const RegionForm({super.key});

  @override
  State<RegionForm> createState() => _RegionFormState();
}

class _RegionFormState extends State<RegionForm> {
  int _selectedRegion = 0;
  double _kItemExtent = 32.0;
  List<String> _regionNames = <String>[
    '부산',
    '서울',
    '대구',
    '울산',
    '전주',
    '수원',
  ];

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.white,
      child: DefaultTextStyle(
        style: TextStyle(
          color: CupertinoColors.label.resolveFrom(context),
          fontSize: 22.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start, // 좌측 정렬로 변경
          children: <Widget>[
            const Text(
              '지역을 선택하세요.',
              style: TextStyle(fontSize: 15, color: kUnPointColor),
            ),
            SizedBox(width: 20),
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => _showDialog(
                CupertinoPicker(
                  magnification: 1.22,
                  squeeze: 1.2,
                  useMagnifier: true,
                  itemExtent: _kItemExtent,
                  onSelectedItemChanged: (int selectedItem) {
                    setState(() {
                      _selectedRegion = selectedItem;
                    });
                  },
                  children: List<Widget>.generate(
                    _regionNames.length,
                    (int index) {
                      return Center(
                        child: Text(_regionNames[index],
                            style: TextStyle(fontSize: 15)),
                      );
                    },
                  ),
                ),
              ),
              child: Text(
                _regionNames[_selectedRegion],
                style: const TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
