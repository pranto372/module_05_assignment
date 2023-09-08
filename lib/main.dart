import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home")),
        backgroundColor: Colors.green,
        toolbarHeight: 100,
        elevation: 70,
        leading: IconButton(icon: Icon(Icons.home), // Replace with your desired left icon
            onPressed: () {}
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text("This is mod 5 Assignment",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          ),
          RichText(text: TextSpan(
            text: "My ",style: TextStyle(color: Colors.red,fontSize: 20),
            children: [
              TextSpan(
                text: "phone ",style: TextStyle(color: Colors.blue,fontSize: 12),
              ),
              TextSpan(
                text: "name ",style: TextStyle(color: Colors.purpleAccent,fontSize: 16),
              ),
              TextSpan(
                text: "Your phone name",style: TextStyle(color: Colors.orange,fontSize: 20),
              )
            ],
          )
          )
        ],
      ),
    );
  }
}
