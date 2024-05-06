import 'package:demo_s/res/AppColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  SingUpController controller=Get.put(SingUpController());
  LoginController controllerLogin = Get.put(LoginController());



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.appBarColor1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome To Home Page",
                style: TextStyle(
                    color: AppColors.blackDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp),
              ),



              Text(
                "${controllerLogin.}",
                style: TextStyle(
                    color: AppColors.blackDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp),
              ),

              Text(
                "Welcome To Home Page",
                style: TextStyle(
                    color: AppColors.blackDark,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.sp),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
