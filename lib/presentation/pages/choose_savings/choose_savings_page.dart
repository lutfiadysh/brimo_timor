import 'package:brimo_timor/core/theme/main_color.dart';
import 'package:brimo_timor/core/theme/main_fonts.dart';
import 'package:brimo_timor/data/entitiets/britama_requirements_models.dart';
import 'package:brimo_timor/presentation/widgets/choose_savings/britama_savings_type_card.dart';
import 'package:brimo_timor/presentation/widgets/choose_savings/simpedes_savings_type_card.dart';
import 'package:flutter/material.dart';

class ChooseSavingPage extends StatefulWidget {
  const ChooseSavingPage({super.key});

  @override
  State<ChooseSavingPage> createState() => _ChooseSavingPageState();
}

class _ChooseSavingPageState extends State<ChooseSavingPage> {
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  void initState() {
    setState(() {
      pageController = PageController(initialPage: pageIndex);
    });
    super.initState();
  }

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
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50, left: 16, right: 16),
            child: Column(
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
                      "Tabungan",
                      style: MainFonts.montserrat.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      width: 40,
                    )
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.85,
                  child: PageView(
                    onPageChanged: (val) {
                      setState(() {
                        pageIndex = val;
                      });
                    },
                    controller: pageController,
                    children: const [
                      BritamaSavingsTypeCard(),
                      SimpedesSavingsTypeCard(),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 5,
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
                  height: 32,
                ),
                ElevatedButton(
                  onPressed: () {},
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
                    "Pilih Tabungan",
                    style: MainFonts.montserrat.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
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
