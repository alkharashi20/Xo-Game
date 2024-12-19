import 'package:flutter/material.dart';

class Custtombtn extends StatelessWidget {
   Custtombtn({super.key,required this.txt,required this.OnClick,required this.index});
String txt;
Function OnClick;
int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        OnClick(index);

      },
      child: Container(
        margin: EdgeInsets.all(5),
        height: MediaQuery.of(context).size.height*0.2,
        width: MediaQuery.of(context).size.width*0.3,
        color: Colors.lightGreenAccent, 
          child: Center(
            child: Text(txt,style: TextStyle(
              fontSize: 20
            ),),
          ),
          
      ),
    );
  }
}
