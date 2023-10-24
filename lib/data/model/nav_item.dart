class NaveItem {
  final int id;
  final String icon;

  NaveItem({required this.id, required this.icon});
}

List<NaveItem> navItems = [
  NaveItem(id: 0, icon: "assets/home_off.png"),
  NaveItem(id: 1, icon: "assets/all_guide_off.png"),
  NaveItem(id: 2, icon: "assets/who_guide_off.png"),
  NaveItem(id: 3, icon: "assets/where_guide_off.png"),
  NaveItem(id: 4, icon: "assets/my_off.png"),
];
