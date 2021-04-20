import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MovieViewer extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => _MovieViewerState();
}
class _MovieViewerState extends State<MovieViewer>{
  final List<String> movieList=[
        "images/avenger.jpg",
        "images/dc.jpg",
        "images/vs.png",
  ];

  Widget movieViewer;
  @override
  void initState() {
    super.initState();

    List<Widget> movieCollections=[];

    movieList.toList().forEach((element){
      movieCollections.add(
        Row(
          children: [
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: new Container(
                child: Image.asset(element.toString()),
                width : 200.0,
                height : 200.0,
                decoration : BoxDecoration(
                    color: Colors.yellow,
                    borderRadius : BorderRadius.circular(8.0),
                    boxShadow:[
                      BoxShadow(
                          color: Color(0xFFFD0101),
                          offset: Offset(0.0, 0.0),
                          blurRadius: 15.0
                      )
                    ]
                ),
                padding: EdgeInsets.all(8.0),
              ),
            ),
            new Expanded(
              child: new Container(
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 0.0),
                child: new Column(
                  children:[
                    new Text("AVENGERS : END GAME", textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold
                    ),
                    ),
                    new Padding(padding: EdgeInsets.all(3.0)),
                    new Text("Infinity Stone"),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    });

    movieViewer = Column(
      children: movieCollections,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top : 16),
      child: movieViewer,
    );
  }
}