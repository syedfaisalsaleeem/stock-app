import 'dart:convert';
class StepperSteps {
  // String location; // location name for the UI
  // String time; //the time in that location
  // String flag; //url to an asset flag icon
  // String url; //location url for api end point
  // bool isDaytime;// true or false if daytime or not
  int count;
  StepperSteps({this.count});
  void increaseStep(){
    if(count<4) {
      count=count+1;

    }
    else{
      count=0;
    }
      // count=count+1;
      print(count);

  }
  void decreaseStep(){
    if(count>0) {
      count=count-1;
    }
    else{
      count=0;
    }
    // count=count-1;
    print(count);

  }
  // int get countvalue{
  //   return count;
  // }


  }



// WorldTime instance= WorldTime(location:"Berlin",flag:"germany.png",url:"Europe/Berlin");
// // instance.getTime()