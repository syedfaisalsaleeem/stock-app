import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stock_app_demo/pages/Home.dart';
import 'package:stock_app_demo/pages/Stepper1.dart';
class Step4b extends StatelessWidget {
  Step4b({this.data,this.decreasecount});
  final VoidCallback data,decreasecount;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(color: Colors.white,
        ),
        child:Column(

          children: [
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width*0.245,
                  child:IconButton(
                    iconSize: 20,
                    icon:Icon(Icons.arrow_back),
                    onPressed: (){
                      decreasecount();
                    },
                  ),
                ),
                Container(
                  child:Text("Your Identity Verification",
                      style:TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height:25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FlatButton(
                  padding: EdgeInsets.fromLTRB(50,15,50,15),
                  onPressed:(){
                    data();
                    decreasecount();
                  },
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

