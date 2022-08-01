import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 18.0),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          'My Tasks',
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                            color: Color(0xff897BEE),
                          ),
                        ),
                      ),

                      Container(
                        height: 60,
                        child: Expanded(
                          child: Image.asset(
                            'assets/images/personicon.png',
                              fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Positioned(
                right: width * 0.1,
                bottom: 3.0,
                child: Container(
                  width: width * 0.82,
                  height: height * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xffEDEDF4),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                        alignment: Alignment.centerLeft,
                        width: width * 0.52,
                        child: Icon(
                          Icons.home,
                          color: Color(0xffC27197),
                          size: 50.0,
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerRight,
                        width: width * 0.16,
                        child: Icon(
                          Icons.search,
                          color: Color(0xffD1D1D1),
                          size: 50.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                height: height * 0.11,
                width: width * 0.21,
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffC27197),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 75.0,
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
