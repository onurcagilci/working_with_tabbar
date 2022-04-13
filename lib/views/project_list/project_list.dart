import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:nfssoftmobil/models/project_model.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProjectList extends StatefulWidget {
  const ProjectList({
    Key? key,
  }) : super(key: key);

  @override
  _ProjectListState createState() => _ProjectListState();
}

class _ProjectListState extends State<ProjectList> {
  late FixedExtentScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as List<ProjectsModel>;
    return DefaultTabController(
      length: args.length,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'Projeler',
              style: TextStyle(color: Colors.black54),
            ),
            bottom: TabBar(
              labelColor: Colors.redAccent,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              isScrollable: true,
              indicator: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  color: Colors.white),
              tabs: args.map((item) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: AutoSizeText(
                        item.projectName.toString(),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black54,
              ),
            ),
          ),
          body: TabBarView(
            children: args.map((item) {
              return Container(
                color:const Color(0xfff2fcfe),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.9,
                         // height: MediaQuery.of(context).size.height * 0.4,
                          child: CarouselSlider(
                              items: item.projectPictures!.map((e) {
                                return Image.asset(e);
                              }).toList(),
                              options: CarouselOptions()),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 9),
                        child: Container(
                          padding:const EdgeInsets.all(10.0),
                          height: MediaQuery.of(context).size.height * 0.46,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:const BorderRadius.all(Radius.circular(10.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: SingleChildScrollView(child: Text(item.projectDescription.toString())),),
                      )
                    ]),
              );
            }).toList(),
          )),
    );
  }
}
