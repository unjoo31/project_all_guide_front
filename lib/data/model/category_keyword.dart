class CategoryKeyword {
  int id;
  String keywordName;

  CategoryKeyword({
    required this.id,
    required this.keywordName,
  });
}

List<CategoryKeyword> categoryKeywordList = [
  CategoryKeyword(
    id: 1,
    keywordName: "강아지",
  ),
  CategoryKeyword(
    id: 2,
    keywordName: "고양이",
  ),
  CategoryKeyword(
    id: 3,
    keywordName: "햄스터",
  ),
  CategoryKeyword(
    id: 4,
    keywordName: "키우기",
  ),
  CategoryKeyword(
    id: 5,
    keywordName: "산책",
  ),
  CategoryKeyword(
    id: 6,
    keywordName: "먹이",
  ),
  CategoryKeyword(
    id: 7,
    keywordName: "애견카페",
  ),
  CategoryKeyword(
    id: 8,
    keywordName: "새",
  ),
  CategoryKeyword(
    id: 9,
    keywordName: "용품",
  ),
  CategoryKeyword(
    id: 10,
    keywordName: "목욕",
  ),
  CategoryKeyword(
    id: 11,
    keywordName: "방법",
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
