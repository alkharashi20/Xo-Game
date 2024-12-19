import 'package:flutter/material.dart';
import 'package:xo_game/CusttomBtn.dart';

class HomeScreen extends StatefulWidget {

   HomeScreen({super.key});
static const String routeName='HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List BordState=['','','',
  '','','',
  '','',''];

  @override
  Widget build(BuildContext context) {
    var XoArg=ModalRoute.of(context)?.settings.arguments as XoArguments;
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Xo-Game',),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

        Column(
          children: [
            Text('${XoArg.Xplayer1}',style: TextStyle(fontSize: 20),),
            Text('$score1',style: TextStyle(fontSize: 30,color: Colors.orange),)
          ],
        ),
        Column(
          children: [
            Text('${XoArg.Xplayer2}',style: TextStyle(fontSize: 20),),
            Text('$score2',style: TextStyle(fontSize: 30,color: Colors.orange),)
          ],
        )
          ],
        ),
        SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Row(
              children: [
                Expanded(child: Custtombtn(txt: BordState[0], OnClick: OnClick, index: 0,)),
                
                Expanded(child: Custtombtn(txt: BordState[1], OnClick: OnClick, index: 1,)),
                
                Expanded(child: Custtombtn(txt: BordState[2], OnClick: OnClick, index: 2,)),


              ],
            ),
            Row(
              children: [
                
                Expanded(child: Custtombtn(txt: BordState[3], OnClick: OnClick, index: 3,)),
                
                Expanded(child: Custtombtn(txt: BordState[4], OnClick: OnClick, index: 4,)),
                
                Expanded(child: Custtombtn(txt: BordState[5], OnClick: OnClick, index: 5,)),


              ],
            ),
            Row(
              children: [
                Expanded(child: Custtombtn(txt: BordState[6], OnClick: OnClick, index: 6,)),
                
                Expanded(child: Custtombtn(txt: BordState[7], OnClick: OnClick, index: 7,)),
                
                
                Expanded(child: Custtombtn(txt: BordState[8], OnClick: OnClick, index: 8,)),


              ],
            ),

          ],
        ),
      ),
    );
  }
  int score1=0;
  int score2=0;
  int counter=0;
  void OnClick(int index){
    if(BordState[index].isNotEmpty){
      return;
    }

if(counter%2==0) {
  BordState[index]= 'X';
}else{
 BordState[index]='O' ;
}
    counter++;

  if(checkwiner('X')){
    score1+=5;
    initailbord();
  }
else if (checkwiner('O')){
    score2+=5;
    initailbord();
  }else if (counter==9){
    initailbord();
  }

setState(() {

});
    }


    bool checkwiner(String Symbol){
    for(int i = 0 ; i<9 ; i+=3){
     if(BordState[i]==Symbol&&
         BordState[i+1]==Symbol&&
         BordState[i+2]==Symbol){
       return true;

     }
     for(int i = 0 ; i<3; i++){
       if(BordState[i]==Symbol&&BordState[i+3]==Symbol&&BordState[i+6]==Symbol){
         return true;
       }

     }
     if(BordState[0]==Symbol&&BordState[4]==Symbol&&BordState[8]==Symbol){
       return true;
     }
     if(BordState[2]==Symbol&&BordState[4]==Symbol&&BordState[6]==Symbol){
       return true;
     }

    }
return false;
    }

    void initailbord(){
       BordState=['','','',
        '','','',
        '','',''];

    counter=0;
    }
}

class XoArguments{
  String Xplayer1;
  String Xplayer2;
  XoArguments({required this.Xplayer1,required this.Xplayer2});


}