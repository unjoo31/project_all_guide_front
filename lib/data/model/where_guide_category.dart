class WhereGuideCategory {
  int id;
  String categoryButtonName;

  WhereGuideCategory({
    required this.id,
    required this.categoryButtonName,
  });
}

List<WhereGuideCategory> whereGuideCategoryList = [
  WhereGuideCategory(
    id: 1,
    categoryButtonName: "음식점",
  ),
  WhereGuideCategory(
    id: 2,
    categoryButtonName: "카페",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "id": id,
//   "menuName": menuName,
//   "menuPrice": menuPrice,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// Menu.fromJson(Map<String, dynamic> json)
//     : id = json["id"],
// menuName = json["menuName"],
// menuPrice = json["menuPrice"];
//
// @override
// String toString() {
// return 'Menu{id: $id, menuName: $menuName, menuPrice: $menuPrice}';
// }
