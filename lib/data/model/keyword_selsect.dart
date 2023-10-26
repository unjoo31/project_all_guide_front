class KeywordSelect {
  int id;
  String keywordName;

  KeywordSelect({
    required this.id,
    required this.keywordName,
  });
}

List<KeywordSelect> keywordSelectList = [
  KeywordSelect(
    id: 1,
    keywordName: "조명",
  ),
  KeywordSelect(
    id: 2,
    keywordName: "전구",
  ),
  KeywordSelect(
    id: 3,
    keywordName: "변경하기",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "id": id,
//   "keywordName": keywordName,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// Keyword.fromJson(Map<String, dynamic> json)
//     : id = json["id"],
// keywordName = json["keywordName"];
//
// @override
// String toString() {
// return 'Keyword{id: $id, keywordName: $keywordName}';
// }
