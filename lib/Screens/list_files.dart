import 'package:finalproject2/Screens/HomePage.dart';
import 'package:flutter/material.dart';

import 'ShirtDetails.dart';
import 'Trending.dart';
import '../models/CardModel.dart';

class ListFiles extends StatefulWidget {
  const ListFiles({Key? key}) : super(key: key);

  @override
  State<ListFiles> createState() => _ListFilesState();
}

class _ListFilesState extends State<ListFiles> {

  int _selectedItem=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Welcome to The History'),
        //backgroundColor: Colors.grey,
        centerTitle: true,
        // leading is action when we press it it gives us a new function or Call a new Page
        leading: IconButton(
          onPressed: ()=>{


            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
              return const HomePage();
            }))


          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,color: Colors.white),
        ),
      ),
       // bottomNavigationBar: MyBottomNavBar(),
      bottomNavigationBar: bottomNavBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {


        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
        return const Trending();
        }))


        },
  child: const Icon(Icons.trending_up ,color:Colors.lime),
  backgroundColor:const Color(0xFF1D2859),


),

      body:ListView(

          children: shirts.map((e){
          return
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  width: 520,
                  height: 180,

                  child: shirtCard(e)
              ),
            );
        }).toList()
      )

    );

  }





  Widget shirtCard(Shirt shirt){
    return GestureDetector(
      onTap: (){
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => ShirtsDetails(shirt)));
      },
      child: Card(
        color: const Color(0xFF10172A),
        child: Row(
          children: [ Image.asset(shirt.URL),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(shirt.Tag,
                  style: const TextStyle(
                    color: Colors.lime,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 18,

                  ),
                ),
                Text(shirt.dummy,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontStyle: FontStyle.italic,
                    fontSize: 12,
                    height: -2,
                  ),

                ),

                Row(
                  children: [

                    Text(shirt.price,style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),),
                    const Icon(Icons.shopping_cart,color: Colors.white,),

                  ],
                )
              ],
            )


          ],
        ),
      ),
    );
  }
  Widget bottomNavBar(){return BottomNavigationBar(

      currentIndex: _selectedItem,
      onTap: (value){
        setState(() {
          _selectedItem=value;
        });
      },


      items: const [

        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',
       ),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle),  label: 'Account',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),  label: 'Cart',
        )
      ],

    );}






}

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [


        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.trending_up),  label: 'Trending',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),  label: 'Cart',
        )
      ],

      ),


    );
  }
}

