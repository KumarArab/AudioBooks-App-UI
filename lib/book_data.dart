import 'book_model.dart';

List<Book> _allBooks = [
  Book(
      name: "Recipie For a Per..",
      author: "Karma Brown",
      coverImage: "assets/images/3.jfif",
      rating: 4.0),
  Book(
      name: "The Glass Hotel",
      author: "Emily St. John Mandel",
      coverImage: "assets/images/4.jfif",
      rating: 4.0),
  Book(
      name: "Conjure Women",
      author: "Afia Atakora",
      coverImage: "assets/images/0.jfif",
      rating: 4.0),
  Book(
      name: "Felix Ever After",
      author: "Kacen Callender",
      coverImage: "assets/images/1.jfif",
      rating: 4.0),
  Book(
      name: "From The Ashes",
      author: "Jesse Thistle",
      coverImage: "assets/images/2.jfif",
      rating: 4.0),
  Book(
      name: "City of Girls",
      author: "Elizabeth Gilbert",
      coverImage: "assets/images/5.jfif",
      rating: 4.0),
  Book(
      name: "Everything I never..",
      author: "Cebste NG",
      coverImage: "assets/images/6.jfif",
      rating: 4.0)
];

List<Book> _recentBooks = [
  Book(
      name: "Conjure Women",
      author: "Afia Atakora",
      coverImage: "assets/images/0.jfif",
      rating: 4.0),
  Book(
      name: "Felix Ever After",
      author: "Kacen Callender",
      coverImage: "assets/images/1.jfif",
      rating: 4.0),
];

List<Book> get allBooks {
  return [..._allBooks];
}

List<Book> get recentBooks {
  return [..._recentBooks];
}
