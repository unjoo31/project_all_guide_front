class NaveCategory {
  final int id;
  final String icon;

  NaveCategory({required this.id, required this.icon});
}

List<NaveCategory> navCategories = [
  NaveCategory(id: 0, icon: "assets/all_guide_list_off.png"),
  NaveCategory(id: 1, icon: "assets/who_guide_list_off.png"),
  NaveCategory(id: 2, icon: "assets/where_guide_list_off.png"),
];
