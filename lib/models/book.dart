class Book {
  int? id;
  String? title;
  String? cover;
  Book({this.id, this.title, this.cover});
}

List<Book> items = [
  Book(
    id: 1,
    title: "Computer Networks",
    cover: "assets/images/cover.png",
  ),
  Book(
    id: 2,
    title: "Communication Skills",
    cover: "assets/images/cover.png",
  ),
  Book(
    id: 3,
    cover: "assets/images/cover.png",
    title: "Flutter Cook",
  ),
  Book(
    id: 4,
    title: "Operating System",
    cover: "assets/images/cover.png",
  ),
  Book(
    id: 5,
    title: "A nice book",
    cover: "assets/images/cover.png",
  ),
];
