import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/presentation/pages/open_account/open_account_introduction_page.dart';
import 'package:brimo_timor/presentation/widgets/onboarding/bottom_confirmation_sheet.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  PageController pageController = PageController();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 6,
            decoration: BoxDecoration(
              color: MainColor.primaryColor,
            ),
          ),
          Image.asset(
            pageIndex == 0
                ? 'assets/onboarding/onboarding_1.png'
                : 'assets/onboarding/onboarding_2.png',
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  height: 10,
                  width: pageIndex == 0
                      ? MediaQuery.of(context).size.width / 10
                      : 10,
                  decoration: BoxDecoration(
                    color: pageIndex == 0
                        ? MainColor.primaryColor
                        : MainColor.primaryColor.withOpacity(.1),
                    borderRadius: pageIndex == 0
                        ? BorderRadius.circular(5)
                        : BorderRadius.circular(100),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: AnimatedContainer(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  duration: const Duration(seconds: 1),
                  height: 10,
                  width: pageIndex == 1
                      ? MediaQuery.of(context).size.width / 10
                      : 10,
                  decoration: BoxDecoration(
                    color: pageIndex == 1
                        ? MainColor.primaryColor
                        : MainColor.primaryColor.withOpacity(.1),
                    borderRadius: pageIndex == 1
                        ? BorderRadius.circular(5)
                        : BorderRadius.circular(100),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),

          ///
          /// Onboard text
          ///
          Container(
            height: MediaQuery.of(context).size.height / 5,
            child: PageView(
              controller: pageController,
              onPageChanged: (val) {
                setState(() {
                  pageIndex = val;
                });
              },
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    children: [
                      Text(
                        "Selamat Datang di BRImo!",
                        style: MainFonts.montserrat.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: MainColor.darkenBlue,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Jadilan teman yang serba bisa! Mulai dari Top Up Dompet Digital, Beli Pulsa, semuanya bisa di BRImo!",
                        textAlign: TextAlign.center,
                        style: MainFonts.montserrat.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 21),
                  child: Column(
                    children: [
                      Text(
                        "Buka Renening Tanpa Ribet",
                        style: MainFonts.montserrat.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: MainColor.darkenBlue,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Buka Renening baru di BRImo hanya dalam hitungan menit langsung bisa bertransaksi",
                        textAlign: TextAlign.center,
                        style: MainFonts.montserrat.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ///
          /// End onboard text
          ///
          ///
          /// Button Onboarding
          ///
          ElevatedButton(
            onPressed: () {
              BottomConfirmationSheet.showBottomConfirmationSheet(context);
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width - 32, 44),
              backgroundColor: MainColor.primaryColor,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              "Punya Akun BRImo",
              style: MainFonts.montserrat.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const OpenAccountIntroductionPage()));
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(MediaQuery.of(context).size.width - 32, 44),
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: MainColor.primaryColor,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              "Belum Punya Akun BRImo",
              style: MainFonts.montserrat.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: MainColor.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
