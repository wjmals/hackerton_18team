import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eco Life',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Image.network(
                  'https://via.placeholder.com/206x156',
                  width: 180.50,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  // 처리할 로직 추가
                },
                child: Image.network(
                  'https://via.placeholder.com/206x156',
                  width: 180.50,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  // 처리할 로직 추가
                },
                child: Image.network(
                  'https://via.placeholder.com/206x156',
                  width: 180.50,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  // 처리할 로직 추가
                },
                child: Image.network(
                  'https://via.placeholder.com/206x156',
                  width: 180.50,
                  height: 180,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          // 추가적인 동작을 여기에 구현할 수 있습니다.
          if (_currentIndex == 0) {
            // Eco Food를 클릭하면 홈 화면으로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          } else if (_currentIndex == 1) {
            // Local Effect를 클릭하면 Third 페이지로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          }
        },
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Eco Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lens_blur),
            label: 'Local Effect',
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://via.placeholder.com/206x156',
            width: 206.13,
            height: 155.73,
            fit: BoxFit.fill,
          ),
          Container(
            width: 418.01,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 2,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: Color(0xFF575757),
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: const [
                Text(
                  '재료    ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'JeonjuCraft_Mj_OTF',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: '\n',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 20,
                        fontFamily: 'JeonjuCraft_Mj_OTF',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text:
                          '달걀 2개\n설탕 1컵\n버터 1/2컵 (녹인 상태)\n박력분 1/2컵\n코코아 가루 1/4컵\n소금 1/4작은술\n바닐라 익스트랙트 1작은술\n고구마 1컵 (삶아서 으깬 상태)\n',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 20,
                        fontFamily: 'JeonjuCraft_Mj_OTF',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: '\n',
                      style: TextStyle(
                        color: Color(0xFF707070),
                        fontSize: 20,
                        fontFamily: 'JeonjuCraft_Mj_OTF',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            width: 334.05,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
              ),
            ),
          ),
          Container(
            child: Column(
              children: const [
                Text(
                  '만드는 방법  ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'JeonjuCraft_Mj_OTF',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 316,
                  height: 600,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\n\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 20,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '1. 오븐을 180도로 예열하세요.\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '2. 큰 볼에 달걀과 설탕을 넣고 부드럽게 섞어주세요.\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '3. 녹인 버터를 달걀과 설탕에 추가하고 잘 섞어주세요.\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '4. 박력분, 코코아 가루, 소금을 체에 걸러서 추가하고 골고루 섞어주세요.\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '5. 바닐라 익스트랙트와 삶아 으깬 고구마를 넣고 잘 섞어주세요.\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' 6.준비한 형에 반죽을 부어주세요.\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text:
                              '7. 예열된 오븐에서 25-30분 동안 굽거나, 이불침대에서 투명한 종이가 나올 때까지 굽습니다.\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '8. 굽은 브라우니를 꺼내 식힌 후 잘라서 즐기세요!\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF707070),
                            fontSize: 18,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 334.05,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  strokeAlign: BorderSide.strokeAlignCenter,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          // 추가적인 동작을 여기에 구현할 수 있습니다.
          if (_currentIndex == 0) {
            // Eco Food를 클릭하면 홈 화면으로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          } else if (_currentIndex == 1) {
            // Local Effect를 클릭하면 Third 페이지로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          }
        },
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Eco Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lens_blur),
            label: 'Local Effect',
          ),
        ],
      ),
    );
  }
}

class ThirdScreen extends StatefulWidget {
  @override
  _ThirdScreenState createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 393,
              height: 839,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.949999988079071),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Positioned(
                        left: 156,
                        top: 41,
                        child: Text(
                          'Eco Life',
                          style: TextStyle(
                            color: Color(0xFF4D9260),
                            fontSize: 20,
                            fontFamily: 'JeonjuCraft_Mj_OTF',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 267.01,
                    top: 879.50,
                    child: SizedBox(
                      width: 70,
                      height: 22,
                      child: Opacity(
                        opacity: 0.85,
                        child: Text(
                          '14200.00',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 48.01,
                    top: 877.50,
                    child: SizedBox(
                      width: 72,
                      height: 23,
                      child: Opacity(
                        opacity: 0.85,
                        child: Text(
                          '3 Items',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 839,
                    child: Container(
                      width: 418.01,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Color(0xFF575757),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 57,
                    top: 861,
                    child: SizedBox(
                      width: 80,
                      child: Text(
                        'Eco Food',
                        style: TextStyle(
                          color: Color(0xFF7B7B7B),
                          fontSize: 17,
                          fontFamily: 'JeonjuCraft_Mj_OTF',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 260,
                    top: 861,
                    child: SizedBox(
                      width: 101,
                      child: Text(
                        'Local Effort',
                        style: TextStyle(
                          color: Color(0xFF4D9260),
                          fontSize: 17,
                          fontFamily: 'JeonjuCraft_Mj_OTF',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 106,
                    child: GestureDetector(
                      onTap: () {
                        // 클릭 시 동작을 추가할 수 있습니다.
                      },
                      child: Container(
                        width: 322,
                        height: 167,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/322x167"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 35,
                    top: 287,
                    child: GestureDetector(
                      onTap: () {
                        // 클릭 시 동작을 추가할 수 있습니다.
                      },
                      child: Container(
                        width: 322,
                        height: 200,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/322x200"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 37,
                    top: 526,
                    child: GestureDetector(
                      onTap: () {
                        // 클릭 시 동작을 추가할 수 있습니다.
                      },
                      child: Container(
                        width: 322,
                        height: 230,
                        decoration: ShapeDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                "https://via.placeholder.com/322x230"),
                            fit: BoxFit.fill,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 49,
                    top: 127,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Home()),
                        );
                      },
                      child: Text(
                        '지구를 \n살리는 \n푸드테크\n',
                        style: TextStyle(
                          color: Color(0xFF125023),
                          fontSize: 30,
                          fontFamily: 'JeonjuCraft_Mj_OTF',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 315,
                    child: GestureDetector(
                      onTap: () {
                        // 클릭 시 동작을 추가할 수 있습니다.
                      },
                      child: Text(
                        '기후변화\n대응과\n푸드 \n마일리지          \n',
                        style: TextStyle(
                          color: Color(0xFF125023),
                          fontSize: 30,
                          fontFamily: 'JeonjuCraft_Mj_OTF',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 51,
                    top: 511,
                    child: GestureDetector(
                      onTap: () {
                        // 클릭 시 동작을 추가할 수 있습니다.
                      },
                      child: Text(
                        '\n사람, 환경, \n공동체를 \n생각하는\n 먹거리\n\n ',
                        style: TextStyle(
                          color: Color(0xFF125023),
                          fontSize: 30,
                          fontFamily: 'JeonjuCraft_Mj_OTF',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });

          // 추가적인 동작을 여기에 구현할 수 있습니다.
          if (_currentIndex == 0) {
            // Eco Food를 클릭하면 홈 화면으로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          } else if (_currentIndex == 1) {
            // Local Effect를 클릭하면 Third 페이지로 이동
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          }
        },
        currentIndex: _currentIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Eco Food',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lens_blur),
            label: 'Local Effect',
          ),
        ],
      ),
    );
  }
}
