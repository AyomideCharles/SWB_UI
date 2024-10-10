import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:softweb_task/widgets/gradient_text.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _pageController = PageController(viewportFraction: 0.90);
  List actions = [
    {'image': 'assets/icons/6.png', 'text': 'Data'},
    {'image': 'assets/icons/7.png', 'text': 'Airtime'},
    {'image': 'assets/icons/5.png', 'text': 'showmax'},
    {'image': 'assets/icons/8.png', 'text': 'Giftcards'},
    {'image': 'assets/icons/4.png', 'text': 'Betting'},
    {'image': 'assets/icons/3.png', 'text': 'Electricity'},
    {'image': 'assets/icons/1.png', 'text': 'TV/Cable'},
    {'image': 'assets/icons/2.png', 'text': 'E-Pin'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF141414),
      floatingActionButton: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(colors: [
            Color(0xFFEF5858),
            Color(0xFFEFA058),
          ], stops: [
            0.5,
            0.8
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          onPressed: () {},
          child: Image.asset('assets/icons/chat.png'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 30.h),
                // height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24.r),
                        bottomRight: Radius.circular(24.r))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 44.w,
                            height: 44.h,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFA4A4A4)),
                                borderRadius: BorderRadius.circular(44)),
                            child: Image.asset('assets/icons/pic.png')),
                        Text(
                          'Welcome, Sam 👋🏾',
                          style: TextStyle(
                              fontSize: 16.sp, fontWeight: FontWeight.w300),
                        ),
                        Container(
                            width: 44.w,
                            height: 44.h,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xFFA4A4A4)),
                                borderRadius: BorderRadius.circular(44)),
                            child:
                                Image.asset('assets/icons/Notification.png')),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          gradient: const LinearGradient(
                              colors: [
                                Color(0xFFEF5858),
                                Color(0xFFEFA058),
                              ],
                              stops: [
                                0.5,
                                0.8
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.r),
                              bottomRight: Radius.circular(16.r))),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'WALLET BALANCE',
                                  style: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'NGN 50,000 ',
                                      style: TextStyle(
                                          color: const Color(0xFFFFFFFF),
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    const Icon(
                                      Icons.remove_red_eye_outlined,
                                      color: Colors.white,
                                      size: 17,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Colors.pink.shade50,
                                      borderRadius:
                                          BorderRadius.circular(20.r)),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Cashback',
                                        style: TextStyle(
                                            color: const Color(0xFF282828),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      GradientText(
                                        text: 'N341.20',
                                        style: TextStyle(
                                            color: const Color(0xFFEFA058),
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w700),
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
                                )
                              ],
                            ),
                            Container(
                              height: 80,
                              width: 1.5,
                              color: const Color(0xFFD04E4E),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.w, vertical: 8.h),
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFFFFFFF).withOpacity(0.2),
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(8.r),
                                      bottomRight: Radius.circular(8.r))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'MONIEPOINT',
                                    style: TextStyle(
                                        color: const Color(0xFFFFFFFF),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '8192017482',
                                        style: TextStyle(
                                            color: const Color(0xFFFFFFFF),
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      SizedBox(
                                        width: 5.w,
                                      ),
                                      const Icon(
                                        Icons.copy_all,
                                        color: Colors.white,
                                        size: 15,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 3.h,
                                  ),
                                  Text(
                                    'Deposit Fee: N20',
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.white,
                                        decorationThickness: 2,
                                        color: const Color(0xFFFFFFFF),
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset('assets/icons/Plus.png'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Top up',
                                style: TextStyle(
                                    color: const Color(0xFF4B4B4B),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Text(
                            '|',
                            style: TextStyle(color: Color(0xFFD6D6D6)),
                          ),
                          Column(
                            children: [
                              Image.asset('assets/icons/Send.png'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Transfer',
                                style: TextStyle(
                                    color: const Color(0xFF4B4B4B),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                          const Text(
                            '|',
                            style: TextStyle(color: Color(0xFFD6D6D6)),
                          ),
                          Column(
                            children: [
                              Image.asset('assets/icons/clock (2).png'),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'History',
                                style: TextStyle(
                                    color: const Color(0xFF4B4B4B),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      height: 5.h,
                      width: 48.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(
                            0xFFE9E9E9,
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15.w, 35.h, 15.w, 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quick Actions',
                      style: TextStyle(
                          color: const Color(0xFFFFFFFF),
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    GridView.builder(
                        padding: EdgeInsets.zero,
                        primary: false,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        shrinkWrap: true,
                        itemCount: actions.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 8,
                            color: const Color(0xFF282828),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  actions[index]['image'],
                                  width: 20,
                                  height: 20,
                                  fit: BoxFit.cover,
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  actions[index]['text'],
                                  style: TextStyle(
                                      color: const Color(0xFFFFFFFF),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w300),
                                )
                              ],
                            ),
                          );
                        }),
                    SizedBox(
                      height: 25.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'News & Update',
                          style: TextStyle(
                              color: const Color(0xFFFFFFFF),
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                              color: const Color(0xFFEF5858),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    SizedBox(
                      height: 120.h,
                      child: PageView.builder(
                          scrollBehavior: const CupertinoScrollBehavior(),
                          controller: _pageController,
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.r),
                                child: Image.asset(
                                  'assets/icons/image.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
