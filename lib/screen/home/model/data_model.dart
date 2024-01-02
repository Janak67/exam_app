class DataModel {
  String? image, url;

  DataModel({required this.image, required this.url});

  factory DataModel.mapToModel(Map m1) {
    return DataModel(
      image: m1['image'],
      url: m1['url'],
    );
  }
}