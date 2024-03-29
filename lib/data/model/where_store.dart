class WhereStore {
  int id;
  String category;
  String region;
  String storeName;
  String storeAddress;
  String picUrl_1;
  String picUrl_2;
  String picUrl_3;

  WhereStore({
    required this.id,
    required this.category,
    required this.region,
    required this.storeName,
    required this.storeAddress,
    required this.picUrl_1,
    required this.picUrl_2,
    required this.picUrl_3,
  });
}

List<WhereStore> whereStoreList = [
  WhereStore(
    id: 1,
    category: "카페",
    region: "부산",
    storeName: "턴어라운드",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl_1: "store_image_1.png",
    picUrl_2: "store_image_2.png",
    picUrl_3: "store_image_3.png",
  ),
  WhereStore(
    id: 2,
    category: "카페",
    region: "부산",
    storeName: "유어타입전포",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl_1: "store_image_1.png",
    picUrl_2: "store_image_2.png",
    picUrl_3: "store_image_3.png",
  ),
  WhereStore(
    id: 3,
    category: "카페",
    region: "부산",
    storeName: "카페알프",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl_1: "store_image_1.png",
    picUrl_2: "store_image_2.png",
    picUrl_3: "store_image_3.png",
  ),
  WhereStore(
    id: 4,
    category: "카페",
    region: "부산",
    storeName: "희소",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl_1: "store_image_1.png",
    picUrl_2: "store_image_2.png",
    picUrl_3: "store_image_3.png",
  ),
  WhereStore(
    id: 5,
    category: "음식점",
    region: "부산",
    storeName: "맥도날드",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl_1: "store_image_1.png",
    picUrl_2: "store_image_2.png",
    picUrl_3: "store_image_3.png",
  ),
  WhereStore(
    id: 6,
    category: "음식점",
    region: "부산",
    storeName: "멘즈키",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl_1: "store_image_1.png",
    picUrl_2: "store_image_2.png",
    picUrl_3: "store_image_3.png",
  ),
  WhereStore(
    id: 7,
    category: "음식점",
    region: "부산",
    storeName: "무소유",
    storeAddress: "부산 부산진구 전포대로200번길 21 1층 턴어라운드",
    picUrl_1: "store_image_1.png",
    picUrl_2: "store_image_2.png",
    picUrl_3: "store_image_3.png",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "id": id,
//   "category": category,
//   "region": region,
//   "storeName": storeName,
//   "storeAddress": storeAddress,
//   "picUrl": picUrl,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// WhereStore.fromJson(Map<String, dynamic> json)
//     : id = json["id"],
// category = json["category"],
// region = json["region"],
// storeName = json["storeName"], // 3
// storeAddress = json["storeAddress"], // 3
// picUrl = json["picUrl"];
//
// @override
// String toString() {
// return 'WhereStore{id: $id, category: $category, region: $region, storeName: $storeName, storeAddress: $storeAddress, picUrl: $picUrl}';
// }
