import 'dart:convert';
import 'package:http/http.dart';
class Identity {

  String email;
  String dateBirth;
  String sex;
  String homeaddress;
  String city;
  String state;
  String country;
  String postalcode;
  Identity({this.email,this.dateBirth,this.sex,this.homeaddress,this.city,this.state,this.country,this.postalcode});

  void submitForm(){
    print('$email $dateBirth $sex $homeaddress $city $state $country $postalcode');
  }
  void returnForm() async{
    Response response=await post('https://0jjjspxe6h.execute-api.us-east-1.amazonaws.com/development/postingrequest',
        body: jsonEncode(<String, String>{
          'PK':'1234userid',
          'SK': "+923312812064",
          'emailaddress':email,
          'DateofBirth':dateBirth,
          'sex':sex,
          'homeaddress':homeaddress,
          'city':city,
          'state':state,
          'country':country,
          'postalcode':postalcode,
          'verified':"false",
        })
    );
    Map data=jsonDecode(response.body);
    print(data['body']);
}
  // void decreaseStep(){
  //   if(count>0) {
  //     count=count-1;
  //   }
  //   else{
  //     count=0;
  //   }
  //   // count=count-1;
  //   print(count);
  //
  // }
// int get countvalue{
//   return count;
// }


}



// WorldTime instance= WorldTime(location:"Berlin",flag:"germany.png",url:"Europe/Berlin");
// // instance.getTime()