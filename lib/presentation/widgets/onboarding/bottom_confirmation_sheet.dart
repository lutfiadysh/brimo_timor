import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/presentation/pages/login/login_page.dart';
import 'package:brimo_timor/presentation/pages/open_account/open_account_introduction_page.dart';
import 'package:flutter/material.dart';

class BottomConfirmationSheet {
  const BottomConfirmationSheet._();

  static void showBottomConfirmationSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.white,
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height / 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        builder: (context) {
          return Container(
            padding: const EdgeInsets.only(top: 6),
            color: Colors.white,
            // height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 30,
                  height: 8,
                  decoration: BoxDecoration(
                    color: MainColor.neutral100,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 21, right: 21, top: 16, bottom: 14),
                  child: Text(
                    "Apakah Kamu memiliki Rekening BRI yang sedang Aktif?",
                    textAlign: TextAlign.center,
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: MainColor.neutral900,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 13.5),
                  child: Text(
                    "Pilih ‘Ya’ jika kamu memiliki rekening BRI aktif yang didaftarkan atas namamu yang tertera di KTP",
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: MainColor.neutral500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                ///
                /// Button Confiration
                ///
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 32, 44),
                    backgroundColor: MainColor.primaryColor,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Ya, Saya Punya Rekening BRI",
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
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 32, 44),
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
                    "Belum Punya",
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
        });
  }
}
