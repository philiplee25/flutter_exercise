import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Image.asset('assets/images/youtube_logo.png'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.connected_tv)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: ClipOval(
              child: Image.asset(
                'assets/images/zebra.png',
                height: 30,
                width: 30,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Container(
              height: 32.0,
              width: double.infinity,
              padding: EdgeInsets.only(right: 8.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 56,
                    margin: EdgeInsets.symmetric(horizontal: 8.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Color(0xff272727),
                    ),
                    child: const Icon(Icons.explore_outlined,
                        color: Colors.white, size: 24),
                  ),
                  buildContainer(context, '전체'),
                  buildContainer(context, '게임'),
                  buildContainer(context, '뉴스'),
                  buildContainer(context, '실시간'),
                  buildContainer(context, '믹스'),
                  buildContainer(context, '액션'),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: videoCard(context)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
              label: '홈'),
          BottomNavigationBarItem(
              icon: Image.asset('assets/images/icons/shorts_icon.png'),
              label: 'Shorts'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.white,
                size: 32.0,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.subscriptions_outlined,
                color: Colors.white,
              ),
              label: '구독'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.video_library_outlined,
                color: Colors.white,
              ),
              label: '보관함'),
        ],
      ),
    );
  }
}

Widget videoCard(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Image.asset('assets/images/video_thumbnail.jpg'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/zebra.png',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '[playlist] 늦은 저녁, 혼자 즐기는 열정 Astor Piazzolla',
                          style: TextStyle(color: Colors.white),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                'Uparupa',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '조회수 72만회',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.0),
                              child: Text(
                                '9시간 전',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 11),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}

Widget buildContainer(BuildContext context, String string) {
  return Container(
    width: 56,
    margin: EdgeInsets.symmetric(horizontal: 4.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Color(0xff272727),
    ),
    child: Center(
        child: Text(
      '$string',
      style: TextStyle(color: Colors.white),
    )),
  );
}
