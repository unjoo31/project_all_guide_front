class WhoGuideCategoryButton {
  int id;
  String categoryButtonName;
  String img;

  WhoGuideCategoryButton({
    required this.id,
    required this.categoryButtonName,
    required this.img,
  });
}

List<WhoGuideCategoryButton> whoGuideCategoryButtonList = [
  WhoGuideCategoryButton(
    id: 1,
    categoryButtonName: "정렬",
    img: "category_1.png",
  ),
  WhoGuideCategoryButton(
    id: 2,
    categoryButtonName: "카테고리",
    img: "category_2.png",
  ),
  WhoGuideCategoryButton(
    id: 3,
    categoryButtonName: "키워드",
    img: "category_3.png",
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
