// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

Color kWhiteColor = const Color(0xffFFFFFF);
Color kBlueColor = const Color(0xff004C8B);
Color kRedColor = const Color(0xffDE0046);
Color kOrangeColor = const Color(0xffF7A34B);
Color kGreyColor = const Color(0xffC4C4C4);
Color kBlackColor = const Color(0xFF000000);

TextStyle blackTextStyle = TextStyle(color: kBlackColor);
TextStyle blueTextStyle = TextStyle(color: kBlueColor);

class TugasMinggu2 extends StatelessWidget {
  const TugasMinggu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: appBarMethod(),
      bottomNavigationBar: bottomNavBarMethod(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 48,
                    ),
                    _profileCount(count: '99', title: 'Posts'),
                    _profileCount(count: '168', title: 'Followers'),
                    _profileCount(count: '199', title: 'Following'),
                  ],
                ),
                // username
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    'username',
                    style: blackTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: RichText(
                    textAlign: TextAlign.justify,
                    text: TextSpan(children: [
                      const TextSpan(
                          text:
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy '),
                      TextSpan(text: '#hashtag', style: blueTextStyle)
                    ], style: blackTextStyle),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  child: Text(
                    'Link goes here',
                    textAlign: TextAlign.justify,
                    style: blueTextStyle,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 2),
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      'Edit Profile',
                      style: blackTextStyle,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _storiesHighlights(title: 'Story 1', imgUrl: '', add: true),
                    _storiesHighlights(title: 'Story 2', imgUrl: ''),
                    _storiesHighlights(title: 'Story 3', imgUrl: ''),
                    _storiesHighlights(title: 'Story 4', imgUrl: ''),
                    _storiesHighlights(title: 'Add', imgUrl: ''),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage('assets/icon/vector.png'),
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: ImageIcon(
                        AssetImage('assets/icon/union.png'),
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          //TODO : GridView
        ],
      ),
    );
  }

  Column _storiesHighlights({
    required String title,
    required String imgUrl,
    bool add = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CircleAvatar(
          radius: 24,
          backgroundColor: Colors.blue,
          // TODO : bugfix
          // backgroundImage: NetworkImage(imgUrl),
          // child: add == true ? Icon(Icons.add) : null,
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 12),
        )
      ],
    );
  }

  Column _profileCount({
    required String count,
    required String title,
  }) {
    return Column(
      children: [
        Text(
          count,
          style: blackTextStyle.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        Text(
          title,
          style: blackTextStyle.copyWith(fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ],
    );
  }

  BottomNavigationBar bottomNavBarMethod() {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: kWhiteColor,
      unselectedItemColor: kBlackColor,
      selectedItemColor: kBlueColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      items: [
        const BottomNavigationBarItem(
          label: 'Home',
          icon: ImageIcon(
            AssetImage('assets/icon/home.png'),
          ),
        ),
        const BottomNavigationBarItem(
          label: 'Search',
          icon: ImageIcon(
            AssetImage('assets/icon/search.png'),
          ),
        ),
        const BottomNavigationBarItem(
          label: 'Reels',
          icon: ImageIcon(
            AssetImage('assets/icon/reels.png'),
          ),
        ),
        const BottomNavigationBarItem(
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
    );
  }

  AppBar appBarMethod() {
    return AppBar(
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
    );
  }
}
