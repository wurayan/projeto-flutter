import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Gallifrey extends StatefulWidget {
  const Gallifrey({Key? key}) : super(key: key);

  @override
  State<Gallifrey> createState() => _GallifreyState();
}

class _GallifreyState extends State<Gallifrey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('gallibg.png'),
          fit: BoxFit.cover,
          alignment: Alignment.center)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              color: Color.fromARGB(216, 0, 0, 0),
              elevation: 10,
              margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 100),
              shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
              child: 
                SizedBox(
                  height: 600,
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Text("GALLIFREY",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),)
                  ],
                ),),
                )
              
              )
            
          ],
        ),
      ),
    );
  }
}