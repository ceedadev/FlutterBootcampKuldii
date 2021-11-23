import 'package:flutter/material.dart';

Color kWhiteColor = const Color(0xffFFFFFF);
Color kBlueColor = const Color(0xff004C8B);
Color kRedColor = const Color(0xffDE0046);
Color kOrangeColor = const Color(0xffF7A34B);
Color kGreyColor = const Color(0xffC4C4C4);
Color kBlackColor = const Color(0xFF000000);

TextStyle blackTextStyle = TextStyle(color: kBlackColor);

class TugasMinggu2 extends StatelessWidget {
  const TugasMinggu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kWhiteColor,
        title: Row(
          children: [
            Text(
              'username',
              style: blackTextStyle,
            ),
            IconButton(
              onPressed: () {},
              icon: const ImageIcon(
                AssetImage('assets/icon/dropdown.png'),
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_box_outlined),
            color: kBlackColor,
          ),
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage('assets/icon/burger.png'),
              color: Colors.black,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: kWhiteColor,
        unselectedItemColor: kBlackColor,
        selectedItemColor: kBlueColor,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: ImageIcon(
              AssetImage('assets/icon/home.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: ImageIcon(
              AssetImage('assets/icon/search.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Reels',
            icon: ImageIcon(
              AssetImage('assets/icon/reels.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Shop',
            icon: ImageIcon(
              AssetImage('assets/icon/shop.png'),
            ),
          ),
          BottomNavigationBarItem(
            label: 'User',
            icon: Image.asset('assets/icon/avatar.png'),
          ),
        ],
      ),
    );
  }
}
