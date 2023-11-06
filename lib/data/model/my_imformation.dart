class MyInformation {
  int id;
  String userImg;
  String userName;
  String userEmail;
  String region;
  String birth;
  String phoneNumber;

  MyInformation({
    required this.id,
    required this.userImg,
    required this.userName,
    required this.userEmail,
    required this.region,
    required this.birth,
    required this.phoneNumber,
  });
}

List<MyInformation> myInformationList = [
  MyInformation(
    id: 1,
    userImg: "user_img.png",
    userName: "언주박",
    userEmail: "unjoo31@gmail.com",
    region: "부산",
    birth: "0000.00.00",
    phoneNumber: "000-0000-0000",
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
