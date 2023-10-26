class KeywordSecond {
  int id;
  String keywordName;

  KeywordSecond({
    required this.id,
    required this.keywordName,
  });
}

List<KeywordSecond> keywordSecondList = [
  KeywordSecond(
    id: 1,
    keywordName: "종류",
  ),
  KeywordSecond(
    id: 2,
    keywordName: "전구",
  ),
  KeywordSecond(
    id: 3,
    keywordName: "인테리어",
  ),
  KeywordSecond(
    id: 4,
    keywordName: "세척",
  ),
  KeywordSecond(
    id: 5,
    keywordName: "교체하기",
  ),
  KeywordSecond(
    id: 6,
    keywordName: "분리하기",
  ),
  KeywordSecond(
    id: 7,
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
