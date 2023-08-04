class Category {
  final String image, title, msg;

  Category({required this.image, required this.title, required this.msg});
}

final List<Category> categoryData = [
  Category(image: "assets/icons/dashboard.png", title: "All", msg: "All"),
  Category(
    msg: "T-Shirt",
    image: "assets/icons/shirt.png",
    title: "T-Shirt",
  ),
  Category(image: "assets/icons/cap.png", title: "Cap", msg: "Cap"),
  Category(image: "assets/icons/sneakers.png", title: "Shoes", msg: "Shoes"),
  Category(
      image: "assets/icons/smartphone.png", title: "Mobile", msg: "Mobile"),
  Category(image: "assets/icons/smart_tv.png", title: "TV's", msg: "Tv's"),
  Category(
      image: "assets/icons/washing_machine.png",
      title: "Washing Machine",
      msg: "Washing Machine")
];
