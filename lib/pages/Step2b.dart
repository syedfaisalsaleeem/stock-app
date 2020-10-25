import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Step2b extends StatelessWidget {
  Step2b({this.changecount,this.decreasecount});
  final VoidCallback changecount,decreasecount;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: [
              SizedBox(height:12),
              Row(

                children: [
                  SizedBox(width:15),
                  IconButton(
                    iconSize: 20,
                    icon:Icon(Icons.arrow_back),
                    onPressed: (){
                      decreasecount();
                    },
                  ),
                  SizedBox(width:40),
                  Text("Confirm Passcode",
                      style:TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700
                      )
                  ),
                ],
              ),
              SizedBox(height:25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width:15,
                    height:15,
                    decoration: BoxDecoration(
                      color: HexColor("#DFDFDF"),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width:30),
                  Container(
                    width:15,
                    height:15,
                    decoration: BoxDecoration(
                      color: HexColor("#DFDFDF"),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width:30),
                  Container(
                    width:15,
                    height:15,
                    decoration: BoxDecoration(
                      color: HexColor("#DFDFDF"),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width:30),
                  Container(
                    width:15,
                    height:15,
                    decoration: BoxDecoration(
                      color: HexColor("#DFDFDF"),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width:30),
                  Container(
                    width:15,
                    height:15,
                    decoration: BoxDecoration(
                      color: HexColor("#DFDFDF"),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width:30),
                  Container(
                    width:15,
                    height:15,
                    decoration: BoxDecoration(
                      color: HexColor("#DFDFDF"),
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // InkWell(
                  //   borderRadius: BorderRadius.circular(50),
                  //   onTap: () {
                  //     print("1");
                  //   },
                  //
                  //   child: Container(
                  //     width:70,
                  //     height:70,
                  //     decoration: BoxDecoration(
                  //       color: HexColor("#EFEFF4"),
                  //       shape: BoxShape.circle
                  //     ),
                  //     child: Center(
                  //       child: Text(""),
                  //     ),
                  //   ),
                  // ),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("1",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("2",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("3");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("3",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("4",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("5",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("6",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("7",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("8",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("9",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Icon(
                        Icons.backspace,
                        size:30,

                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      print("1");
                    },

                    child: Container(
                      alignment: Alignment.center,
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Text("0",
                        style:TextStyle(
                            fontSize: 34
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 39),
                  InkWell(

                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      changecount();
                      decreasecount();
                    },

                    child: Container(
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Icon(
                          Icons.check,
                          size:30
                      ),
                    ),
                  ),
                ],
              ),
              // FlatButton(
              //   onPressed: () {
              //     setState(() {
              //       changecount();
              //     });
              //   },
              //   child: Text(localizations.continueButtonLabel),
              // )

            ]
        )
    );
  }
}
