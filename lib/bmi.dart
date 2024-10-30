import 'package:bmiproject/Homepage.dart';
import 'package:bmiproject/resultx.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class Bmi extends StatefulWidget {
  const Bmi({super.key});

  @override
  State<Bmi> createState() => _BmiState();
}

class _BmiState extends State<Bmi> {
  @override

TextEditingController height=TextEditingController();
TextEditingController weight=TextEditingController();

  @override
  Widget build(BuildContext context) {
    var gender=Get.arguments;
   // print(gender);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Calculate Your BMI",style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
              fontWeight: FontWeight.bold,

            ),),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 400,
                child: TextField(
                  controller: height,
                 // keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "Height",
                    hintText: "Enter your Height",
                    prefixIcon: Icon(Icons.height),
                    suffixText: "feet",
                  ),
                ),
              ),
            ),
            SizedBox(height:20,),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 400,
                child: TextField(

                  controller: weight,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: "weight",
                    hintText: "Enter your weight",
                    prefixIcon: Icon(Icons.line_weight),
                    suffixText: "kg",

                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.fromHeight(50),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),

                      )
                  ),
                  onPressed: (){
                     String x=height.text;
                     String y= weight.text;

                     print(x);
                     print(y);

                    if(x=="" && y=="")
                      {
                        Fluttertoast.showToast(msg: "Give the inputs");

                      }else{
                      Get.to(
                              ()=>Result(),
                          arguments: [
                            x,y,gender
                          ]
                      );
                    }

                  },
                  child: Text("Calculate",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),)
              ),
            ),
          ],
        ),
      ),

    );
  }
}
