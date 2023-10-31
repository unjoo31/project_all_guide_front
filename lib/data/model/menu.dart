class Menu {
  int id;
  String menuName;
  String menuPrice;

  Menu({
    required this.id,
    required this.menuName,
    required this.menuPrice,
  });
}

List<Menu> menuList = [
  Menu(
    id: 1,
    menuName: "애플시나몬 케이크",
    menuPrice: "6,000원",
  ),
  Menu(
    id: 2,
    menuName: "초코 브라우니",
    menuPrice: "6,000원",
  ),
  Menu(
    id: 3,
    menuName: "황치즈 브라우니",
    menuPrice: "6,000원",
  ),
  Menu(
    id: 4,
    menuName: "에스프레소",
    menuPrice: "4,500원",
  ),
  Menu(
    id: 5,
    menuName: "아메리카노",
    menuPrice: "4,500원",
  ),
  Menu(
    id: 6,
    menuName: "카페 라떼",
    menuPrice: "5,500원",
  ),
  Menu(
    id: 7,
    menuName: "바닐라 라떼",
    menuPrice: "5,500원",
  ),
  Menu(
    id: 8,
    menuName: "흑임자 라떼",
    menuPrice: "6,500원",
  ),
  Menu(
    id: 9,
    menuName: "말차 라떼",
    menuPrice: "5,500원",
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
