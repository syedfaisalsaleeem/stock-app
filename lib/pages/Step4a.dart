import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stock_app_demo/pages/Home.dart';
import 'package:stock_app_demo/pages/Stepper1.dart';
import 'package:flutter_holo_date_picker/flutter_holo_date_picker.dart';
import 'package:intl/intl.dart';
import 'package:country_picker/country_picker.dart';
import 'package:regexed_validator/regexed_validator.dart';
import 'package:stock_app_demo/global/IdentityVerificationform.dart';
class Step4a extends StatefulWidget {
  // Step4a({this.data,this.form});
  // final VoidCallback data;
  // GlobalKey form;
  // final Record recordObject;

  Step4a({Key key, @required this.data,this.form}) : super(key: key);
  final VoidCallback data;
  GlobalKey form;
  @override
  _Step4aState createState() => _Step4aState(data);
}

class _Step4aState extends State<Step4a> {
  final _formKey = GlobalKey<FormState>();
  _Step4aState(this.data);
  final VoidCallback data;
  String date1;
  int age;
  String countryname;
  Identity formData=Identity();
  // widget.data;
  // int getAge(DOB) {
  //   var today = DateTime.now();
  //   var birthDate = new Date(DOB);
  //   var age = today.getFullYear() - birthDate.getFullYear();
  //   var m = today.getMonth() - birthDate.getMonth();
  //   if (m < 0 || (m === 0 && today.getDate() < birthDate.getDate())) {
  //   age--;
  //   }
  //   return age;
  // }
  getCurrentDate(dob){
    // print(dob);
    var checkdob=DateTime.parse(dob);
    // print(checkdob);
    var date = new DateTime.now().toString();

    var dateParse = DateTime.parse(date);
    var age=int.parse("${dateParse.year}")-int.parse("${checkdob.year}");
    var m=int.parse("${dateParse.month}")-int.parse("${checkdob.month}");
    if (m < 0 || (m == 0 && int.parse("${dateParse.day}") < int.parse("${checkdob.day}"))) {
      age=age-1;
      }
    // print(age);
    // print("his age");
    return age;

    // var formattedDate = "${dateParse.year}";
    // print(int.parse(formattedDate));
    // var currentyear=formattedDate.toString();
    // var month = "${dateParse.month}";
    // var currentmonth=month.toString();
    // print(currentmonth);
    // setState(() {
    //
    //   finalDate = formattedDate.toString() ;
    //
    // });
  }
  @override
  Widget build(BuildContext context) {

//     return Container();
//   }
// }
//
// class Step4a extends StatelessWidget {
//   Step4a({this.data,this.form,this.context1});
//   final VoidCallback data;
//   GlobalKey form;
//   BuildContext context1;
//   @override
//   Widget build(BuildContext context1) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(color: Colors.white,
        ),
        child:Builder(
          builder: (context)=>Form(
            key:_formKey,
            child:Column(
              children: [
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Your Identity Verification",
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,
                  child:TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (val){
                      formData.email=val;
                    },
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'Your Email Address '
                    ),
                    validator: (value){
                      bool nano=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value);
                      if (value.isEmpty  ) {
                        return 'Please enter your email address.';
                      }
                      else if(nano==false){
                        return 'Please enter valid email address.';
                      }

                    },

                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,
                  child:TextFormField(
                      showCursor: false,
                      readOnly: false,

                    // onFieldSubmitted:(value){
                    //     print(date1);
                    //     print("date1 is working");
                    //   formData.dateBirth=date1;
                    // },
                    validator: (value){
                      if ( value.isEmpty ) {
                        return 'Please enter your Date of Birth';
                      }
                      else if(age<=18){
                        return 'Your age should be greater than 18';
                      }
                    },
                    onTap: ()
                      async {

                        var datePicked = await DatePicker.showSimpleDatePicker(
                          context,
                          initialDate: DateTime(1994),
                          firstDate: DateTime(1960),
                          lastDate: DateTime(2012),
                          dateFormat: "dd-MMMM-yyyy",
                          locale: DateTimePickerLocale.en_us,
                          looping: false,
                        );
                        final DateFormat formatter = DateFormat('yyyy-MM-dd');
                        final String formatted = formatter.format(datePicked);

                        print(date1);
                        setState(() {
                          date1=formatted;
                          age=getCurrentDate(date1);
                          formData.dateBirth=date1;
                        });

                        // final snackBar =
                        // SnackBar(content: Text("Date Picked $datePicked"));
                        // Scaffold.of(context).showSnackBar(snackBar);
                      }
                    ,
                    controller: TextEditingController(text:date1),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'Date of Birth'
                    ),

                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,

                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    onFieldSubmitted:(val){
                      formData.sex=val;
                    },
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'Sex'
                    ),
                    validator: (value){
                      print(value=="male");
                      bool nano=(value=="male" || value=="female");
                      if (value.isEmpty ) {
                        return 'Please enter your gender';
                      }
                      else if(nano==false){
                        return 'Please enter male or female';
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    onFieldSubmitted:(val){
                      formData.homeaddress=val;
                    },
                    maxLines:null,
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'Home Address'
                    ),
                    validator: (value){
                      if (value.isEmpty ) {
                        return 'Please enter your home address';
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    onFieldSubmitted:(val){
                      formData.city=val;
                    },
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'City'
                    ),
                    validator: (value){
                      if (value.isEmpty ) {
                        return 'Please enter your city';
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    onFieldSubmitted:(val){
                      formData.state=val;
                    },
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'State'
                    ),
                    validator: (value){
                      if (value.isEmpty ) {
                        return 'Please enter your state';
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,

                  child:TextFormField(
                    showCursor: false,
                    readOnly: true,
                    onTap: (){
                      showCountryPicker(
                          context: context,
                          showPhoneCode: false, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                        print('Select country: ${country.displayName} ${country.displayNameNoCountryCode} ${country.countryCode}');
                        setState(() {
                          countryname=country.displayNameNoCountryCode;
                          formData.country=country.displayNameNoCountryCode;
                        });
                      }
                          );
                    },
                    controller: TextEditingController(text:countryname),
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'Country'
                    ),
                    validator: (value){
                      if (value.isEmpty ) {
                        return 'Please enter your country';
                      }
                    },
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width:width * 0.85,
                  child:TextFormField(
                    keyboardType: TextInputType.text,
                    onFieldSubmitted:(val){
                      formData.postalcode=val;
                    },
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey[500]
                            )),
                        hintText: 'Postal Code'
                    ),
                    validator: (value){
                      // print(validator.postalCode(value));
                      // print('postal code');
                      if (value.isEmpty ) {
                        return 'Please enter your postal code';
                      }
                      else if(validator.postalCode(value)==false){
                        return 'Please enter valid postal code';
                      }
                    },
                  ),
                ),
                SizedBox(height:25.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      padding: EdgeInsets.fromLTRB(50,15,50,15),
                      onPressed:(){
                        // data();
                        // getCurrentDate();
                        formData.returnForm();
                        print(_formKey.currentState.validate());
                                  if (_formKey.currentState.validate()==true) {
                            // If the form is valid, display a Snackbar.
                                    data();
                                    formData.submitForm();

                            // Scaffold.of(context)
                            // .showSnackBar(SnackBar(content: Text('Processing Data')));
                      }

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
                SizedBox(height:25.0),
              ],
            )
          )
        ),
    );
  }
}

