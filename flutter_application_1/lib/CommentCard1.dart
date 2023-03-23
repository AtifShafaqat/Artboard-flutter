import 'package:flutter/material.dart';
class Comment1 extends StatelessWidget {
  const Comment1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {




    return Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,),
      child: Card(
        elevation: 5,
        color: Theme.of(context).primaryColor,
        child: Column(
          children: [
            Row(children: [
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: const Text('02_2_2020 02:54',style: TextStyle(color: Colors.white,fontSize: 11),),
              ),
              const SizedBox(width: 115),
              const Padding(
                padding: EdgeInsets.only(right: 7),
                child: Text('Name Here',style: TextStyle(color: Colors.white,fontSize: 11),),
              ),
              const SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Container(
                  height: 33,
                  width: 33,
                  decoration: const BoxDecoration(color: Colors.white,shape: BoxShape.circle),
                  child: Icon(Icons.person,color: Colors.grey,),
                ),
              )
            ],),

            const Padding(
              padding: EdgeInsets.only(left: 60),
              child: Text('Lorem ipsum dolor sit amt',style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
