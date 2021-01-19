class HomeItem {
  double rating;
  String author;
  String alt_title;
  String imgUrl;
  List tags;
  String title;

  HomeItem.fromMap(Map json) {
    this.rating = json["rating"]["average"];
    this.author = (json["author"] as List)[0]["name"];
    this.alt_title = json["alt_title"];
    this.imgUrl = json["image"];
    this.tags = (json["tags"] as List).map((e) => e["name"]);
    this.title = json["title"];
  }
}
