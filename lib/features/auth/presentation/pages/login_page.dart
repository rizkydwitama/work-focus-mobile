import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:work_focus_mobile/core/theme/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(16, 50, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Work Focus',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                ),
              ),
              const SizedBox(height: 4,),
              Text(
                'Track your activity work',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 19,
                  fontWeight: FontWeight.w400
                ),
              ),
              const SizedBox(height: 44,),
              TabBar(
                controller: _tabController,
                tabAlignment: TabAlignment.start,
                indicatorColor: AppColors.transparentColor,
                dividerHeight: 0.0,
                isScrollable: true,
                unselectedLabelColor: AppColors.transparentColor,
                labelColor: AppColors.transparentColor,
                indicatorPadding: EdgeInsets.zero,
                onTap: (int index) {
                  setState(() {
                    _tabController.index = index;
                  });
                },
                labelPadding: EdgeInsets.only(
                  right: 8
                ),
                padding: EdgeInsets.zero,
                tabs: [
                  Chip(
                    side: BorderSide.none,
                    backgroundColor: _tabController.index == 0
                    ? AppColors.blackColor
                    : AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: BorderSide.none
                    ),
                    label: Text(
                      'Login',
                      style: TextStyle(
                          color: _tabController.index == 0
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                  Chip(
                    side: BorderSide.none,
                    backgroundColor: _tabController.index == 1
                        ? AppColors.blackColor
                        : AppColors.whiteColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                        side: BorderSide.none
                    ),
                    label: Text(
                      'Sign Up',
                      style: TextStyle(
                          color: _tabController.index == 1
                              ? AppColors.whiteColor
                              : AppColors.blackColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              Text(
                'Email',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                cursorColor: AppColors.blackColor,
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                decoration: InputDecoration(
                  filled: false,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.brightGreyColor,
                          width: 1.0,
                          strokeAlign: BorderSide.strokeAlignInside
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.blackColor,
                          width: 1.0,
                          strokeAlign: BorderSide.strokeAlignInside
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )
                  ),

                ),
              ),
              const SizedBox(height: 16,),
              Text(
                'Password',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w500
                ),
              ),
              const SizedBox(height: 10,),
              TextFormField(
                cursorColor: AppColors.blackColor,
                obscureText: true,
                obscuringCharacter: '●',
                style: TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400
                ),
                decoration: InputDecoration(
                  filled: false,
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 12,
                      horizontal: 16
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.brightGreyColor,
                          width: 1.0,
                          strokeAlign: BorderSide.strokeAlignInside
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )
                  ),
                  focusedBorder:  OutlineInputBorder(
                      borderSide: BorderSide(
                          color: AppColors.blackColor,
                          width: 1.0,
                          strokeAlign: BorderSide.strokeAlignInside
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      )
                  ),

                ),
              ),
              const SizedBox(height: 16,),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: AppColors.greyColor
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40,),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.blackColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)
                      )
                    ),
                    onPressed: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.whiteColor
                      ),
                    )
                ),
              ),
              const SizedBox(height: 44,),
              Align(
                alignment: Alignment.center,
                child: RichText(
                 text: TextSpan(
                   text: "Don't have an account? ",
                   style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.w400,
                     color: AppColors.greyColor,
                   ),
                   children: [
                     TextSpan(
                       text: 'Sign Up',
                       recognizer: TapGestureRecognizer()..onTap = () {},
                       style: TextStyle(
                         fontSize: 16,
                         fontWeight: FontWeight.w500,
                         color: AppColors.blackColor,
                       )
                     )
                   ]
                 ),

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
