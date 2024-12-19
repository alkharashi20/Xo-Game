import 'package:flutter/material.dart';
import 'package:xo_game/Home_Screen.dart';

class Initialpage extends StatelessWidget {
   Initialpage({super.key});
String player1='';
String player2='';
   static const String routeName='initialPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Xo-Game',style: TextStyle(fontSize: 24,color: Colors.deepOrange),),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
                label: Text('Enter Name Player 1')
            ),
            onChanged:(txt){
              player1=txt;

            },
          ),
        )  ,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(

              onChanged:(txt){
                player2=txt;

              },
              decoration: InputDecoration(

               label: Text('Enter Name Player 2')
              ),

            ),
          )  ,
          
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
            width: MediaQuery.of(context).size.width*0.6,
            child: ElevatedButton(
                style:ElevatedButton.styleFrom(

                  backgroundColor: Colors.orange
                ),
                onPressed: (){
              Navigator.pushNamed(context, HomeScreen.routeName,arguments: XoArguments(Xplayer1: player1, Xplayer2: player2));


            }, child: Text('Enter',style: TextStyle(fontSize: 30,color: Colors.black))),
          )
      
        ],
      ),
    );
  }
}
