import 'package:bmiproject/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
     String num1="0";
     String num2="0";
     String Bmi="0";
     double ab=0.0;
      getBmiCategory(double bmi) {
       if (bmi < 18.5) {
         return Container(
           height: 100,
           width: 200,
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
             color: Colors.red,
             borderRadius: BorderRadius.circular(10),
           ),
           child: Center(
             child: Text("Underweight",style: TextStyle(
               color: Colors.white,
               fontWeight: FontWeight.bold,
               fontSize: 25,
             ),),
           ),
         );
        }
        else if (bmi >= 18.5 && bmi <= 24.9) {
         return Container(
           height: 100,
           width: 200,
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
             color: Colors.greenAccent,
             borderRadius: BorderRadius.circular(10),
           ),
           child: Text("Normal Weight", style: TextStyle(
               color: Colors.white,
             fontSize: 25,
             fontWeight: FontWeight.bold,
           ),),
         );
       }

        else if (bmi >= 25 && bmi <= 29.9) {
         return Container(
           height: 100,
           width: 200,
           decoration: BoxDecoration(
             shape: BoxShape.rectangle,
             color: Colors.redAccent,
             borderRadius: BorderRadius.circular(10),
           ),
           child: Text("Overweight", style: TextStyle(
               color: Colors.white,
             fontWeight: FontWeight.bold,
             fontSize: 25,
           ),),
         );
       }

        else {
        return Container(
        height: 100,
        width: 200,
        decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.orange,
        borderRadius: BorderRadius.circular(10),
        ),
        child: Text("Obesity",style: TextStyle(
        color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
        );
        }
     }





  @override
  Widget build(BuildContext context) {

    final List<dynamic> args=Get.arguments;
    final double height=double.parse(args[0]);
    final double weight=double.parse(args[1]);
    final String gender=args[2];
    Bmi=(weight/(height*height)).toString();
    ab=double.parse(Bmi);

    print(height);
    print(weight);
    print(gender);

    setState(() {
      num1=Bmi;
    });
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Your Result",style: TextStyle(
              fontSize: 40,
              color: Colors.blue,
              fontWeight: FontWeight.bold,

            ),),
            Text("BMI",style: TextStyle(
              fontSize: 40,
              color: Colors.red,
              fontWeight: FontWeight.bold,

            ),),
            SizedBox(height: 20,),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.yellowAccent,
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )
              ),
              child: Center(
                child: Text(num1,style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),),
              ),
            ),
            SizedBox(height: 20,),
            getBmiCategory(ab),
            SizedBox(height: 20,),
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
                    Get.to(()=>Homepage());
                  },
                  child: Text("Try Again",style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),)
              ),
            ),
          ],
        ),
      )
    );
  }



}
