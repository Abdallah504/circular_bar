library circular_bar;
import 'package:flutter/material.dart';


class CircularBar extends StatefulWidget {
  const CircularBar({Key? key,
  required this.itemCount,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon, required this.onPress, required this.height,

  }) : super(key: key);
final int itemCount;
final Color backgroundColor;
final Color iconColor;
final IconData icon;
final IconButton onPress;
final double height;

  @override
  State<CircularBar> createState() => _CircularBarState();
}

class _CircularBarState extends State<CircularBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(padding:const EdgeInsets.only(left: 15,right: 15) ,
              child: Container(
                width: double.infinity,
                height: widget.height,
                padding: const EdgeInsets.only(left: 20,right: 20),
                decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius:BorderRadius.only(topLeft:Radius.circular(25),bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25),bottomRight: Radius.circular(25))
                ),
                child:ListView.builder(
                    itemCount: widget.itemCount,

                    itemBuilder: (context,index){
                  return CircleAvatar(
                    backgroundColor:selectedIndex == index? widget.backgroundColor:null,
                    child: IconButton(onPressed: (){
                      widget.onPress;
                    },
                        icon: Icon(widget.icon,color: widget.iconColor,)),
                  );
                })
              ),
            )
          ],
        ),
      ),
    );
  }
}
