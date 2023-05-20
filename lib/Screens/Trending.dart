import 'package:flutter/material.dart';

class Trending extends StatefulWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  State<Trending> createState() => _TrendingState();
}

class _TrendingState extends State<Trending> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
        title: const Text('Trending' , style: TextStyle(fontStyle: FontStyle.italic , color: Colors.lime),),
    ),
      body:
        Center(
          child: ListView(
            children: [

              // Center(
              //   child: const Text('Picked for you',style: TextStyle(
              //     fontSize: 48,
              //     color: Colors.white ,
              //     fontWeight: FontWeight.bold,
              //     fontStyle: FontStyle.italic,
              //
              //   )),
              // ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
margin: EdgeInsets.only(top:0),
                    height: 200,
                    child: Center(
                      child: Container(

                        child: FittedBox(
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                          child: Image.asset('assets/Images/Group 1.png'),
                        ),


                      ),

                    ),
                  ),

                  Container(
                      padding: const EdgeInsets.all(0.9),
                    height: 320,
                    margin: EdgeInsets.only(top:0),

                    child: Center(
                      child: SizedBox(
                        width:520,
                        height: 350,
                        child: FittedBox(
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                          child: Image.asset('assets/Images/Group 2.png'),

                        ),


                      ),

                    ),

                  ),

                  Container(
                     padding: const EdgeInsets.all(0.9),
                   height: 320,
                    child: Center(

                      child: SizedBox(
                        width:520,
                        height: 390,

                        child: FittedBox(
                          alignment: Alignment.center,
                          fit: BoxFit.contain,
                          child: Image.asset('assets/Images/Group 3.png'),

                        ),


                      ),

                    ),

                  ),




                ],
              ),



       ],

          ),
        ),

      );

  }

}
