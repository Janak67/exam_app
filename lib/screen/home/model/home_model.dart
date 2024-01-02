import 'package:exam_app/screen/home/model/data_model.dart';

class HomeModel {
  // ignore: non_constant_identifier_names
  String? song, Album;
  List<dynamic> singer = [];
  DataModel? dataModel;

  HomeModel(
      {required this.song,
      // ignore: non_constant_identifier_names
      required this.Album,
      required this.singer,
      required this.dataModel}); // HomeModel(

  factory HomeModel.mapToModel(Map m1) {
    return HomeModel(
      song: m1['song'],
      Album: m1['Album'],
      singer: m1['singer'],
      dataModel: DataModel.mapToModel(m1['data']),
    );
  }
}
