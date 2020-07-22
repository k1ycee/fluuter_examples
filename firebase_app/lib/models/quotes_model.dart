class Quote {
  Quote({
    this.id,
    this.en,
    this.author,
    this.rating,
    this.quoteId,
  });

  final String id;
  final String en;
  final String author;
  final double rating;
  final String quoteId;

  factory Quote.fromJson(Map<String, dynamic> json) => Quote(
        id: json["_id"] == null ? null : json["_id"],
        en: json["en"] == null ? null : json["en"],
        author: json["author"] == null ? null : json["author"],
        rating: json["rating"] == null ? null : json["rating"].toDouble(),
        quoteId: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id == null ? null : id,
        "en": en == null ? null : en,
        "author": author == null ? null : author,
        "rating": rating == null ? null : rating,
        "id": quoteId == null ? null : quoteId,
      };
}
