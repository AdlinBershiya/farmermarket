import 'package:farmermarket/login/login.dart';
import 'package:flutter/material.dart';
class registerpage extends StatefulWidget {
  const registerpage({super.key});

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: SingleChildScrollView(
  
  child: Column(
    children: [
      Container(
              height: 300,width: 400,
                     decoration: const BoxDecoration(
              image: DecorationImage(image:AssetImage('assets/ccc.jpg'),scale:1),
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Text("Register",style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.bold,fontSize: 35,),),
               Text("Please register to login",style: TextStyle(color: Colors.greenAccent,fontSize: 25,),),
               SizedBox(height: 10,),
                TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),hintText: " First Name",prefixIcon: Icon(Icons.person_2_outlined,color: Colors.greenAccent,),),),
                SizedBox(height: 10,),
                TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),hintText: " Last Name",prefixIcon: Icon(Icons.person_2_outlined,color: Colors.greenAccent,),),),
                 SizedBox(height: 10,),
                TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),hintText: "Email",prefixIcon: Icon(Icons.mail_outline,color: Colors.greenAccent,),),),
                SizedBox(height: 10,),
                TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),hintText: "Phone",prefixIcon: Icon(Icons.phone_android,color: Colors.greenAccent,),),),
                SizedBox(height: 10,),
                TextField(obscureText: true,
                  decoration:InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),hintText: "Password",prefixIcon: Icon(Icons.lock,color: Colors.greenAccent,),),),
                SizedBox(height: 10,),
                TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),hintText: "Confirm Password",prefixIcon: Icon(Icons.lock,color: Colors.greenAccent,),),),
                SizedBox(height: 30,),
              TextButton(onPressed: (){}, child: Center(child: Text("Sign up")),style:ElevatedButton.styleFrom(backgroundColor: Colors.greenAccent,),),
              Row(
                          children: [
                            SizedBox(height: 40,),
                            SizedBox(width: 10,),
                         Text("Already have account?", style: TextStyle(color: Colors.black,fontSize: 20,),),
                          SizedBox(width:50,),
                      
                         GestureDetector(onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> const loginpage()));
                         },
                           child: Container(
                              height: 40,
                              width: 80,
                                              child:  Center(child: Text(" sign in now", style: TextStyle(color: Colors.greenAccent,fontSize: 20,fontWeight: FontWeight.bold),)),
                                                   ),
                         ),
                         
                          ],
                          )
                ],
              ),
            )
    ],
  ),
),
    );
  }
}