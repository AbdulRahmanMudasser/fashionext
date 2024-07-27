class Categories {
  final int id;
  final String title;
  final String imageUrl;

  /// Constructor
  Categories({required this.id, required this.title, required this.imageUrl});

  /// JSON to Map
  factory Categories.fromJson(Map<String, dynamic> json) {
    return Categories(
      id: json['id'],
      title: json['title'],
      imageUrl: json['imageUrl'],
    );
  }

  /// Map to JSON
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "imageUrl": imageUrl,
    };
  }
}
