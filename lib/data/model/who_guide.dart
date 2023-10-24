class WhoGuide {
  int id;
  String categoryName;
  String picUrlFirst;
  String picUrlSecond;
  String picUrlThird;
  String title;
  String content;
  String userName;

  WhoGuide({
    required this.id,
    required this.categoryName,
    required this.picUrlFirst,
    required this.picUrlSecond,
    required this.picUrlThird,
    required this.title,
    required this.content,
    required this.userName,
  });

  List<WhoGuide> whoGuideList = [
    WhoGuide(
      id: 1,
      categoryName: "반려동물",
      picUrlFirst: "who_guide_1.png",
      picUrlSecond: "who_guide_2.png",
      picUrlThird: "who_guide_3.png",
      title: "반려동물 강아지 산책 초보 훈련기",
      content: "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다.",
      userName: "unjoo",
    ),
    WhoGuide(
      id: 2,
      categoryName: "반려동물",
      picUrlFirst: "who_guide_4.png",
      picUrlSecond: "who_guide_5.png",
      picUrlThird: "who_guide_6.png",
      title: "반려동물 강아지 산책 초보 훈련기",
      content: "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다.",
      userName: "ssar",
    ),
    WhoGuide(
      id: 3,
      categoryName: "반려동물",
      picUrlFirst: "who_guide_7.png",
      picUrlSecond: "who_guide_8.png",
      picUrlThird: "who_guide_9.png",
      title: "반려동물 강아지 산책 초보 훈련기",
      content: "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다.",
      userName: "cos",
    ),
    WhoGuide(
      id: 4,
      categoryName: "반려동물",
      picUrlFirst: "who_guide_10.png",
      picUrlSecond: "who_guide_2.png",
      picUrlThird: "who_guide_3.png",
      title: "반려동물 강아지 산책 초보 훈련기",
      content: "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다.",
      userName: "love",
    ),
  ];

  // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "categoryName": categoryName,
        "picUrlFirst": picUrlFirst,
        "picUrlSecond": picUrlSecond,
        "picUrlThird": picUrlThird,
        "title": title,
        "content": content,
        "userName": userName,
      };

  // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  WhoGuide.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        categoryName = json["categoryName"],
        picUrlFirst = json["picUrlFirst"],
        picUrlSecond = json["picUrlSecond"],
        picUrlThird = json["picUrlThird"],
        title = json["title"],
        content = json["content"],
        userName = json["userName"]; // 3

  @override
  String toString() {
    return 'WhoGuide{id: $id, categoryName: $categoryName, picUrlFirst: $picUrlFirst, , picUrlSecond: $picUrlSecond, picUrlThird: $picUrlThird, title: $title, content: $content, userName: $userName}';
  }
}
