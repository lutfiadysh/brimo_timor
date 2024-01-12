import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/data/entitiets/britama_requirements_models.dart';
import 'package:flutter/material.dart';

class SimpedesSavingsTypeCard extends StatelessWidget {
  const SimpedesSavingsTypeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24),
      width: MediaQuery.of(context).size.width - 32,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 4),
            color: MainColor.shadow.withOpacity(.08),
            blurRadius: 18,
          )
        ],
      ),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 14),
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: MainColor.neutral100,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Tabungan Pilihanmu",
                      style: MainFonts.montserrat.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: MainColor.neutral500,
                      ),
                    ),
                    Image.asset(
                      "assets/logo/simpedes.png",
                      width: MediaQuery.of(context).size.width / 4,
                      height: 45,
                    ),
                  ],
                ),
                Image.asset(
                  "assets/choose-savings/woman-phone-vector.png",
                  width: 73,
                  height: 73,
                ),
              ],
            ),
          ),
          Text(
            "Transaksi mudah dengan fasilitas e-banking yang memungkinkan kamu bertransaksi kapan pun dimana pun*",
            textAlign: TextAlign.center,
            style: MainFonts.montserrat.copyWith(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: MainColor.neutral500,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Column(
            children:
                BritamaRequirementsModels.fetchBritamaRequirements().map((e) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            e.image,
                            width: 26,
                            height: 26,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            e.title,
                            style: MainFonts.montserrat.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: MainColor.neutral500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        e.price,
                        style: MainFonts.montserrat.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: MainColor.neutral900,
                        ),
                      ),
                    ],
                  ),
                  if (e.isShowUnderline)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      width: MediaQuery.of(context).size.width,
                      height: .8,
                      color: MainColor.neutral100,
                    ),
                ],
              );
            }).toList(),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 14),
            child: Text(
              "*Baca syarat dan ketentuan di Detail Tabungan",
              style: MainFonts.montserrat.copyWith(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: MainColor.neutral500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: MediaQuery.of(context).size.width / 2.2,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: MainColor.extraLightBlue,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text(
                  "Detail Tabungan",
                  style: MainFonts.montserrat.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: MainColor.primaryColor,
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: MainColor.primaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
