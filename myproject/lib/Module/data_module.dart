class HashTagModel {
  String title;
  HashTagModel({required this.title});
}

class BlogModel {
  int? id;
  String? posterImageUrl;
  String? writerName;
  String? writerImageUrl;
  String? content;
  String? date;
  String? view;
  String? title;

  BlogModel(
      {required this.id,
      required this.posterImageUrl,
      required this.writerName,
      required this.writerImageUrl,
      required this.content,
      required this.date,
      required this.view,
      required this.title});
}

class podCastModel {
  int? id;
  String? imageUrl;
  String? title;
  String? view;
  String? date;
  String? speakerImageUrl;
  String? speakerName;

  podCastModel(
      {required this.id,
      required this.imageUrl,
      required this.title,
      required this.view,
      required this.date,
      required this.speakerImageUrl,
      required this.speakerName});
}
