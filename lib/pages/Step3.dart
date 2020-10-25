import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stock_app_demo/pages/Home.dart';
import 'package:stock_app_demo/pages/Stepper1.dart';
class Step3 extends StatelessWidget {
  Step3({this.data});
  final VoidCallback data;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white,
        ),
        child:Column(

          children: [
            SizedBox(height: 20),
            Image.asset("assets/sent.png"),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Launch Your Journey",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700
                  ),
                )
              ],
            ),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Give us the contact method you want to",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("be identified with",
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Container(
              width:250,
              child:TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    icon: Icon(Icons.phone,
                      color: Colors.grey[500],
                      size: 18,
                    ),
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.grey[500]
                        )),
                    hintText: 'Enter Your Mobile Number'
                ),

              ),
            ),
            SizedBox(height:40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  padding: EdgeInsets.fromLTRB(50,15,50,15),
                  onPressed:data,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      side: BorderSide(color:HexColor("#000085"))
                  ),
                  color: HexColor("#000085"),
                  textColor: Colors.white,
                  child: Text("Continue",
                    style:TextStyle(
                        fontFamily: "NeueMontreal"
                    ),
                  ),
                )
              ],
            ),

          ],
        )

    );
  }
}

