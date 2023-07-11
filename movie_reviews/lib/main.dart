import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // 홈페이지 보여주기
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 음식 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "탑건: 매버릭",
        "imgUrl": "https://i.ibb.co/sR32PN3/topgun.jpg",
      },
      {
        "category": "마녀2",
        "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg",
      },
      {
        "category": "범죄도시2",
        "imgUrl": "https://i.ibb.co/2czdVdm/The-Outlaws.jpg",
      },
      {
        "category": "헤어질 결심",
        "imgUrl": "https://i.ibb.co/gM394CV/Decision-to-Leave.jpg",
      },
      {
        "category": "브로커",
        "imgUrl": "https://i.ibb.co/MSy1XNB/broker.jpg",
      },
      {
        "category": "문폴",
        "imgUrl": "https://i.ibb.co/4JYHHtc/Moonfall.jpg",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
        appBar: AppBar(
            centerTitle: false,
            title: Text(
              "Movie Reviews",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0.0,
            actions: [
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.black,
                ),
                onPressed: null,
              ),
            ]),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1.0,
                    )),
                    hintText: "영화 제목을 검색해주세요.",
                    suffixIcon: Icon(
                      Icons.search,
                    )),
              ),
            ),
            Divider(thickness: 1, height: 1),
            Expanded(
              child: ListView.builder(
                itemBuilder: (conext, index) {
                  return Card(
                      child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        dataList[index]['imgUrl'],
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.fitWidth,
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      Text(
                        dataList[index]['category'],
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ));
                },
                itemCount: dataList.length,
              ),
            ),
          ],
        ));
  }
}
