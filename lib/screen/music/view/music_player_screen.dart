import 'package:exam_app/screen/home/model/home_model.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:flutter/material.dart';

class MusicPlayerScreen extends StatefulWidget {
  const MusicPlayerScreen({super.key});

  @override
  State<MusicPlayerScreen> createState() => _MusicPlayerScreenState();
}

class _MusicPlayerScreenState extends State<MusicPlayerScreen> {
  double sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    HomeModel h1 = ModalRoute.of(context)!.settings.arguments as HomeModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: black45,
        appBar: AppBar(
          iconTheme: IconThemeData(color: white),
          centerTitle: true,
          title: Text(
            "${h1.Album}",
            style: TextStyle(color: white),
          ),
          backgroundColor: black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network("${h1.dataModel!.image}"),
                ),
              ),
              Text(
                "${h1.singer}",
                style: TextStyle(
                  color: white,
                  fontSize: 15,
                ),
              ),
              Slider(
                inactiveColor: white,
                value: sliderValue,
                onChanged: (value) {},
                max: 100,
                label: sliderValue.round().toString(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'hh:mm:ss',
                      style: TextStyle(fontSize: 16,color: white),
                    ),
                    Text(
                      'hh:mm:ss',
                      style: TextStyle(fontSize: 16,color: white),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_double_arrow_left,
                      color: white,size: 40,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.play_arrow,
                      color: white,size: 45,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.keyboard_double_arrow_right,
                      color: white,size: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
