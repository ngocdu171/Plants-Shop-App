class HotList {
  final String url;
  final String name;
  final String price;

  const HotList ({
    required this.url,
    required this.name,
    required this.price
  });
}

List<HotList> hotList = [
  const HotList(url: "assets/images/Aloe Vera.png", name: "Aloe Vera", price: "10"),
  const HotList(url: "assets/images/Fern Plant.png", name: "Fern Plant", price: "20"),
  const HotList(url: "assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.png", name: "Ficus Lyrata", price: "30"),
  const HotList(url: "assets/images/Jade-Plant.png", name: "Jade-Plant", price: "10"),
  const HotList(url: "assets/images/palm.png", name: "palm", price: "20"),
  const HotList(url: "assets/images/snapdragon_Outdoor.png", name: "snapdragon_Outdoor", price: "30"),
];