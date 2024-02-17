import 'package:farmermarket/login/login.dart';
import 'package:farmermarket/register/register.dart';
import 'package:flutter/material.dart';
class getstart extends StatefulWidget {
  const getstart({super.key});

  @override
  State<getstart> createState() => _getstartState();
}

class _getstartState extends State<getstart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
   body:SingleChildScrollView(
     child: Column( 
        children: [
       Container(
                      height: 300,width: 500,
                             decoration: const BoxDecoration(
                      image: DecorationImage(image:AssetImage('assets/cart.jpg'),scale:3),
                      ),
                      
                    ),
                    
                             SizedBox(height: 5,),
                    Text("Get the Fastest", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("Delivery Groceries", style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                    Text("at Market", style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    GestureDetector(onTap: () {
              Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const loginpage()));
            },
                       child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10),
                             ),
                              child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white),)),
                              
                               ),
                     ),
                             SizedBox(height: 20,),
                    GestureDetector(onTap: () {
              Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const registerpage()));
            },
                      child: Container(
                              height: 50,
                              width: 300,
                              decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.green,width:3)
                             ),
                              child: Center(child: Text("SIGNUP",style: TextStyle(color: Colors.green),)),
                              
                               ),
                    ),
                             SizedBox(height: 10,),
                             Text("-----Or login with-----",style: TextStyle(color: Colors.black,fontSize: 20,),),
                             SizedBox(height: 10,),
                             
                                Row(
                                children: [
                                  SizedBox(width:140,),
                                  Center(child: Icon(Icons.g_mobiledata,color: Colors.green,size:40)), 
                                  SizedBox(width: 10,),
                                Center(child: Icon(Icons.facebook,color: Color.fromRGBO(33, 150, 243, 1),size: 30,)),
                                  
                                ],
                               ),
                    
                    
                       
                  ],
                ),
              
            ),
          
                  
                
     
   
    );
  }
}