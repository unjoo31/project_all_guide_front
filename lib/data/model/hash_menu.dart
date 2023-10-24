class HashMenu {
  int id;
  String hashMenuName;
  String hashMenuPrice;

  HashMenu({
    required this.id,
    required this.hashMenuName,
    required this.hashMenuPrice,
  });

  List<HashMenu> hashMenuList = [
    HashMenu(
      id: 1,
      hashMenuName: "애플시나몬 케이크",
      hashMenuPrice: "6,000원",
    ),
    HashMenu(
      id: 2,
      hashMenuName: "황치즈 브라우니",
      hashMenuPrice: "6,000원",
    ),
    HashMenu(
      id: 3,
      hashMenuName: "아메리카노",
      hashMenuPrice: "4,500원",
    ),
    HashMenu(
      id: 4,
      hashMenuName: "카페 라떼",
      hashMenuPrice: "5,500원",
    ),
  ];

// 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "hashMenuName": hashMenuName,
        "hashMenuPrice": hashMenuPrice,
      };

// 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  HashMenu.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        hashMenuName = json["hashMenuName"],
        hashMenuPrice = json["hashMenuPrice"];

  @override
  String toString() {
    return 'HashMenu{id: $id, hashMenuName: $hashMenuName, hashMenuPrice: $hashMenuPrice}';
  }
}
