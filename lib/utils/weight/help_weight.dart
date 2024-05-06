
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../res/AppColor.dart';
import '../../res/ImageRes.dart';


class HelpWeight {
  Widget testMethod(var fontSize, var fontWeight, var colorsC, var textS) {
    return Text(
      '$textS',
      textAlign: TextAlign.center,

      style: TextStyle(
        fontSize: fontSize,
        decoration: TextDecoration.none,
        fontFamily: "Poppins",
        color: colorsC,
        //  height: 1.0,
        fontWeight: fontWeight,
      ),
    );
  }

  Widget testMethodStart(var fontSize, var fontWeight, var colorsC, var textS) {
    return Text(
      '$textS',
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: "Poppins",
        color: colorsC,
        decoration: TextDecoration.none,
        //  height: 1.0,
        fontWeight: fontWeight,
      ),
    );
  }

Widget  buttonCreate(
      var textName, var fontSizeC, var colorsC, var buttonShadowC, testColor) {
    return Container(
      width: 140,
      height: 35,

      margin: const EdgeInsets.only(right: 0),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: buttonShadowC,
              offset: const Offset(0.1, 0.3),
              blurRadius: 10,
              spreadRadius: 2)
        ],
        
        color: colorsC,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        textName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: fontSizeC,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w900,
            color: testColor),
      ),
    );
  }



  buttonCreateEnr(
      var textName, var fontSizeC, var colorsC, var buttonShadowC, testColor) {
    return Container(
      width: 140,
      height: 35,
      margin: const EdgeInsets.only(right: 0),
      decoration: BoxDecoration(


        color: colorsC,
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        textName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: fontSizeC,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w900,
            color: testColor),
      ),
    );
  }


  buttonRadiusEnr(
      var textName, var fontSizeC, var colorsC, var buttonShadowC, testColor) {
    return Container(
      width: 140,
      height: 35,
      margin: const EdgeInsets.only(right: 0),
      decoration: BoxDecoration(


        color: colorsC,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Text(
        textName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: fontSizeC,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w900,
            color: testColor),
      ),
    );
  }



 Widget  buttonCreateWhat(
      BuildContext context,
      var textName, var fontSizeC, var colorsC, var buttonShadowC, testColor) {
    return Container(
      width: MediaQuery.of(context).size.width-150,
      height: 35.h,
      margin: const EdgeInsets.only(right: 0),
      decoration: BoxDecoration(

        color: colorsC,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Image.asset(  ImageRes().whatsappIcon,
            height: 20,
            width: 20,
            fit: BoxFit.contain,),
          Padding(
            padding:  EdgeInsets.only(left: 10.w),
            child: Text(
              textName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: fontSizeC,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w900,
                  color: AppColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }





  buttonCreateOnlyBorder(
      var textName, var colorsV, var fontWeight, var fontSizeC) {
    return Container(
      width: 191,
      height: 30,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: AppColors.notificationBg, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      alignment: Alignment.center,
      child: Text(
        textName,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 16,
            fontFamily: "Poppins",
            fontWeight: FontWeight.w900,
            color: colorsV),
      ),
    );
  }

  getAllGame() {
    return Container(
        width: 132,
        height: 132.998,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ));
  }

  Widget buttonAllLike(BuildContext context, String textName) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.blackDark),
      height: 50.h,
      child: Center(
        child: Text(
          textName,
          style: const TextStyle(
              fontSize: 16,
              color: Colors.black,
              height: 0,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins"),
        ),
      ),
    );
  }

  Widget commonTextField(
      TextEditingController passwordController, String hintType) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.whiteColor),
      child: TextField(
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
        ],
        controller: passwordController,

        style: const TextStyle(color: AppColors.colorPrimaryLight),
        obscureText: false,
        // Hide the text for password input
        decoration: InputDecoration(
          // Set individual properties if needed, but for no decoration, use an empty InputDecoration
          border: InputBorder.none,
          hintText: hintType,
        ),
      ),
    );
  }

  Widget commonTextFiledPassword(
    TextEditingController passwordController,
    bool isPasswordVisible,
    VoidCallback onPressed,
  ) {
    return Container(
      height: 50,
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white, // Change AppColor().whiteColor to Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0), // Change 50.0 to 8.0
        child: TextField(
          controller: passwordController,
          obscureText: !isPasswordVisible,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: IconButton(
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: onPressed,
            ),
          ),
        ),
      ),
    );
  }
}

Widget buttonCommon(
    BuildContext context, String name, var color, var TextColor) {
  return Container(
      height: 52.h,
      width: 124.w,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(26)),
      child: Center(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Poppins",
            color: TextColor,
            //  height: 1.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ));
}

showAlertDialog(BuildContext context) {
  Widget cancelButton = TextButton(
    child: const Text(
      "No",
    ),
    onPressed: () {
      Navigator.of(context, rootNavigator: true).pop();
    },
  );

  Widget continueButton = TextButton(
    child: const Text("Yes"),
    onPressed: () async {

    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: const Text(
      "Logout",
      style: TextStyle(
          color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
    ),
    content: const Text("Are you sure want to logout?"),
    actions: [
      cancelButton,
      continueButton,
    ],
  );
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

void thanksPop(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    // transitionDuration: Duration(milliseconds: 200),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Wrap(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.whiteColor),
                child: Column(
                  children: [

                    SizedBox(height: 25.h),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HelpWeight().testMethod(16.0, FontWeight.w500,
                            AppColors.blackLight, "You sent money "),
                        HelpWeight().testMethod(16.0, FontWeight.w500,
                            AppColors.greenColorMore, "successfully "),
                        HelpWeight().testMethod(
                            16.0, FontWeight.w500, AppColors.blackLight, "to")
                      ],
                    ),

                    SizedBox(height: 25.h),
                    Container(
                      height: 62,
                      width: MediaQuery.of(context).size.width-200,
                      decoration: BoxDecoration(
                          color: AppColors.colorPrimaryLightToo.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(40)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              HelpWeight().testMethod(16.0, FontWeight.w700,
                                  AppColors.blackDark, "ABD"),
                              HelpWeight().testMethod(16.0, FontWeight.w500,
                                  AppColors.greenColorLight, "#123456789"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HelpWeight().testMethod(16.0, FontWeight.w500,
                            AppColors.blackLight, "Transaction ID"),
                        HelpWeight().testMethod(16.0, FontWeight.w500,
                            AppColors.greenColorMore, "#123456789"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        HelpWeight().testMethod(16.0, FontWeight.w500,
                            AppColors.blackLight, "executed on"),
                        HelpWeight().testMethod(16.0, FontWeight.w700,
                            AppColors.blackDark, " Nov 5, 2023"),
                      ],
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(

                        width: MediaQuery.of(context).size.width-100,
                          height:48,


                          decoration: BoxDecoration(
                              color: AppColors.blackDark,
                              borderRadius: BorderRadius.circular(40)),
                          child: Container(
                            child: Center(
                              child: HelpWeight().testMethod(16.0, FontWeight.w500,
                                  AppColors.blackDark, "DONE"),
                            ),
                          )),
                    ),

                    SizedBox(
                      height: 30.h,
                    ),
                  ],
                )),
          ],
        ),
      );
    },
  );
}
