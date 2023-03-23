import 'package:flutter/material.dart';
import 'package:flutter_application_1/Choice.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    return Card(
      

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CircleAvatar(
              backgroundImage: const AssetImage('asset/c.png'),
              backgroundColor: Colors.white,
              radius: 30,
              child: Image.asset(
                choice.image
              ),


              // color: Colors.blueAccent,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              choice.title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Scrollbar(
              thumbVisibility: true,
              child: SizedBox(
                height: 110,
                width: 80,
                child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (BuildContext, index) {
                      return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              side: const BorderSide(color: Colors.red)),
                          onPressed: () {},
                          child: const Text(
                            'admin',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ));
                    }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
