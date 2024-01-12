class HomeMenuModels {
  final String title;
  final String image;

  const HomeMenuModels({required this.title, required this.image});

  static List<HomeMenuModels> fetchListHomeMenu() {
    return [
      const HomeMenuModels(
        title: 'Tarik Tunai',
        image: "assets/icon/withdrawl.png",
      ),
      const HomeMenuModels(
        title: 'Transfer',
        image: "assets/icon/transfer.png",
      ),
      const HomeMenuModels(
        title: 'Pulsa/Data',
        image: "assets/icon/topup.png",
      ),
      const HomeMenuModels(
        title: 'Listrik',
        image: "assets/icon/topup.png",
      ),
      const HomeMenuModels(
        title: 'BRIZZI',
        image: "assets/icon/card-menu.png",
      ),
      const HomeMenuModels(
        title: 'Dompet Digital',
        image: "assets/icon/transfer.png",
      ),
      const HomeMenuModels(
        title: 'Voucher Game',
        image: "assets/icon/topup.png",
      ),
      const HomeMenuModels(
        title: 'Voucher Streaming',
        image: "assets/icon/topup.png",
      ),
      const HomeMenuModels(
        title: 'Pinjaman',
        image: "assets/icon/money-menu.png",
      ),
    ];
  }
}
