import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nfssoftmobil/core/app/constant/constants.dart';
import 'package:nfssoftmobil/core/widgets/grid_view.dart';
import 'package:nfssoftmobil/models/category_model.dart';
import 'package:nfssoftmobil/models/project_model.dart';

class HomeView extends StatefulWidget {
  CategoryModel? model;
  HomeView({Key? key,this.model}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  String _connectionStatus = 'Unknown';
  final Connectivity _connectivity = Connectivity();
  late final StreamSubscription<ConnectivityResult> _connectivitySubscription;

  @override
  void initState() {
    //showLoadingBar();
    initConnectivity();
    _connectivitySubscription =
        _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
    super.initState();
  }

  @override
  void dispose() {
    _connectivitySubscription.cancel();
    super.dispose();
  }

  Future<void> initConnectivity() async {
    ConnectivityResult result = ConnectivityResult.none;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      print(e.toString());
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) {
      return Future.value(null);
    }

    return _updateConnectionStatus(result);
  }
  List<CategoryModel> categoryList =[
    CategoryModel(
        id:0,
        categoryName: 'Hazır Web Siteleri',
        color:[const Color(0xFF7F00FF),const Color(0xFFE100FF)],
        project: [
          ProjectsModel(
              id:0,
              categoryId: 0,
              projectName: 'Şabanözü Belediyesi',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:1,
              categoryId: 0,
              projectName: 'Yapraklı Belediyesi',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:2,
              categoryId: 0,
              projectName: 'Dest Shop',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:3,
              categoryId: 0,
              projectName: 'A2S Consulting',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:4,
              categoryId: 0,
              projectName: 'Çiçek Metal',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),

        ]
    ),
    CategoryModel(
        id:1,
        categoryName: 'E-Ticaret',
        color:[const Color(0xFFd9a7c7),const Color(0xFFfffcdc)],
        project: [
          ProjectsModel(
            id:0,
            categoryId: 1,
            projectName: 'Buyruk Yapı',
            projectDescription: projectDescription,
            projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:1,
              categoryId: 1,
              projectName: 'ATS Hukuk',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:2,
              categoryId: 1,
              projectName: 'Aydın İngiliz Kültür',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
        ]
    ),
    CategoryModel(
        id:2,
        categoryName: 'Şirket Yönetim Sistemi',
        color:[const Color(0xFF06beb6),const Color(0xFF48b1bf)],
        project: [
          ProjectsModel(
              id:0,
              categoryId: 2,
              projectName: 'Atlas Otel',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:1,
              categoryId: 2,
              projectName: 'Gold Royal',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
        ]
    ),
    CategoryModel(
        id:3,
        categoryName: 'Online Eğitim Sistemi',
        color:[const Color(0xFF642B73),const Color(0xFFC6426E)],
        project: [
          ProjectsModel(
              id:0,
              categoryId: 3,
              projectName: 'Erzurum Kardelen Group',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
        ]
    ),
    CategoryModel(
        id:4,
        categoryName: 'Randevu & Rezervasyon Sistemi',
        color:[const Color(0xFF56CCF2),const Color(0xFF2F80ED)],
        project: [
          ProjectsModel(
              id:0,
              categoryId: 4,
              projectName: 'Aydın Kidsaloud',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:1,
              categoryId: 4,
              projectName: 'Mihra Eğitim Kurumları',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:2,
              categoryId: 4,
              projectName: 'NumsWork',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:3,
              categoryId: 4,
              projectName: 'Ecz.Canan Uçar',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:4,
              categoryId: 4,
              projectName: 'Kadama',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
          ProjectsModel(
              id:5,
              categoryId: 4,
              projectName: 'Esthemax',
              projectDescription: projectDescription,
              projectPictures: [img1,img2,img3,img4]
          ),
        ]
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          leading: Container(),
          title: SizedBox(
              height: height * 0.3,
              width: width * 0.2,
              child: Image.asset('assets/images/logo-2.png'))),
      body:  SafeArea(
        child:Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
          child:  BasicGridWidget(model: categoryList,),
        )
      ),
    );
  }

  showMySnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
      case ConnectivityResult.mobile:
      case ConnectivityResult.none:
        setState(() => _connectionStatus = result.toString());
        break;
      default:
        setState(() => _connectionStatus = 'Failed to get connectivity.');
        break;
    }
  }
}
