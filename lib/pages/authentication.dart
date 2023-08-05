import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:workout_programm/pages/suxrob_page.dart';

import '../services/constants/colors.dart';
import '../services/constants/strings.dart';


class CodeCheckPage extends StatefulWidget {
  const CodeCheckPage({super.key});


  @override
  State<CodeCheckPage> createState() => _CodeCheckPageState();
}

class _CodeCheckPageState extends State<CodeCheckPage> {
  int min = 1;
  int sec = 60;
  String value1="";
String  value2="";
  String value3="";
 String value4="";
  void codetimer(){
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (sec == 00 && min == 0) {
        return;
      }

      if (sec >=0) {
        sec--;
      }
      if (sec == -1 && min > 0||sec==-1&&min==0) {
       
       sec=59;
        if(min==1){min--;}
      }
      setState(() {});
    });
  }
  @override
  void initState() {
    codetimer();
  
   
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
// FocusNode focusNode1=FocusNode();
// FocusNode focusNode2=FocusNode();
// FocusNode focusNode3=FocusNode();
// FocusNode focusNode4=FocusNode();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: CustomColors.checkpagebackcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,
      vertical: 35),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/icons/ic_back.png",
              height: 24,
              width: 24,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "+998 97 628 28 82",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: CustomColors.white),
            ),
            const SizedBox(
              height: 12,
            ),
            const Text(
              CustomStrings.codes4digit,
              style: TextStyle(fontSize: 16, color: CustomColors.codes4digit),
            ),
         const SizedBox(
              height: 160,
            ),
             const Center(
              child: Text(
                "Enter your code",
                style: TextStyle(fontSize: 16, color: CustomColors.codes4digit),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 60,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 45,
                    width: 45,
                    
                    child: TextField(
                     
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      textAlign: TextAlign.center,
                     
                      onChanged: (value) {
                        if (value.length == 1) {
                         value1=value;
FocusScope.of(context).nextFocus();

                          
                        }
                      },
                     
                    
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0657185)),
                      
                      decoration: const InputDecoration(
                        hintText: "0",
                          contentPadding: EdgeInsets.only(bottom: 3.8),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          counterText: "",
                          filled: true,
                          fillColor: Color(0xff323A48),
                          border: OutlineInputBorder()),
                    ),
                  ),
                               SizedBox(
                    height: 45,
                    width: 45,
                    
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      textAlign: TextAlign.center,
                     
                      onChanged: (value) {
                        if (value.length == 1) {
                          value2=value;
FocusScope.of(context).nextFocus();
   
                          
                        }
                      },
                     
                    
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0657185)),
                      
                      decoration: const InputDecoration(
                        hintText: "0",
                          contentPadding: EdgeInsets.only(bottom: 3.8),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          counterText: "",
                          filled: true,
                          fillColor: Color(0xff323A48),
                          border: OutlineInputBorder()),
                    ),
                  ),              
                  SizedBox(
                    height: 45,
                    width: 45,
                    
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      textAlign: TextAlign.center,
                     
                      onChanged: (value) {
                        value3=value;
                        
                        if (value.length == 1) {
                           
FocusScope.of(context).nextFocus();

                          
                        }
                      },
                     
                    
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0657185)),
                      
                      decoration: const InputDecoration(
                        hintText: "0",
                          contentPadding: EdgeInsets.only(bottom: 3.8),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          counterText: "",
                          filled: true,
                          fillColor: Color(0xff323A48),
                          border: OutlineInputBorder()),
                    ),
                  ),        
                        SizedBox(
                    height: 45,
                    width: 45,
                    
                    child: TextField(
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      textAlign: TextAlign.center,
                     
                      onChanged: (value) {
                        if (value.length == 1) {
                          value4=value;
                             
FocusScope.of(context).nextFocus();

                          
                        }
                      },
                     
                    
                      keyboardType: TextInputType.number,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0657185)),
                      
                      decoration: const InputDecoration(
                        hintText: "0",
                          contentPadding: EdgeInsets.only(bottom: 3.8),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1.3, color: Color(0xff657185)),
                          ),
                          counterText: "",
                          filled: true,
                          fillColor: Color(0xff323A48),
                          border: OutlineInputBorder()),
                    ),
                  ),

              ],
              ),
            ),
             const SizedBox(
              height: 40,
            ),
            Center(
                child: min == 0 && sec == 0
                    ? TextButton(
                        onPressed: () {
                          min = 1;
                          sec = 60;
                          setState(() {});
                        },
                        child: const Text(
                          "Resend code",
                          style: TextStyle(
                              fontSize: 16, color: CustomColors.mainColor),
                        ))
                    : Text(
                        "${sec == 60 ? "2" : min}:${sec == 60 ? "00" : sec < 10 ? "0$sec" : sec}",
                        style: const TextStyle(
                            fontSize: 18, color: CustomColors.codes4digit),
                      )),
                      const Expanded(child: SizedBox()),
            Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                height: 60,
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:CustomColors.mainColor
                      
                      
                   
                    ),
                    onPressed: () {
                      if(
                         "1234"!=value1+ value2+value3+value4
                      ){
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Code is wrong")));
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SuxrobPage()));
                      }
                    },
                    child: const Text("Confirm",
                    style: TextStyle(color: CustomColors.black,
                    fontWeight: FontWeight.w600,fontSize: 20),)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
