
import 'package:flutter/material.dart';

import '/models/CardModel.dart';


// ignore: must_be_immutable
class ShirtsDetails extends StatefulWidget {
Shirt shirt;
ShirtsDetails(this.shirt, {super.key});

  @override
  State<ShirtsDetails> createState() => _ShirtsDetailsState();
}

class _ShirtsDetailsState extends State<ShirtsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shirt Details' , style: TextStyle(fontStyle: FontStyle.italic , color: Colors.lime),),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.trending_up),  label: 'Trending',
    ),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),  label: 'Cart',
    )
    ],
      ),

      body: Column(





        children: [
         Center(
           child: Column(
              children: [ Image.asset(widget.shirt.URL),
                Column(
                  children: [
                    Text(widget.shirt.Tag,
                      style: const TextStyle(
                        color: Colors.lime,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 20,),),


                    const SizedBox(height: 7),
                    Text(widget.shirt.dummy,
                      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12, height: 2,),),
                    const SizedBox(height: 6),
                    Text(widget.shirt.price,style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
const SizedBox(height: 50),
                    TextButton(
                      style: TextButton.styleFrom(
                     backgroundColor: Colors.lime

                      ),
                      onPressed: (){},
                      child: const Text('Buy it Now',style: TextStyle(fontSize: 35,color: Color(0xFF0A0E21))),
                    ),


                    const SizedBox(height: 30),

                    const Text('Buy it Now or never get one From Our Store , Visit Us Now',
                      style: TextStyle(color: Colors.white, fontSize: 10,),),
                   ],



                )

              ],



           ),
         ),

        ],
      ),

    );
  }
}

