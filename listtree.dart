import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: event()
  ));
}

class event extends StatelessWidget {
   event({super.key});
  List list=["a","b","c","d","e"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("EVENT CLASS"),),
      body: ListView.builder(itemCount: 5,itemBuilder:(BuildContext context,int index){
        return ListTile(
          leading:Icon(Icons.list) ,
          title: Text("CONTEXT"),
          trailing: Text("DATE"),
          focusColor: Colors.red[100*index],
        );
      }),

    );

  }
}