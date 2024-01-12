import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/data/entitiets/login_fast_menu_models.dart';
import 'package:brimo_timor/presentation/widgets/login/login_bottom_form_sheet.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/open-account/background.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/logo/brimo-tl.png",
                  width: 52,
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 29, right: 29, top: 57, bottom: 26),
                  child: Text(
                    "Tingkatkan Transaksi, Banyak Hadiah Menarik",
                    textAlign: TextAlign.center,
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: MainColor.secondary,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/login/brifest.png",
                ),
                Container(
                  margin: const EdgeInsets.only(top: 34, bottom: 20),
                  child: Text(
                    "Fast Menu",
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: MainColor.primaryColor,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: LoginFastMenu.fetchLoginFastMenu().map((e) {
                      return Column(
                        children: [
                          Image.asset(
                            e.image,
                            width: 44,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            e.title,
                            style: MainFonts.montserrat.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: MainColor.neutral900,
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          LoginBottomFormSheet.showLoginBottomFormSheet(
                              context);
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize:
                              Size(MediaQuery.of(context).size.width / 1.5, 44),
                          backgroundColor: MainColor.primaryColor,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: MainFonts.montserrat.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   width: 14,
                      // ),
                      ElevatedButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const LoginPage()));
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(30, 44),
                          backgroundColor: MainColor.primaryColor,
                          shadowColor: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Image.asset(
                          "assets/icon/fingerprint.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
