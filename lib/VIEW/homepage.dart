
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp/MODEL/Questions.dart';
import 'package:get/get.dart';
import '../CONTROLLER/homepage_controller.dart';
import 'Loginpage2.dart';

class questions extends StatefulWidget {



  const questions({super.key});

  @override
  State<questions> createState() => _questionsState();
}

class _questionsState extends State<questions> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
 backgroundColor: Colors.white38,

    body:
         Padding(padding: EdgeInsets.all(8.8),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
             SizedBox(
               height: 30,
             ) ,
         Row(
           children: [



              TextButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                           },
                 child: Text("🧑🏻",style: TextStyle(
                   fontSize: 35,


                 ),)),
             Padding(
               padding: const EdgeInsets.only(left: 237),
               child: TextButton(onPressed: (){

                 Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                             },
                   child: Text("☰",
                     style: TextStyle(
                     fontSize: 40,
                       color: Colors.black
 

                   ),)),

             ),
           ],
         ),

              SizedBox(
                height: 10,
              ),
              Text("⋆༺𓆩☠︎︎𓆪༻⋆",
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text("[WELCOME]",
                style: TextStyle(
                  color: Colors.black54,
                fontSize: 63,
                fontWeight: FontWeight.bold



              ),
              ),
              Text("",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text("[PLAYER]",
              style: TextStyle(
                color: Colors.black54,
                fontSize: 63,
                fontWeight: FontWeight.bold,


              ),),
              Text(""

                  ,
                style:  GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.bold

                ),
              ),


              SizedBox(
                height: 100,
              ),

              Center(
                child:

                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Questions()));
                },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey
                    ),

                    child: Text("PLAY QUIZ",

                style: TextStyle(
                  color: Colors.black38,
                  backgroundColor: Colors.transparent,
                  fontWeight: FontWeight.w800,

                  fontSize: 30,
                  height: 2,
                ),)),
              ),




            ],
          ),
        ),)







),



    );

  }
}

