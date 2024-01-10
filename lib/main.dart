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

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Eco Life',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondScreen()),
                  );
                },
                child: Image.network(
                  'https://via.placeholder.com/206x156',
                  width: 206.13,
                  height: 155.73,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
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

class SecondScreen extends StatelessWidget {
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
