import 'package:farmermarket/register/register.dart';
import 'package:flutter/material.dart';
class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
 body: SingleChildScrollView(
     child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
                Container(
                      height: 300,width: 400,
                             decoration: const BoxDecoration(
                      image: DecorationImage(image:AssetImage('assets/local.jpg'),scale:2),
                      ),
                      
                    ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  SizedBox(width: 10,),
                  Text("Login", style: TextStyle(color: Colors.tealAccent.shade700,fontSize: 40),),
                   Text("Please Sign in to continue",style: TextStyle(color: Colors.tealAccent.shade700,fontSize: 20,),),
                    SizedBox(height: 15,),
                      Text("Email OR Phone", style: TextStyle(color: Colors.tealAccent.shade700,fontSize: 25,),),
                     SizedBox(height: 10,),
                      Center(child: TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),hintText: 'email or phone' ,prefixIcon: Icon(Icons.email,color: Colors.tealAccent.shade700,),),)),
                      SizedBox(height: 15,),
                      Text("password", style: TextStyle(color: Colors.tealAccent.shade700,fontSize: 25,),),
                      SizedBox(height: 10,),
                      TextField(decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),hintText: 'password' ,prefixIcon: Icon(Icons.password,color: Colors.tealAccent.shade700,),),),
                      SizedBox(height: 10,),
                      TextButton(onPressed: (){}, child: Center(child: Text("Sign in")),style:ElevatedButton.styleFrom(backgroundColor: Colors.tealAccent.shade400,),),
                     Row(
                          children: [
                            SizedBox(height: 40,),
                            SizedBox(width: 50,),
                         Center(child: Text("Not a member?", style: TextStyle(color: Colors.tealAccent.shade400,fontSize: 20,),)),
                        SizedBox(width:50,),
                      
                         GestureDetector(onTap: () {
                            Navigator.push(context,MaterialPageRoute(builder: (context)=> const registerpage()));
                         },
                           child: Container(
                              height: 40,
                              width: 80,
                                              child: Center(child: Text("sign up now",style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),)),
                                                   ),
                         ),
                      
                        
              
                          ],
                          )
                            ],
                 ),
              ),
            ]
    )   
   ),
 
     );
  }
}