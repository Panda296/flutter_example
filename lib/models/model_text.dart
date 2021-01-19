class Home_Item {
  int count;
  int start;
  int total;
  List<Musics> musics;

  Home_Item({this.count, this.start, this.total, this.musics});

  Home_Item.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    start = json['start'];
    total = json['total'];
    if (json['musics'] != null) {
      musics = new List<Musics>();
      json['musics'].forEach((v) {
        musics.add(new Musics.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['start'] = this.start;
    data['total'] = this.total;
    if (this.musics != null) {
      data['musics'] = this.musics.map((v) => v.toJson()).toList();
    }
    return data;
  }

  @override
  String toString() {
    return 'Home_Item{count: $count, start: $start, total: $total, musics: $musics}';
  }
}

class Musics {
  Rating rating;
  List<Author> author;
  String altTitle;
  String image;
  List<Tags> tags;
  String mobileLink;
  Attrs attrs;
  String title;
  String alt;
  String id;

  @override
  String toString() {
    return 'Musics{rating: $rating, author: $author, altTitle: $altTitle, image: $image, tags: $tags, mobileLink: $mobileLink, attrs: $attrs, title: $title, alt: $alt, id: $id}';
  }

  Musics(
      {this.rating,
      this.author,
      this.altTitle,
      this.image,
      this.tags,
      this.mobileLink,
      this.attrs,
      this.title,
      this.alt,
      this.id});

  Musics.fromJson(Map<String, dynamic> json) {
    rating =
        json['rating'] != null ? new Rating.fromJson(json['rating']) : null;
    if (json['author'] != null) {
      author = new List<Author>();
      json['author'].forEach((v) {
        author.add(new Author.fromJson(v));
      });
    }
    altTitle = json['alt_title'];
    image = json['image'];
    if (json['tags'] != null) {
      tags = new List<Tags>();
      json['tags'].forEach((v) {
        tags.add(new Tags.fromJson(v));
      });
    }
    mobileLink = json['mobile_link'];
    attrs = json['attrs'] != null ? new Attrs.fromJson(json['attrs']) : null;
    title = json['title'];
    alt = json['alt'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
    if (this.author != null) {
      data['author'] = this.author.map((v) => v.toJson()).toList();
    }
    data['alt_title'] = this.altTitle;
    data['image'] = this.image;
    if (this.tags != null) {
      data['tags'] = this.tags.map((v) => v.toJson()).toList();
    }
    data['mobile_link'] = this.mobileLink;
    if (this.attrs != null) {
      data['attrs'] = this.attrs.toJson();
    }
    data['title'] = this.title;
    data['alt'] = this.alt;
    data['id'] = this.id;
    return data;
  }
}

class Rating {
  int max;
  String average;
  int numRaters;
  int min;

  @override
  String toString() {
    return 'Rating{max: $max, average: $average, numRaters: $numRaters, min: $min}';
  }

  Rating({this.max, this.average, this.numRaters, this.min});

  Rating.fromJson(Map<String, dynamic> json) {
    max = json['max'];
    average = json['average'];
    numRaters = json['numRaters'];
    min = json['min'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['max'] = this.max;
    data['average'] = this.average;
    data['numRaters'] = this.numRaters;
    data['min'] = this.min;
    return data;
  }
}

class Author {
  String name;

  Author({this.name});

  Author.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    return data;
  }

  @override
  String toString() {
    return 'Author{name: $name}';
  }
}

class Tags {
  int count;
  String name;

  Tags({this.count, this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    data['name'] = this.name;
    return data;
  }

  @override
  String toString() {
    return 'Tags{count: $count, name: $name}';
  }
}

class Attrs {
  List<String> publisher;
  List<String> singer;
  List<String> version;
  List<String> pubdate;
  List<String> title;
  List<String> media;
  List<String> tracks;
  List<String> discs;

  Attrs(
      {this.publisher,
      this.singer,
      this.version,
      this.pubdate,
      this.title,
      this.media,
      this.tracks,
      this.discs});

  Attrs.fromJson(Map<String, dynamic> json) {
    publisher = json['publisher']?.cast<String>();
    singer = json['singer']?.cast<String>();
    version = json['version']?.cast<String>();
    pubdate = json['pubdate']?.cast<String>();
    title = json['title']?.cast<String>();
    media = json['media']?.cast<String>();
    tracks = json['tracks']?.cast<String>();
    discs = json['discs']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['publisher'] = this.publisher;
    data['singer'] = this.singer;
    data['version'] = this.version;
    data['pubdate'] = this.pubdate;
    data['title'] = this.title;
    data['media'] = this.media;
    data['tracks'] = this.tracks;
    data['discs'] = this.discs;
    return data;
  }

  @override
  String toString() {
    return 'Attrs{publisher: $publisher, singer: $singer, version: $version, pubdate: $pubdate, title: $title, media: $media, tracks: $tracks, discs: $discs}';
  }
}
