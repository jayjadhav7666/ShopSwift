class Catergory {
  final String title;
  final String image;

  Catergory({required this.title, required this.image});
}

List<Catergory> categoriesList = [
  Catergory(title: 'All', image: 'images/all.png'),
  Catergory(title: 'Shoes', image: 'images/shoes.png'),
  Catergory(title: 'Beauty', image: 'images/beauty.png'),
  Catergory(title: "Women's\nFashion", image: 'images/image1.png'),
  Catergory(title: 'Jewellery', image: 'images/jewelry.png'),
  Catergory(title: "Men's\nFashion", image: 'images/men.png'),
];
