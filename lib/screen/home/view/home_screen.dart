import 'package:exam_app/screen/home/model/home_model.dart';
import 'package:exam_app/screen/home/provider/home_provider.dart';
import 'package:exam_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? providerr;
  HomeProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<HomeProvider>().getData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<HomeProvider>();
    providerw = context.watch<HomeProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: black,
          title: Text(
            'Music Player',
            style: TextStyle(color: white),
          ),
        ),
        body: ListView.builder(
          itemCount: providerw!.homeList.length,
          itemBuilder: (context, index) {
            HomeModel h1 = providerw!.homeList[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'music', arguments: h1);
              },
              child: ListTile(
                title: Text(
                  "${h1.song}",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.network("${h1.dataModel!.image}"),
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_outlined,
                  size: 18,
                  color: black,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
