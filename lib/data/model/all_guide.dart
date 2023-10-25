class AllGuide {
  final String picUrl;
  final String title;
  final String browserName;

  AllGuide({
    required this.picUrl,
    required this.title,
    required this.browserName,
  });
}

List<AllGuide> allGuideItemsList = [
  AllGuide(
    picUrl: "all_guide_1.png",
    title: "스탠딩 조병 전구 변경하기",
    browserName: "Google",
  ),
  AllGuide(
    picUrl: "all_guide_2.png",
    title: "스탠딩 조병 전구 변경하기",
    browserName: "Google",
  ),
  AllGuide(
    picUrl: "all_guide_3.png",
    title: "스탠딩 조병 전구 변경하기",
    browserName: "Google",
  ),
  AllGuide(
    picUrl: "all_guide_4.png",
    title: "스탠딩 조병 전구 변경하기",
    browserName: "Google",
  ),
  AllGuide(
    picUrl: "all_guide_5.png",
    title: "스탠딩 조병 전구 변경하기",
    browserName: "Google",
  ),
  AllGuide(
    picUrl: "all_guide_6.png",
    title: "스탠딩 조병 전구 변경하기",
    browserName: "Google",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "picUrl": picUrl,
//   "title": title,
//   "browserName": browserName,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// AllGuide.fromJson(Map<String, dynamic> json)
//     : picUrl = json["picUrl"],
// title = json["title"],
// browserName = json["browserName"]; // 3
//
// @override
// String toString() {
// return 'AllGuide{ picUrl: $picUrl, title: $title, browserName: $browserName}';
// }
