import 'dart:ui';

import 'package:flutter_portfolio/core/exports/app_exports.dart';
import 'package:flutter_portfolio/features/screens/home/controller/home_screen_controller.dart';
import 'package:flutter_portfolio/features/widgets/custom_button.dart';
import 'package:flutter_portfolio/utils/assets_path.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> menuItems = [
    'Home',
    'Skills',
    'Projects',
    'Tools',
    'Android',
    'iOS',
    'About Me'
  ];

  // @override
  // void initState() {
  //   Get.find<HomeScreenController>();
  //   super.initState();
  // }
  bool _isHoveredFacebook = false;
  bool _isHoveredLinkedin = false;
  bool _isHoveredYoutube = false;
  bool _isHoveredInstagram = false;
  bool _isHoveredTwitter = false;
  bool _isHoveredGithub = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90), // Height of the AppBar
        child: Padding(
          padding: EdgeInsets.only(
              top: 20.0, left: 100.r, right: 100.r), // Space from top
          child: GetBuilder<HomeScreenController>(builder: (controller) {
            return controller.enableBackdrop
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.2)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'RR.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 4.sp,
                                        fontWeight: FontWeight.w300),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Home',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Skills',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Projects',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Android',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'IOS',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Tools',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'About Me',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'RR.',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 4.sp, fontWeight: FontWeight.w300),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Home',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Skills',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Projects',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Android',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'IOS',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Tools',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'About Me',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
          }),
        ),
      ),
      // backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: Get.find<HomeScreenController>().scrollController,
        child: Column(
          children: [
            Container(
              height: Constants.screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsPath.landingBg), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Stack(
                  children: [
                    ///texts
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 90,
                            width: 90,
                            child: Lottie.asset(
                              AssetsPath.helloLottie,
                            ),
                          ),
                          Text(
                            'Hi there, I am',
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 5.sp,
                                fontWeight: FontWeight.w300),
                          ),
                          Text(
                            'Md. Rakibur Rahman',
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          // SizedBox(height: 10),
                          Text(
                            'Senior Flutter Developer',
                            style: TextStyle(
                                color: AppColor.white,
                                fontSize: 5.sp,
                                fontWeight: FontWeight.w600),
                          ),
                          // SizedBox(height: 10),
                          // Text(
                          //   'Android | IOS | Web | Desktop ',
                          //   style: TextStyle(
                          //       color: AppColor.white,
                          //       fontSize: 3.8.sp,
                          //       fontWeight: FontWeight.w300),
                          // ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              CustomButton(
                                btnColor: AppColor.deepNavy,
                                borderColor: AppColor.tealAccent,
                                hoverBorderColor: AppColor.crimsonAccent,
                                btnText: 'Hire Me',
                                onTap: () {},
                                borderRadius: 16,
                              ),
                              SizedBox(width: 10),
                              CustomButton(
                                btnColor: AppColor.deepPurple,
                                borderColor: AppColor.royalBlueAccent,
                                hoverBorderColor: AppColor.magentaAccent,
                                btnText: 'Download Resume',
                                onTap: () {},
                                borderRadius: 16,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    ///social links
                    Positioned(
                      bottom: 30,
                      left: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MouseRegion(
                            onEnter: (_) =>
                                setState(() => _isHoveredLinkedin = true),
                            onExit: (_) =>
                                setState(() => _isHoveredLinkedin = false),
                            child: _isHoveredLinkedin
                                ? SvgPicture.asset(
                                    AssetsPath.linkedinColor,
                                    height: 30,
                                    width: 30,
                                  )
                                : SvgPicture.asset(
                                    AssetsPath.linkedin,
                                    height: 30,
                                    width: 30,
                                  ),
                          ),
                          SizedBox(width: 15),
                          MouseRegion(
                            onEnter: (_) =>
                                setState(() => _isHoveredFacebook = true),
                            onExit: (_) =>
                                setState(() => _isHoveredFacebook = false),
                            child: _isHoveredFacebook
                                ? SvgPicture.asset(
                                    AssetsPath.facebookColor,
                                    height: 30,
                                    width: 30,
                                  )
                                : SvgPicture.asset(
                                    AssetsPath.facebook,
                                    height: 30,
                                    width: 30,
                                  ),
                          ),
                          // SvgPicture.asset(AssetsPath.facebook),
                          SizedBox(width: 15),
                          MouseRegion(
                            onEnter: (_) =>
                                setState(() => _isHoveredGithub = true),
                            onExit: (_) =>
                                setState(() => _isHoveredGithub = false),
                            child: _isHoveredGithub
                                ? SvgPicture.asset(
                                    AssetsPath.githubColor,
                                    height: 30,
                                    width: 30,
                                  )
                                : SvgPicture.asset(
                                    AssetsPath.github,
                                    height: 30,
                                    width: 30,
                                  ),
                          ),
                          // SvgPicture.asset(AssetsPath.github),
                          SizedBox(width: 15),
                          MouseRegion(
                            onEnter: (_) =>
                                setState(() => _isHoveredTwitter = true),
                            onExit: (_) =>
                                setState(() => _isHoveredTwitter = false),
                            child: _isHoveredTwitter
                                ? SvgPicture.asset(
                                    AssetsPath.twitterColor,
                                    height: 30,
                                    width: 30,
                                  )
                                : SvgPicture.asset(
                                    AssetsPath.twitter,
                                    height: 30,
                                    width: 30,
                                  ),
                          ),
                          // SvgPicture.asset(AssetsPath.twitter),
                          SizedBox(width: 15),
                          MouseRegion(
                            onEnter: (_) =>
                                setState(() => _isHoveredYoutube = true),
                            onExit: (_) =>
                                setState(() => _isHoveredYoutube = false),
                            child: _isHoveredYoutube
                                ? SvgPicture.asset(
                                    AssetsPath.youtubeColor,
                                    height: 30,
                                    width: 30,
                                  )
                                : SvgPicture.asset(
                                    AssetsPath.youtube,
                                    height: 30,
                                    width: 30,
                                  ),
                          ),
                          // SvgPicture.asset(AssetsPath.youtube),
                          SizedBox(width: 15),
                          MouseRegion(
                            onEnter: (_) =>
                                setState(() => _isHoveredInstagram = true),
                            onExit: (_) =>
                                setState(() => _isHoveredInstagram = false),
                            child: _isHoveredInstagram
                                ? SvgPicture.asset(
                                    AssetsPath.instagramColor,
                                    height: 30,
                                    width: 30,
                                  )
                                : SvgPicture.asset(
                                    AssetsPath.instagram,
                                    height: 30,
                                    width: 30,
                                  ),
                          ),
                          // SvgPicture.asset(AssetsPath.instagram),
                        ],
                      ),
                    ),

                    ///image section
                    Positioned(
                      bottom: 0,
                      right: 0,

                      ///image container
                      child: Container(
                        height: 510,
                        width: 500,
                        decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                            image: AssetImage(AssetsPath.rakibImage),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),

                    ///bottom center android ios web desktop section
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 60, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: Colors.white.withOpacity(0.2)),
                              ),
                              child: Wrap(
                                alignment: WrapAlignment.spaceAround,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  Column(
                                    children: [
                                      Image.asset(
                                        AssetsPath.android,
                                        height: 30,
                                        width: 30,
                                      ),
                                      Text(
                                        'Android',
                                        style: TextStyle(
                                          fontSize: 3.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Image.asset(
                                        AssetsPath.apple,
                                        height: 32,
                                        width: 32,
                                      ),
                                      Text(
                                        'iOS',
                                        style: TextStyle(
                                          fontSize: 3.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Image.asset(
                                        AssetsPath.web,
                                        height: 30,
                                        width: 30,
                                      ),
                                      Text(
                                        'Website',
                                        style: TextStyle(
                                          fontSize: 3.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 30),
                                  Column(
                                    children: [
                                      Image.asset(
                                        AssetsPath.desktop,
                                        height: 35,
                                        width: 35,
                                      ),
                                      Text(
                                        'Desktop',
                                        style: TextStyle(
                                          fontSize: 3.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                /*
                child: Column(
                  children: [
                    SizedBox(height: 200),
                    Row(
                      children: [
                        ///texts
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: Lottie.asset(
                                AssetsPath.helloLottie,
                              ),
                            ),
                            Text(
                              'Hi there, I am',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Md. Rakibur Rahman',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Senior Flutter Developer',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Android | IOS | Desktop ',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 4.sp,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                CustomButton(
                                  btnColor: AppColor.deepNavy,
                                  borderColor: AppColor.tealAccent,
                                  hoverBorderColor: AppColor.crimsonAccent,
                                  btnText: 'Hire Me',
                                  onTap: () {},
                                  borderRadius: 16,
                                ),
                                SizedBox(width: 10),
                                CustomButton(
                                  btnColor: AppColor.deepPurple,
                                  borderColor: AppColor.royalBlueAccent,
                                  hoverBorderColor: AppColor.magentaAccent,
                                  btnText: 'Download Resume',
                                  onTap: () {},
                                  borderRadius: 16,
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                          ],
                        ),

                        const Spacer(),

                        ///image container
                        Container(
                          height: 410,
                          width: 400,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(AssetsPath.rakibImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),

                    ///image bellow container
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          height: 100,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppColor.primary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.2)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(AssetsPath.linkedinColor),
                              SvgPicture.asset(AssetsPath.facebookColor),
                              SvgPicture.asset(AssetsPath.githubColor),
                              SvgPicture.asset(AssetsPath.twitterColor),
                              SvgPicture.asset(AssetsPath.youtubeColor),
                              SvgPicture.asset(AssetsPath.instagramColor),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                */
              ),
            ),
            Container(
              height: 500,
              color: AppColor.primary,
              child: Center(
                child: Text('data'),
              ),
            ),
            Container(
              height: 900,
              color: AppColor.primary,
              child: Center(
                child: Text('data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
import 'dart:ui';

import 'package:flutter_portfolio/core/exports/app_exports.dart';
import 'package:flutter_portfolio/features/screens/home/controller/home_screen_controller.dart';
import 'package:flutter_portfolio/features/widgets/custom_button.dart';
import 'package:flutter_portfolio/utils/assets_path.dart';
import 'package:flutter_portfolio/utils/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> menuItems = [
    'Home',
    'Skills',
    'Projects',
    'Tools',
    'Android',
    'iOS',
    'About Me'
  ];

  // @override
  // void initState() {
  //   Get.find<HomeScreenController>();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90), // Height of the AppBar
        child: Padding(
          padding: EdgeInsets.only(
              top: 20.0, left: 100.r, right: 100.r), // Space from top
          child: GetBuilder<HomeScreenController>(builder: (controller) {
            return controller.enableBackdrop
                ? ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.15),
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.2)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 13),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'RR.',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(
                                        fontSize: 4.sp,
                                        fontWeight: FontWeight.w300),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'Home',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Skills',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Projects',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Android',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'IOS',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'Tools',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  SizedBox(width: 10.w),
                                  Text(
                                    'About Me',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 4.sp,
                                            fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'RR.',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontSize: 4.sp, fontWeight: FontWeight.w300),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Home',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Skills',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Projects',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Android',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'IOS',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'Tools',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              'About Me',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      fontSize: 4.sp,
                                      fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
          }),
        ),
      ),
      // backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        controller: Get.find<HomeScreenController>().scrollController,
        child: Column(
          children: [
            Container(
              height: Constants.screenHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AssetsPath.landingBg), fit: BoxFit.cover),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 120),
                child: Column(
                  children: [
                    SizedBox(height: 200),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 90,
                              width: 90,
                              child: Lottie.asset(
                                AssetsPath.helloLottie,
                              ),
                            ),
                            Text(
                              'Hi there, I am',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'Md. Rakibur Rahman',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Senior Flutter Developer',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 5.sp,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Android | IOS | Desktop ',
                              style: TextStyle(
                                  color: AppColor.white,
                                  fontSize: 4.sp,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 20),
                            Row(
                              children: [
                                CustomButton(
                                  btnColor: AppColor.deepNavy,
                                  borderColor: AppColor.tealAccent,
                                  hoverBorderColor: AppColor.crimsonAccent,
                                  btnText: 'Hire Me',
                                  onTap: () {},
                                  borderRadius: 16,
                                ),
                                SizedBox(width: 10),
                                CustomButton(
                                  btnColor: AppColor.deepPurple,
                                  borderColor: AppColor.royalBlueAccent,
                                  hoverBorderColor: AppColor.magentaAccent,
                                  btnText: 'Download Resume',
                                  onTap: () {},
                                  borderRadius: 16,
                                ),
                              ],
                            ),
                            SizedBox(height: 50),
                          ],
                        ),

                        const Spacer(),

                        ///image container
                        Container(
                          height: 410,
                          width: 400,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(16),
                            image: DecorationImage(
                              image: AssetImage(AssetsPath.rakibImage),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),

                    ///image bellow container
                    ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                          height: 100,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                            color: AppColor.primary.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Colors.white.withOpacity(0.2)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SvgPicture.asset(AssetsPath.linkedinColor),
                              SvgPicture.asset(AssetsPath.facebookColor),
                              SvgPicture.asset(AssetsPath.githubColor),
                              SvgPicture.asset(AssetsPath.twitterColor),
                              SvgPicture.asset(AssetsPath.youtubeColor),
                              SvgPicture.asset(AssetsPath.instagramColor),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              color: AppColor.primary,
              child: Center(
                child: Text('data'),
              ),
            ),
            Container(
              height: 900,
              color: AppColor.primary,
              child: Center(
                child: Text('data'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

*/
