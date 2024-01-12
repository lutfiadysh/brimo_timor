class OpenAccountStepModels {
  final String title;
  final String description;
  final String image;
  final bool useUnderline;

  const OpenAccountStepModels({
    required this.title,
    required this.description,
    required this.image,
    required this.useUnderline,
  });

  static List<OpenAccountStepModels> fetchListOpenAccountStep() {
    return [
      const OpenAccountStepModels(
          title: 'KTP',
          description: 'Siapkan KTP & pastikan KTP dalam kondisi baik',
          image: 'assets/icon/card.png',
          useUnderline: true),
      const OpenAccountStepModels(
          title: 'Nomor Handphone',
          description: 'Siapkan nomor handphone yang aktif',
          image: 'assets/icon/phone.png',
          useUnderline: true),
      const OpenAccountStepModels(
          title: 'Email',
          description: 'Siapkan email yang aktif',
          image: 'assets/icon/mail.png',
          useUnderline: true),
      const OpenAccountStepModels(
          title: 'Koneksi Internet',
          description:
              'Cek koneksi internet kamu agar proses pembukaan rekening berjalan lancar',
          image: 'assets/icon/wifi.png',
          useUnderline: false),
    ];
  }
}
