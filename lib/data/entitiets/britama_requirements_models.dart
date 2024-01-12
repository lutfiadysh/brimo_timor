class BritamaRequirementsModels {
  final String title;
  final String price;
  final String image;
  final bool isShowUnderline;
  const BritamaRequirementsModels({
    required this.title,
    required this.price,
    required this.image,
    required this.isShowUnderline,
  });

  static List<BritamaRequirementsModels> fetchBritamaRequirements() {
    return [
      const BritamaRequirementsModels(
          title: 'Saldo Minimum',
          price: '\$20',
          image: 'assets/icon/money.png',
          isShowUnderline: true),
      const BritamaRequirementsModels(
          title: 'Biaya Administrasi',
          price: '\$20',
          image: 'assets/icon/service.png',
          isShowUnderline: true),
      const BritamaRequirementsModels(
          title: 'Gratis Asuransi Diri',
          price: '\$20',
          image: 'assets/icon/insurance.png',
          isShowUnderline: false),
    ];
  }
}
