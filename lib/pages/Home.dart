import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stock_app_demo/pages/Step1.dart';
// import 'package:stock_app_demo/global/stepperglobal.dart';
import 'package:stock_app_demo/pages/Step2a.dart';
import 'package:stock_app_demo/pages/Step3.dart';
import 'package:stock_app_demo/pages/Stepper1.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
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

class _HomeState extends State<Home> {
  int _printStep=0;
  StepperSteps instance=StepperSteps(count:0);
  // instance.increaseStep();  //
  int _currentStep = 0;
  void _increment(){
    setState(() {
      if(_currentStep<_mySteps().length -1) {
        instance.count=instance.count+1;
        // _currentStep=_currentStep+1;
        // instance.increaseStep();
      }
      else{
        instance.count=0;
        // _currentStep=0;
      }
    });

  }
  @override
  Widget build(BuildContext context) {
    print(instance.count);
    print("This one is printed");
    _currentStep=instance.count;
    _printStep=instance.count+1;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: HexColor("#F8F9FC"),
          title: Text("Step $_printStep of 5",
            style:TextStyle(

              color: Colors.black,
              fontSize: 14,

          )
          ),

          elevation: 0,

          leading:IconButton(

            icon:Icon(Icons.keyboard_arrow_left),
            color: Colors.black,
            iconSize: 20,
            onPressed: (){
              setState(() {
                instance.decreaseStep();
              });

              // setState(() {
              //   if(_currentStep>0) {
              //     _currentStep=_currentStep-1;
              //   }
              //   else{
              //     _currentStep=0;
              //   }
              // });
            },
          ),


      ),
      body:Stepper1(

          steps:_mySteps(),
          type:Stepper1Type.horizontal,
          currentStep: instance.count,
          onStepTapped: (step){
            setState(() {
              _currentStep=instance.count;
            });
          },
          onStepCancel:(){
            setState(() {
              // if(_currentStep>0) {
              //   _currentStep=_currentStep-1;
              // }
              // else{
              //   _currentStep=0;
              // }
            });
          },
          onStepContinue: (){setState(() {
            if(_currentStep<_mySteps().length -1) {
              instance.count=instance.count+1;
              // _currentStep=_currentStep+1;
              // instance.increaseStep();
            }
            else{
              instance.count=0;
              // _currentStep=0;
            }
          });},
        ),



    );
  }

  List<Step1a> _mySteps(){
    List<Step1a> _steps =[
        Step1a(
          title: Text(''),
          content: Step1(data:_increment),
          // content: Step1(data:instance),
          state:_currentStep ==0?StepState1.editing:StepState1.complete,
          isActive: _currentStep >=0,
        ),
      Step1a(
        title: Text(''),
        content: Text(''),
        state:_currentStep ==1?StepState1.editing:_currentStep>1?StepState1.complete:StepState1.indexed,
        isActive: _currentStep >=1,
      ),
      Step1a(
        title: Text(''),
        content: Step3(data:_increment),
        state:_currentStep ==2?StepState1.editing:_currentStep>2?StepState1.complete:StepState1.indexed,
        isActive: _currentStep >=2,
      ),
      Step1a(
        title: Text(''),
        content: Text(""),
        state:_currentStep ==3?StepState1.editing:_currentStep>3?StepState1.complete:StepState1.indexed,
        isActive: _currentStep >=3,
      ),
      Step1a(
        title: Text(''),
        content: TextField(),
        state:_currentStep ==4?StepState1.editing:_currentStep>4?StepState1.complete:StepState1.indexed,
        isActive: _currentStep >=4,
      )
    ];
    return _steps;
  }
}
