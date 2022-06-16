class CatList {
  final String name;
  final String url;

  const CatList ({
    required this.name,
    required this.url
  });
}

List<CatList> catList = [
  const CatList(name: "Plant office", url: "assets/images/bamboo_Office.png"),
  const CatList(name: "Plant indoor", url: "assets/images/Spider Plant.png"),
  const CatList(name: "Plant outdoor", url: "assets/images/peonies_Outdoor.png")
];
