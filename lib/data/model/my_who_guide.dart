class MyWhoGuide {
  int id;
  String categoryName;
  String picUrlFirst;
  String picUrlSecond;
  String picUrlThird;
  String title;
  String content;
  String userName;
  String userImg;

  MyWhoGuide({
    required this.id,
    required this.categoryName,
    required this.picUrlFirst,
    required this.picUrlSecond,
    required this.picUrlThird,
    required this.title,
    required this.content,
    required this.userName,
    required this.userImg,
  });
}

List<MyWhoGuide> myWhoGuideList = [
  MyWhoGuide(
    id: 1,
    categoryName: "반려동물",
    picUrlFirst: "who_guide_1.png",
    picUrlSecond: "who_guide_2.png",
    picUrlThird: "who_guide_3.png",
    title: "반려동물 강아지 산책 초보 훈련기",
    content:
        "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다. 아주 어릴 때는 집에서 장난감만으로도 놀아줘도 충분히 만족하지만, 점점 커가면서 한계가 나타납니다. 흙을 파고 놀고, 이곳저곳에 오줌을 싸며 소통하는 등의 본능을 충족하고 싶어하죠. 하지만 반려인은 아직 체구도 작은 아이를 밖으로 데리고 나가도 될지 확신이 서지 않을 거예요. 그래서 강아지 첫 산책 시기에 관한 고민을 단번에 해결해 줄 글을 준비했습니다. 결론부터 말하면, 강아지 첫 산책은 생후 3~4개월에 시작하는 것이 좋습니다. 사회화 시기는 강아지 일생에 단 한번뿐인 기회이기 때문에 놓치면 되돌릴 수 없죠.단, 필수 예방접종이 끝나기 전까지는 불특정 다수가 이용하는 시설을 방문하지 않는 것이 좋습니다.반려견을 안고 산책을 나가거나 15분 내외로 짧게 산책하는 것이 안전하죠. 산책으로 강아지에게 세상에 다양한 종과 사람이 존재한다는 것을 최대한 알려주세요.이후 필수 예방접종이 끝나면 산책 시간을 늘리고, 좀 더 자유롭게 산책할 기회를 주면 된답니다.",
    userName: "unjoo",
    userImg: "profile_image_1.png",
  ),
  MyWhoGuide(
    id: 2,
    categoryName: "반려동물",
    picUrlFirst: "who_guide_4.png",
    picUrlSecond: "who_guide_5.png",
    picUrlThird: "who_guide_6.png",
    title: "강아지 산책하는 방법",
    content:
        "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다. 아주 어릴 때는 집에서 장난감만으로도 놀아줘도 충분히 만족하지만, 점점 커가면서 한계가 나타납니다. 흙을 파고 놀고, 이곳저곳에 오줌을 싸며 소통하는 등의 본능을 충족하고 싶어하죠. 하지만 반려인은 아직 체구도 작은 아이를 밖으로 데리고 나가도 될지 확신이 서지 않을 거예요. 그래서 강아지 첫 산책 시기에 관한 고민을 단번에 해결해 줄 글을 준비했습니다. 결론부터 말하면, 강아지 첫 산책은 생후 3~4개월에 시작하는 것이 좋습니다. 사회화 시기는 강아지 일생에 단 한번뿐인 기회이기 때문에 놓치면 되돌릴 수 없죠.단, 필수 예방접종이 끝나기 전까지는 불특정 다수가 이용하는 시설을 방문하지 않는 것이 좋습니다.반려견을 안고 산책을 나가거나 15분 내외로 짧게 산책하는 것이 안전하죠. 산책으로 강아지에게 세상에 다양한 종과 사람이 존재한다는 것을 최대한 알려주세요.이후 필수 예방접종이 끝나면 산책 시간을 늘리고, 좀 더 자유롭게 산책할 기회를 주면 된답니다.",
    userName: "unjoo",
    userImg: "profile_image_1.png",
  ),
  MyWhoGuide(
    id: 3,
    categoryName: "반려동물",
    picUrlFirst: "who_guide_7.png",
    picUrlSecond: "who_guide_8.png",
    picUrlThird: "who_guide_9.png",
    title: "반려동물 산책시 주의할 점",
    content:
        "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다. 아주 어릴 때는 집에서 장난감만으로도 놀아줘도 충분히 만족하지만, 점점 커가면서 한계가 나타납니다. 흙을 파고 놀고, 이곳저곳에 오줌을 싸며 소통하는 등의 본능을 충족하고 싶어하죠. 하지만 반려인은 아직 체구도 작은 아이를 밖으로 데리고 나가도 될지 확신이 서지 않을 거예요. 그래서 강아지 첫 산책 시기에 관한 고민을 단번에 해결해 줄 글을 준비했습니다. 결론부터 말하면, 강아지 첫 산책은 생후 3~4개월에 시작하는 것이 좋습니다. 사회화 시기는 강아지 일생에 단 한번뿐인 기회이기 때문에 놓치면 되돌릴 수 없죠.단, 필수 예방접종이 끝나기 전까지는 불특정 다수가 이용하는 시설을 방문하지 않는 것이 좋습니다.반려견을 안고 산책을 나가거나 15분 내외로 짧게 산책하는 것이 안전하죠. 산책으로 강아지에게 세상에 다양한 종과 사람이 존재한다는 것을 최대한 알려주세요.이후 필수 예방접종이 끝나면 산책 시간을 늘리고, 좀 더 자유롭게 산책할 기회를 주면 된답니다.",
    userName: "unjoo",
    userImg: "profile_image_1.png",
  ),
  MyWhoGuide(
    id: 4,
    categoryName: "반려동물",
    picUrlFirst: "who_guide_10.png",
    picUrlSecond: "who_guide_2.png",
    picUrlThird: "who_guide_3.png",
    title: "산책하는 강아지 말 잘듣게 하는 방법공유",
    content:
        "강아지 첫 산책 시기는 어린 강아지를 데려온 반려인이라면 누구나 하는 고민입니다. 아주 어릴 때는 집에서 장난감만으로도 놀아줘도 충분히 만족하지만, 점점 커가면서 한계가 나타납니다. 흙을 파고 놀고, 이곳저곳에 오줌을 싸며 소통하는 등의 본능을 충족하고 싶어하죠. 하지만 반려인은 아직 체구도 작은 아이를 밖으로 데리고 나가도 될지 확신이 서지 않을 거예요. 그래서 강아지 첫 산책 시기에 관한 고민을 단번에 해결해 줄 글을 준비했습니다. 결론부터 말하면, 강아지 첫 산책은 생후 3~4개월에 시작하는 것이 좋습니다. 사회화 시기는 강아지 일생에 단 한번뿐인 기회이기 때문에 놓치면 되돌릴 수 없죠.단, 필수 예방접종이 끝나기 전까지는 불특정 다수가 이용하는 시설을 방문하지 않는 것이 좋습니다.반려견을 안고 산책을 나가거나 15분 내외로 짧게 산책하는 것이 안전하죠. 산책으로 강아지에게 세상에 다양한 종과 사람이 존재한다는 것을 최대한 알려주세요.이후 필수 예방접종이 끝나면 산책 시간을 늘리고, 좀 더 자유롭게 산책할 기회를 주면 된답니다.",
    userName: "unjoo",
    userImg: "profile_image_1.png",
  ),
];

// // 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
// Map<String, dynamic> toJson() => {
//   "id": id,
//   "categoryName": categoryName,
//   "picUrlFirst": picUrlFirst,
//   "picUrlSecond": picUrlSecond,
//   "picUrlThird": picUrlThird,
//   "title": title,
//   "content": content,
//   "userName": userName,
// };
//
// // 2. Map 형태로 받아서 Dart 객체로 변환합니다.
// WhoGuide.fromJson(Map<String, dynamic> json)
//     : id = json["id"],
// categoryName = json["categoryName"],
// picUrlFirst = json["picUrlFirst"],
// picUrlSecond = json["picUrlSecond"],
// picUrlThird = json["picUrlThird"],
// title = json["title"],
// content = json["content"],
// userName = json["userName"]; // 3
//
// @override
// String toString() {
// return 'WhoGuide{id: $id, categoryName: $categoryName, picUrlFirst: $picUrlFirst, , picUrlSecond: $picUrlSecond, picUrlThird: $picUrlThird, title: $title, content: $content, userName: $userName}';
// }
