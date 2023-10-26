class Category {
  int id;
  String categoryName;

  Category({
    required this.id,
    required this.categoryName,
  });
}

List<Category> categoryList = [
  Category(
    id: 1,
    categoryName: "건강",
  ),
  Category(
    id: 2,
    categoryName: "여행",
  ),
  Category(
    id: 3,
    categoryName: "반려동물",
  ),
  Category(
    id: 4,
    categoryName: "공부",
  ),
  Category(
    id: 5,
    categoryName: "서류",
  ),
  Category(
    id: 6,
    categoryName: "일상",
  ),
  Category(
    id: 7,
    categoryName: "요리",
  ),
  Category(
    id: 8,
    categoryName: "음식점",
  ),
  Category(
    id: 9,
    categoryName: "카페",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "id": id,
//   "categoryName": categoryName,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// Category.fromJson(Map<String, dynamic> json)
//     : id = json["id"],
// categoryName = json["categoryName"];
//
// @override
// String toString() {
// return 'Category{id: $id, categoryName: $categoryName}';
// }
