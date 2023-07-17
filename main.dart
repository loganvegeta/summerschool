import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()
  ));
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: Column( 
              children: [Image.asset('asset1.jpg',height:300,width:300,),
               TextField(controller: email,
                  decoration: const InputDecoration( 
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width:3,color:Colors.red)
                      ),
                      contentPadding: EdgeInsets.all(10)
                  )
                ),

                Container(height:20),

                TextField( 
                  controller: password,
                  decoration: const InputDecoration( 
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width:3,color:Colors.red),
                      ),contentPadding: EdgeInsets.all(10)                  
                      )
                ),
                FloatingActionButton(onPressed: (){},child: const Text("LOGIN"
                ,style: TextStyle(fontFamily: 'Itim'),),shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),),
                Container(
                  child:const Text("Don't have an account?Sign up"),margin: const EdgeInsets.all(10),
                )

              ],
            ),
          )
       );
  }}