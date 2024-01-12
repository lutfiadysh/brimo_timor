import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/data/entitiets/home_menu_models.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.backgroundColor,
      appBar: AppBar(
        shadowColor: Colors.transparent,
        backgroundColor: MainColor.primaryColor,
        leading: Container(
          margin: const EdgeInsets.all(15),
          width: 18,
          height: 18,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.white,
            ),
            color: MainColor.primaryGreen,
          ),
        ),
        title: Image.asset(
          "assets/logo/brimo-tl.png",
          width: 52,
        ),
        centerTitle: true,
        actions: [
          Image.asset(
            "assets/icon/notification.png",
            width: 26,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.only(left: 6),
            margin: const EdgeInsets.only(left: 14, bottom: 10, top: 10),
            decoration: BoxDecoration(
              color: MainColor.darkenBlue,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  "assets/icon/service-light.png",
                  width: 24,
                  height: 24,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 4),
                  width: MediaQuery.of(context).size.width / 8,
                  child: Text(
                    "Pusat Bantuan",
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 8,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/open-account/background.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 14),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Saldo Rekening Utama",
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "\$",
                          style: MainFonts.montserrat.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 9),
                          width: MediaQuery.of(context).size.width / 4,
                          height: 20,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 3),
                                  width: 10,
                                  height: 10,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                  ),
                                );
                              }),
                        ),
                        Image.asset(
                          "assets/icon/eye-slash-light.png",
                          width: 20,
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize:
                          Size(MediaQuery.of(context).size.width / 4, 44),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                        side: const BorderSide(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    child: Text(
                      "Rekening Lain",
                      style: MainFonts.montserrat.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 28),
                    width: MediaQuery.of(context).size.width - 32,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          color: MainColor.shadow.withOpacity(.08),
                          blurRadius: 18,
                        )
                      ],
                    ),
                    child: Wrap(
                        spacing: 5,
                        runSpacing: 10,
                        alignment: WrapAlignment.spaceBetween,
                        children: HomeMenuModels.fetchListHomeMenu().map((e) {
                          return SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Column(
                              children: [
                                Image.asset(
                                  e.image,
                                  width: 44,
                                  height: 44,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  e.title,
                                  textAlign: TextAlign.center,
                                  style: MainFonts.montserrat.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: MainColor.neutral900,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList()),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Dompet Digital",
                          style: MainFonts.montserrat.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MainColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                color: MainColor.shadow.withOpacity(.08),
                                blurRadius: 12,
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/logo/yellow.png",
                                width: 44,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "\$0.98",
                                    style: MainFonts.montserrat.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "67071234567",
                                    style: MainFonts.montserrat.copyWith(
                                      fontSize: 15,
                                      color: MainColor.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                color: MainColor.shadow.withOpacity(.08),
                                blurRadius: 12,
                              )
                            ],
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                "assets/logo/tpay.png",
                                width: 44,
                              ),
                              const SizedBox(
                                width: 12,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tpay",
                                    style: MainFonts.montserrat.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "Hubungkan",
                                    style: MainFonts.montserrat.copyWith(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: MainColor.primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Spesial Untukmu",
                          style: MainFonts.montserrat.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: MainColor.primaryColor,
                          ),
                        ),
                        Text(
                          "Lihat lebih",
                          style: MainFonts.montserrat.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: MainColor.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                blurRadius: 14,
                                color: MainColor.shadow.withOpacity(.08),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 6,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/promo/promo1.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Text(
                                  "BRIMO - Promo HUT BRI ke-128",
                                  style: MainFonts.montserrat.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: MainColor.neutral900,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Text(
                                  "Hingga 31 Januari 2024",
                                  style: MainFonts.montserrat.copyWith(
                                    fontSize: 10,
                                    color: MainColor.neutral500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 4),
                                blurRadius: 14,
                                color: MainColor.shadow.withOpacity(.08),
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 1.2,
                                height: MediaQuery.of(context).size.height / 6,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/promo/promo1.png",
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    topLeft: Radius.circular(8),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                child: Text(
                                  "BRIMO - Kejutan Spesial dari BANK BRI",
                                  style: MainFonts.montserrat.copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: MainColor.neutral900,
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                child: Text(
                                  "Hingga 31 Januari 2024",
                                  style: MainFonts.montserrat.copyWith(
                                    fontSize: 10,
                                    color: MainColor.neutral500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        height: 84,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/home/menu/home-active.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  "Beranda",
                  style: MainFonts.montserrat.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: MainColor.darkenBlue,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/home/menu/license-inactive.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  "Mutasi",
                  style: MainFonts.montserrat.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: MainColor.neutral300,
                  ),
                ),
              ],
            ),
            const SizedBox(),
            const SizedBox(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/home/menu/mail-inactive.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  "Aktivitas",
                  style: MainFonts.montserrat.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: MainColor.neutral300,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/home/menu/account-inactive.png',
                  width: 24,
                  height: 24,
                ),
                Text(
                  "Akun",
                  style: MainFonts.montserrat.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: MainColor.neutral300,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 0,
        child: Image.asset(
          "assets/logo/QR.png",
          width: 60,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
