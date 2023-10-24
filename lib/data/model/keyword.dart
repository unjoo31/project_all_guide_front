class Keyword {
  int id;
  String keywordName;

  Keyword({
    required this.id,
    required this.keywordName,
  });

  List<Keyword> keywordList = [
    Keyword(
      id: 1,
      keywordName: "그림",
    ),
    Keyword(
      id: 2,
      keywordName: "반려동물",
    ),
    Keyword(
      id: 3,
      keywordName: "건강검진",
    ),
    Keyword(
      id: 4,
      keywordName: "병원",
    ),
    Keyword(
      id: 5,
      keywordName: "날씨",
    ),
    Keyword(
      id: 6,
      keywordName: "겨울여행",
    ),
    Keyword(
      id: 7,
      keywordName: "이력서 작성방법",
    ),
    Keyword(
      id: 8,
      keywordName: "화분",
    ),
    Keyword(
      id: 9,
      keywordName: "크리스마스",
    ),
    Keyword(
      id: 10,
      keywordName: "카레",
    ),
    Keyword(
      id: 11,
      keywordName: "조명",
    ),
    Keyword(
      id: 12,
      keywordName: "이사",
    ),
    Keyword(
      id: 13,
      keywordName: "자동차",
    ),
    Keyword(
      id: 14,
      keywordName: "넷플릭스",
    ),
    Keyword(
      id: 15,
      keywordName: "이직",
    ),
    Keyword(
      id: 16,
      keywordName: "종류",
    ),
    Keyword(
      id: 17,
      keywordName: "전구",
    ),
    Keyword(
      id: 18,
      keywordName: "인테리어",
    ),
    Keyword(
      id: 19,
      keywordName: "세척",
    ),
    Keyword(
      id: 20,
      keywordName: "교체하기",
    ),
    Keyword(
      id: 21,
      keywordName: "분리하기",
    ),
    Keyword(
      id: 22,
      keywordName: "변경하기",
    ),
    Keyword(
      id: 23,
      keywordName: "강아지",
    ),
    Keyword(
      id: 24,
      keywordName: "고양이",
    ),
    Keyword(
      id: 25,
      keywordName: "햄스터",
    ),
    Keyword(
      id: 26,
      keywordName: "키우기",
    ),
    Keyword(
      id: 27,
      keywordName: "산책",
    ),
    Keyword(
      id: 28,
      keywordName: "먹이",
    ),
    Keyword(
      id: 29,
      keywordName: "애견카페",
    ),
    Keyword(
      id: 30,
      keywordName: "새",
    ),
    Keyword(
      id: 31,
      keywordName: "용품",
    ),
    Keyword(
      id: 32,
      keywordName: "목욕",
    ),
    Keyword(
      id: 33,
      keywordName: "방법",
    ),
  ];

// 1. Dart 객체를 통신을 위한 Map 형태로 변환합니다.
  Map<String, dynamic> toJson() => {
        "id": id,
        "keywordName": keywordName,
      };

// 2. Map 형태로 받아서 Dart 객체로 변환합니다.
  Keyword.fromJson(Map<String, dynamic> json)
      : id = json["id"],
        keywordName = json["keywordName"];

  @override
  String toString() {
    return 'Keyword{id: $id, keywordName: $keywordName}';
  }
}
