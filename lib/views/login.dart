import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:softweb_task/views/register.dart';
import 'package:softweb_task/widgets/custom_text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(15, 90.h, 15, 20),
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xFF141414),
          // Color.fromARGB(255, 172, 130, 91),
          Color(0xFFEF5858)
        ], stops: [
          0.85,
          1
        ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100.h,
                width: 100.h,
                decoration: BoxDecoration(
                    color: const Color(0xFF1E1E1E),
                    borderRadius: BorderRadius.circular(8.r)),
              ),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Text(
                  'Welcome back 👋🏾',
                  style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w300,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 40.h,
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
                height: 15.h,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Email Address',
                    hintStyle: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFFA4A4A4)),
                    border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF515151)),
                        borderRadius: BorderRadius.circular(8.r))),
              ),
              SizedBox(
                height: 25.h,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
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
                obscureText: true,
                hintText: 'Password',
                suffixIcon: Icons.remove_red_eye,
                showSuffixIcon: true,
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color(0xFFB9B9B9)),
                  )),
              SizedBox(
                height: 30.h,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const Register(),
                      transition: Transition.downToUp);
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
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight)
                      ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "I dont't have an account,",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color(0xFFB9B9B9)),
                  ),
                  Text(
                    'Create account',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                        color: const Color(0xFFB9B9B9)),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
