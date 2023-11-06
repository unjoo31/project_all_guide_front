class Region {
  int id;
  String regionName;

  Region({
    required this.id,
    required this.regionName,
  });
}

List<Region> regionList = [
  Region(
    id: 1,
    regionName: "부산",
  ),
  Region(
    id: 2,
    regionName: "서울",
  ),
  Region(
    id: 3,
    regionName: "대구",
  ),
  Region(
    id: 4,
    regionName: "울산",
  ),
  Region(
    id: 5,
    regionName: "전주",
  ),
  Region(
    id: 6,
    regionName: "수원",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "id": id,
//   "regionName": regionName,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// Region.fromJson(Map<String, dynamic> json)
//     : id = json["id"],
// regionName = json["regionName"];
//
// @override
// String toString() {
// return 'Region{id: $id, regionName: $regionName}';
// }
