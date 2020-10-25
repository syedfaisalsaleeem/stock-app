import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Step2a extends StatelessWidget {
  Step2a({this.changecount,this.inputcreatepassword,this.increment,this.decrement});
  final VoidCallback changecount,increment,decrement;
  final int inputcreatepassword;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white,
        ),
        child: Column(
            children: [
              SizedBox(height:15),
              Text("Create Passcode",
                  style:TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700
                  )
              ),
              SizedBox(height:25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    width:15,
                    height:15,
                    decoration: BoxDecoration(
                      color: inputcreatepassword<1?HexColor("#DFDFDF"):HexColor("#000085"),
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
                      increment();
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
                      increment();
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
                      increment();
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
                      increment();
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
                      increment();
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
                      increment();
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
                      increment();
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
                      increment();
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
                      increment();
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
                      decrement();
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
                      increment();
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
                      print("1");
                      changecount();
                    },

                    child: Container(
                      width:75,
                      height:75,
                      decoration: BoxDecoration(
                          color: HexColor("#EFEFF4"),
                          shape: BoxShape.circle
                      ),
                      child: Icon(
                          Icons.arrow_forward,
                          size:35
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
