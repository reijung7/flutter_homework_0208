import 'package:flutter/material.dart';

void main() => runApp(HomeWork());

class HomeWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      home: AppBarFAB(),
    );
  }
}

class AppBarFAB extends StatefulWidget {
  @override
  _AppBarFABState createState() => _AppBarFABState();
}

class _AppBarFABState extends State<AppBarFAB> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color(0xff2c3973),
          appBar: PreferredSize(
            preferredSize: Size(
              MediaQuery.of(context).size.width,
              200,
            ),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.purpleAccent,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 5),
                  Text('자진신고시 예상세액', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '￦ ',
                        style: TextStyle(fontSize: 25.0, color: Colors.white),
                      ),
                      Text(
                        '50,839',
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text('자진신고시 감면혜택 자세히 보기 >',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
          floatingActionButton: Padding(
            padding: const EdgeInsets.all(30.0),
            child: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.add,
                color: Colors.purple,
              ),
              onPressed: () {},
            ),
          ),
          body: ListScreen(),
        ),
      ],
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      children: <Widget>[
        SizedBox(height: 10.0),
        Text('(미화기준 총 구매 : \$900)', style: TextStyle(color: Colors.white)),
        SizedBox(height: 10.0),
        Container(
          height: 100,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color(0xff202740),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.mail,
                size: 45,
                color: Colors.white,
              ),
              SizedBox(width: 10.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '기타항목: ',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Text('\$ 300초과',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.red)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "초과분 한화: 363,139\n예상 세액: 72,627원",
                      style: TextStyle(
                        fontFamily: "Apple SD Gothic Neo",
                        fontSize: 13,
                        color: Color(0xffb7b4b4),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(' USD ', style: TextStyle(color: Colors.white)),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$ 600",
                        style: TextStyle(
                          fontFamily: "Apple SD Gothic Neo",
                          fontSize: 21,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "면세: \$ 300",
                        style: TextStyle(
                          fontFamily: "Apple SD Gothic Neo",
                          fontSize: 13,
                          color: Color(0xffb7b4b4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          height: 100,
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Color(0xff3c4dbb),
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.mail,
                size: 45,
                color: Colors.white,
              ),
              SizedBox(width: 10.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          '기타항목: ',
                          style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                        Text('',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.red)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "초과분 한화: 363,139\n면세가",
                      style: TextStyle(
                        fontFamily: "Apple SD Gothic Neo",
                        fontSize: 13,
                        color: Color(0xffb7b4b4),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(' USD ', style: TextStyle(color: Colors.white)),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "\$ 300",
                        style: TextStyle(
                          fontFamily: "Apple SD Gothic Neo",
                          fontSize: 21,
                          color: Color(0xffffffff),
                        ),
                      ),
                      Text(
                        "",
                        style: TextStyle(
                          fontFamily: "Apple SD Gothic Neo",
                          fontSize: 13,
                          color: Color(0xffb7b4b4),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
