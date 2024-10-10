import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:softweb_task/views/verify_email.dart';
import 'package:softweb_task/widgets/custom_text_field.dart';
import 'package:softweb_task/widgets/gradient_text.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(24, 50.h, 24, 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF141414),
          Color.fromARGB(255, 244, 202, 164)
        ], stops: [
          0.90,
          1,
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () {
                            Get.back();
                          },
                          child: const Icon(Icons.navigate_before,
                              color: Color(0xFFB9B9B9))),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: const Color(0xFFB9B9B9)),
                      ),
                    ],
                  ),
                  GradientText(
                    text: 'Sign in instead',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: const Color.fromARGB(184, 219, 139, 139),
                      decorationThickness: 2,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFEFA058),
                        Color(0xFFEF5858),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'Create an account',
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 29.sp,
                    color: const Color(0xFFFFFFFF)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'First Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomTextField(hintText: 'First Name'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Last Name',
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomTextField(hintText: 'Last Name'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter phone number',
                inputType: TextInputType.number,
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email address',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter Email address',
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Create Password',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter Password',
                suffixIcon: Icons.remove_red_eye,
                showSuffixIcon: true,
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Referral Code(Optional)',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16.sp,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              const CustomTextField(
                hintText: 'Enter Referral Code',
              ),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const VerifyEmail(),
                      transition: Transition.upToDown);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 48.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      gradient: const LinearGradient(colors: [
                        Color(0xFFEF5858),
                        Color(0xFFEFA058),
                      ], stops: [
                        0.7,
                        1
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 160,
                    height: 2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r)),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 160,
                    height: 2,
                    decoration: BoxDecoration(
                        color: const Color(0xFF373737),
                        borderRadius: BorderRadius.circular(8.r)),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Account information',
                style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFFA4A4A4)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
