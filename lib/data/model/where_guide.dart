class WhereGuide {
  int id;
  String categoryName;
  String regionName;
  String storeName;
  String storeAddress;
  String picUrl;
  String orderPrice;

  WhereGuide({
    required this.id,
    required this.categoryName,
    required this.regionName,
    required this.storeName,
    required this.storeAddress,
    required this.picUrl,
    required this.orderPrice,
  });

  List<WhereGuide> whereGuideList = [
    WhereGuide(
      id: 1,
      categoryName: "카페",
      regionName: "부산",
      storeName: "턴어라운드",
      storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
      picUrl: "where_guide_1.png",
      orderPrice: "22,000",
    ),
  ];

  // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "categoryName": categoryName,
        "regionName": regionName,
        "storeName": storeName,
        "storeAddress": storeAddress,
        "picUrl": picUrl,
        "orderPrice": orderPrice,
      };

  // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  WhereGuide.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        categoryName = json["categoryName"],
        regionName = json["regionName"],
        storeName = json["storeName"], // 3
        storeAddress = json["storeAddress"], // 3
        picUrl = json["picUrl"],
        orderPrice = json["orderPrice"];

  @override
  String toString() {
    return 'WhereGuide{id: $id, categoryName: $categoryName, regionName: $regionName, storeName: $storeName, storeAddress: $storeAddress, picUrl: $picUrl, orderPrice: $orderPrice}';
  }
}
