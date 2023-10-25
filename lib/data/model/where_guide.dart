class WhereGuide {
  int id;
  String categoryName;
  String regionName;
  String storeName;
  String storeAddress;
  String picUrl;
  String orderPrice;
  String orderMenu_1;
  String orderMenu_2;
  String orderMenu_3;

  WhereGuide({
    required this.id,
    required this.categoryName,
    required this.regionName,
    required this.storeName,
    required this.storeAddress,
    required this.picUrl,
    required this.orderPrice,
    required this.orderMenu_1,
    required this.orderMenu_2,
    required this.orderMenu_3,
  });
}

List<WhereGuide> whereGuideList = [
  WhereGuide(
    id: 1,
    categoryName: "카페",
    regionName: "부산",
    storeName: "턴어라운드",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl: "where_guide_1.png",
    orderPrice: "22,000",
    orderMenu_1: "애플시나몬 케이크",
    orderMenu_2: "황치즈 브라우니",
    orderMenu_3: "아메리카노",
  ),
  WhereGuide(
    id: 3,
    categoryName: "음식점",
    regionName: "부산",
    storeName: "맥도날드",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl: "where_guide_2.png",
    orderPrice: "22,000",
    orderMenu_1: "치즈버거",
    orderMenu_2: "감자튀김",
    orderMenu_3: "콜라",
  ),
  WhereGuide(
    id: 3,
    categoryName: "카페",
    regionName: "부산",
    storeName: "유어타입전포",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl: "where_guide_3.png",
    orderPrice: "22,000",
    orderMenu_1: "갈레트",
    orderMenu_2: "카페라떼",
    orderMenu_3: "애플치즈바게트",
  ),
  WhereGuide(
    id: 4,
    categoryName: "카페",
    regionName: "부산",
    storeName: "턴어라운드",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl: "where_guide_4.png",
    orderPrice: "22,000",
    orderMenu_1: "애플시나몬 케이크",
    orderMenu_2: "황치즈 브라우니",
    orderMenu_3: "아메리카노",
  ),
  WhereGuide(
    id: 5,
    categoryName: "카페",
    regionName: "부산",
    storeName: "턴어라운드",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl: "where_guide_5.png",
    orderPrice: "22,000",
    orderMenu_1: "애플시나몬 케이크",
    orderMenu_2: "황치즈 브라우니",
    orderMenu_3: "아메리카노",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "id": id,
//   "categoryName": categoryName,
//   "regionName": regionName,
//   "storeName": storeName,
//   "storeAddress": storeAddress,
//   "picUrl": picUrl,
//   "orderPrice": orderPrice,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// WhereGuide.fromJson(Map<String, dynamic> json)
//     : id = json["id"],
// categoryName = json["categoryName"],
// regionName = json["regionName"],
// storeName = json["storeName"], // 3
// storeAddress = json["storeAddress"], // 3
// picUrl = json["picUrl"],
// orderPrice = json["orderPrice"];
//
// @override
// String toString() {
// return 'WhereGuide{id: $id, categoryName: $categoryName, regionName: $regionName, storeName: $storeName, storeAddress: $storeAddress, picUrl: $picUrl, orderPrice: $orderPrice}';
// }
