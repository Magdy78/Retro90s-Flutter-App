import 'package:flutter/material.dart';
import 'list_files.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(title: const Text('Home Page'), centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.lime,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 28),
      ),


      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
            return const ListFiles();
          }))


        },

        label: Row(
          children: [Icon(Icons.accessibility_new), Text('Start Shopping Now')],
        ),
        backgroundColor: Color(0xFF7F8186),


      ),

body: Column(

  children: [
    Text('Shop Through The Most Unique Shirts Made Ever',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
    fontSize: 18 , height: 4),),
   // const SizedBox(height: 7),
    Image.asset('assets/Images/Group 1.png'),
   // Image.asset('assets/Images/Group 2.png'),
    Text('Take a Journey inside The History of Football Shirts',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
        fontSize: 15 , height: 4),),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
children: [
    Image.asset('assets/Images/1.png',scale: 1.8,),
    Image.asset('assets/Images/2.png',scale: 1.8,),

],
    ),
  )

  ],



),




    );
  }
}
