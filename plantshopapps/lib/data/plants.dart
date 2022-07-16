class PlantsList {
  final int id;
  final String url;
  final String name;
  final String price;
  final bool discount;

  const PlantsList ({
    required this.id,
    required this.url,
    required this.name,
    required this.price,
    required this.discount,
  });
}

List<PlantsList> plantsList = [
  const PlantsList(id: 1, url: "assets/images/Aloe Vera.png", name: "Aloe Vera", price: "10", discount: true),
  const PlantsList(id: 2, url: "assets/images/bamboo_Office.png", name: "Bamboo", price: "10", discount: false),
  const PlantsList(id: 3, url: "assets/images/Fern Plant.png", name: "Fern", price: "20", discount: true),
  const PlantsList(id: 4, url: "assets/images/Ficus Lyrata-Fiddle leaf Fig Plant.png", name: "Ficus Lyrata", price: "30", discount: false),
  const PlantsList(id: 5, url: "assets/images/Golden-Devil-ivy_Office.png", name: "Golden-Devil-ivy", price: "30", discount: true),
  const PlantsList(id: 6, url: "assets/images/Jade-Plant.png", name: "Jade", price: "10", discount: false),
  const PlantsList(id: 7, url: "assets/images/Lavender_Outdoor.png", name: "Lavender", price: "20", discount: true),
  const PlantsList(id: 8, url: "assets/images/palm.png", name: "palm", price: "20", discount: false),
  const PlantsList(id: 9, url: "assets/images/peace-lily_izzzy-getty_full_width.png", name: "Peace-lily_izzzy-getty", price: "20", discount: true),
  const PlantsList(id: 10, url: "assets/images/peonies_Outdoor.png", name: "Peonies", price: "20", discount: false),
  const PlantsList(id: 11, url: "assets/images/plants-e-black-eyed-susan_Outdoor.png", name: "Black-eyed-susan", price: "20", discount: true),
  const PlantsList(id: 12, url: "assets/images/queen-annes-lace_Outdoor.png", name: "Queen-annes-lace", price: "20", discount: false),
  const PlantsList(id: 13, url: "assets/images/rubber plant.png", name: "Rubber", price: "20", discount: true),
  const PlantsList(id: 14, url: "assets/images/snapdragon_Outdoor.png", name: "snapdragon_Outdoor", price: "30", discount: false),
  const PlantsList(id: 15, url: "assets/images/Spider Plant.png", name: "Spider", price: "30", discount: false),
  const PlantsList(id: 16, url: "assets/images/Spider-Cactus_Office.png", name: "Spider-Cactus", price: "30", discount: true),
  const PlantsList(id: 17, url: "assets/images/Trifasciata Futura Superba.png", name: "Trifasciata Futura Superba", price: "30", discount: false),
];