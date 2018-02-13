import 'package:flutter/material.dart';

const lorumMessage = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent a ultrices velit. Nam pellentesque ultricies quam sed pulvinar. Mauris et vestibulum augue. Sed sagittis elit eget turpis pulvinar porttitor. Morbi varius, erat sed tristique semper, risus mi sagittis nunc, at.";

class ItemCell extends StatefulWidget {
  String message;

  ItemCell({Key key, this.message})
    : super(key: key);

  @override
  State<StatefulWidget> createState() => new _ItemCellState();
}

class _ItemCellState extends State<ItemCell> {
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(border: new Border.all(width: 2.0)),

      child: new Row(
        children: <Widget>[
          new Container(
            width: 80.0,
            child: new Column(
              children: <Widget>[
                new Container(color: Colors.red, height: 10.0),
                new Container(color: Colors.blue, height: 50.0,),
                // new Expanded(
                //   child: new Container(color: Colors.amber),
                // )
              ],
            ), 
          ),
          new Expanded(
            child: new Padding(
              padding: new EdgeInsets.all(20.0),
              child: new Text(widget.message)
            )
          )
        ],
      ),
    );
  }
}

class ListExample extends StatelessWidget {
  
  Widget buildItem(BuildContext context, int index) {
    return new ItemCell(message: lorumMessage);
  }

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemBuilder: buildItem,
      itemCount: 2
    );
  }
}