class LoginFastMenu {
  final String title;
  final String image;

  const LoginFastMenu({required this.title, required this.image});

  static List<LoginFastMenu> fetchLoginFastMenu() {
    return [
      const LoginFastMenu(
        title: 'Tarik Tunai',
        image: "assets/icon/withdrawl.png",
      ),
      const LoginFastMenu(
        title: 'Transfer',
        image: "assets/icon/transfer.png",
      ),
      const LoginFastMenu(
        title: 'Pulsa/Data',
        image: "assets/icon/topup.png",
      ),
      const LoginFastMenu(
        title: 'Listrik',
        image: "assets/icon/electric.png",
      ),
    ];
  }
}
