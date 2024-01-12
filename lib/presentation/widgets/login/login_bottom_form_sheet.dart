import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/home_page/home_page.dart';
import 'package:flutter/material.dart';

class LoginBottomFormSheet {
  const LoginBottomFormSheet._();

  static void showLoginBottomFormSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        builder: (context) {
          return StatefulBuilder(builder: (context, state) {
            return Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 20.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Batalkan",
                          style: MainFonts.montserrat.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: MainColor.primaryColor,
                          ),
                        ),
                      ),
                      Text(
                        "Login",
                        style: MainFonts.montserrat.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      suffixIconConstraints:
                          BoxConstraints(maxHeight: double.infinity),
                      suffixIcon: Container(
                        margin: const EdgeInsets.only(
                          right: 15,
                        ),
                        child: Text(
                          'Ganti Akun',
                          style: MainFonts.montserrat.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: MainColor.primaryColor,
                          ),
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        maxWidth: 24,
                        maxHeight: 24,
                      ),
                      prefixIcon: Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Image.asset("assets/icon/account.png")),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: MainColor.neutral200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: MainColor.neutral200),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      suffixIconConstraints:
                          const BoxConstraints(maxHeight: double.infinity),
                      suffixIcon: Container(
                        margin: const EdgeInsets.only(right: 15),
                        child: Image.asset(
                          "assets/icon/eye-slash.png",
                          width: 24,
                          height: 24,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        maxWidth: 24,
                        maxHeight: 24,
                      ),
                      prefixIcon: Container(
                          margin: const EdgeInsets.only(left: 5),
                          child: Image.asset("assets/icon/lock.png")),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: MainColor.neutral200),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(color: MainColor.neutral200),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width - 32, 44),
                      backgroundColor: MainColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: Text(
                    "Login",
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Lupa Username/Password?",
                  style: MainFonts.montserrat.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: MainColor.primaryColor,
                  ),
                ),
              ],
            );
          });
        });
  }
}
