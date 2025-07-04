import 'dart:developer';
import '../CONTROLLER/login_controller.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class LoginScreen extends StatefulWidget {
  final loginController controller = Get.find<loginController>();
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();

  void _validation(){
    if(EmailController.text.isEmpty){
      Fluttertoast.showToast(msg: "Enter your Email");
    }else if(PasswordController.text.isEmpty){
      Fluttertoast.showToast(msg: "Enter your Password");
    }else{
      Fluttertoast.showToast(msg: EmailController.text);
    }
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white38 ,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80,
                ),
                Padding(

                    padding: const EdgeInsets.all(0.8)
                ),


                Center(
                    child:
                    Text(
                        "[Welcome]",

                        style: TextStyle(
                          fontSize: 75,
                          fontWeight: FontWeight.bold,

                          color: Colors.black,


                        )


                    )),

                Padding(

                    padding: const EdgeInsets.all(8.8)),

                SizedBox(height: 40),

                TextFormField(

                  controller: EmailController,

                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    prefix: Icon(Icons.email),

                    hintText: "EMAIL",

                    border: OutlineInputBorder(),

                  ),

                ),
                SizedBox(height: 10),
                TextFormField(
                  obscureText: true,
                  controller: PasswordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white24,
                    prefix : Icon(Icons.password),



                    hintText: "PASSWORD",
                    border: OutlineInputBorder(),

                  ),),
                SizedBox(height: 150,),
                Center(

                  child: ElevatedButton(onPressed: (){
                    _validation();
                  },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey
                      ),
                      child: Text("login",
                    style: TextStyle(
                        color: Colors.black,
                      backgroundColor: Colors.grey
                    ),)
                  ),

                ),
                GestureDetector(
                  onTap: (){
                    log("I am pressed");

                  },
                  child: Center(
                    child: Text("New Player ? Sign up?",
                      style: TextStyle(
                          color: Colors.black
                      ),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
