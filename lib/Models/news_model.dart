class Datum {
  Datum({
    required this.id,
    required this.title,
    required this.summary,
    required this.link,
    required this.published,
    required this.image,
  });

  int? id;
  String? title;
  String? summary;
  String? link;
  String? published;
  String? image;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        title: json["title"],
        summary: json["summary"],
        link: json["link"],
        published: json["published"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "summary": summary,
        "link": link,
        "published": published,
        "image": image,
      };
}
