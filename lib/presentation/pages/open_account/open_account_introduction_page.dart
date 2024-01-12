import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/data/entitiets/open_account_step_models.dart';
import 'package:brimo_timor/presentation/pages/choose_savings/choose_savings_page.dart';
import 'package:flutter/material.dart';

class OpenAccountIntroductionPage extends StatefulWidget {
  const OpenAccountIntroductionPage({super.key});

  @override
  State<OpenAccountIntroductionPage> createState() =>
      _OpenAccountIntroductionPageState();
}

class _OpenAccountIntroductionPageState
    extends State<OpenAccountIntroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.backgroundColor,
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
            margin: const EdgeInsets.only(top: 50, left: 16, right: 16),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Pembukaan Rekening",
                      style: MainFonts.montserrat.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 25, bottom: 20),
                  child: Image.asset(
                    "assets/open-account/intro_vector.png",
                    width: MediaQuery.of(context).size.width / 2.3,
                  ),
                ),
                Text(
                  "Nikmati kemudahan Buka Rekening BRI hanya dengan genggamanmu",
                  textAlign: TextAlign.center,
                  style: MainFonts.montserrat.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  width: MediaQuery.of(context).size.width - 32,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 4),
                        blurRadius: 18,
                        color: MainColor.shadow.withOpacity(.08),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Persiapan Membuka Tabungan",
                        style: MainFonts.montserrat.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: MainColor.neutral900,
                        ),
                      ),
                      Column(
                        children:
                            OpenAccountStepModels.fetchListOpenAccountStep()
                                .map((e) {
                          return Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 10),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      e.image,
                                      width: 26,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          e.title,
                                          style: MainFonts.montserrat.copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: MainColor.neutral900,
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              1.4,
                                          child: Text(
                                            e.description,
                                            style:
                                                MainFonts.montserrat.copyWith(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: MainColor.neutral500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              if (e.useUnderline)
                                Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 10),
                                  width: MediaQuery.of(context).size.width,
                                  height: .8,
                                  color: MainColor.neutral100,
                                ),
                            ],
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 8,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Container(
          margin:
              const EdgeInsets.only(left: 16, right: 16, bottom: 49, top: 12),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ChooseSavingPage()));
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
              "Buka Rekening Sekarang",
              style: MainFonts.montserrat.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
