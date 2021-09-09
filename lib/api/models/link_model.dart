class LinkModel {
  String link, linkPart;

  LinkModel({required this.link, required this.linkPart});

  factory LinkModel.fromJson(Map<dynamic, dynamic> json) => LinkModel(
        link: json["Link"],
        linkPart: json["LinkPart"],
      );
}
