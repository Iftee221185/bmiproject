import 'package:bmiproject/bmi.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String gender="null";

  callfun(String name)
  {
    //print(gender);
    if(gender=="null")
      {
       Fluttertoast.showToast(msg: "Select your gender");
      }
    else{
      gender="null";
      Get.to(()=>Bmi(),arguments: name);
    }

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Colors.cyan.shade100,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Select Your Gender",style: TextStyle(
            color: Colors.blue,
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        gender="female";
                      },
                      child: Container(
                        height: 350,
                        width: 200,
                        decoration: BoxDecoration(
                          color: gender=="female"?Colors.blue.shade50:Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 1.0,
                          )
                        ),
                        child: Image.asset("assets/images/female1.png",height: 50,width: 50,),
                      ),
                    ),
                    Text("FEMALE"),
                  ],
                ),
              ),
              SizedBox(width: 50,),
              Center(
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        gender="male";
                      },
                      child: Container(
                        height: 350,
                        width: 200,
                        decoration: BoxDecoration(
                            color: gender=="male"?Colors.blue.shade50:Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Colors.black,
                              width: 1.0,
                            )
                        ),
                        child: Image.asset("assets/images/male2.png",height: 50,width: 50,),
                      ),
                    ),
                    Text("MALE"),
                  ],
                ),
              ),


            ],
          ),
          SizedBox(height: 40,),
          SizedBox(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size.fromHeight(50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
                onPressed: (){
                callfun(gender);
                },
                child: Text("Select",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),)),
          ),





        ],
      ),
    );
  }
}
