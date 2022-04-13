import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:nfssoftmobil/models/category_model.dart';

class BasicGridWidget extends StatelessWidget {
  List<CategoryModel>? model;

  BasicGridWidget({Key? key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      staggeredTileBuilder: (index) => StaggeredTile.count(1, index.isEven ? 0.9 : 1),
      crossAxisCount: 2,
      mainAxisSpacing: 8,
      crossAxisSpacing: 8,
      itemCount: model!.length,
      itemBuilder: (context, index) => buildCard(model: model![index],context: context),
    );
  }

  Widget buildCard({CategoryModel? model,context}) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: (){
              Navigator.pushNamed(context, '/project_list',arguments: model!.project);
          },
          child: Card(
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular((20)),
            ),
            child:
                Container(
                  height: 20,
                  width: 30,
                  alignment: Alignment.center,
                  decoration:  BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [model!.color![0], model.color![1]],
                      tileMode: TileMode.repeated,
                    ),
                  ),
                  child: Text(
                    model.categoryName.toString(),
                    textAlign: TextAlign.center,
                    style:const  TextStyle(color:Colors.white,fontSize: 15,fontWeight:FontWeight.bold ),
                  ),
                ),
          ),
        ),
      );
}
