import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5).withOpacity(0.9),
        appBar: AppBar(
          title: const Text('Book Store',
              style: TextStyle(color: Color(0xFFf8f9fa))),
          backgroundColor: const Color(0xFF9381ff),
          actions: [
            IconButton(
              onPressed: () {
                print("Click on Settings");
              },
              icon: const Icon(Icons.settings),
              color: Colors.white,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  // color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/banner1.jpg',
                      // width: 188,
                      // height: 270,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  // color: Colors.amberAccent,
                  width: double.infinity,
                  height: 30,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'รายการหนังสือ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  height: 255,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          // color: Colors.deepPurple,
                          margin: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 188,
                                child: Image.asset('images/book$index.jpg'),
                              ),
                              Container(
                                // color: Colors.yellow,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'เที่ยวโตเกียวคนเดียว',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        maxLines:
                                            1, // จำนวนบรรทัดสูงสุดที่ควรแสดง
                                        overflow: TextOverflow.ellipsis,
                                        // ระบุว่าควรให้แสดง '...' ที่ส่วนที่ตัดทอน
                                      ),
                                    ),
                                    const Text(
                                      'Author:',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      // width: 80,
                                      height: 30,
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0x00FFFFFF)
                                                .withOpacity(0.8),
                                            onPrimary: Color(0xFF462ECD),
                                            textStyle: TextStyle(fontSize: 12),
                                            side: const BorderSide(
                                              color: Color(0xFF9381ff),
                                              width: 2,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            elevation: 2,
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            '\$1.99',
                                            // style: TextStyle(fontSize: 8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  // color: Colors.amberAccent,
                  width: double.infinity,
                  height: 30,
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'หนังสือขายดี',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10, bottom: 20),
                  height: 255,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          // color: Colors.deepPurple,
                          margin: const EdgeInsets.only(left: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 188,
                                child: Image.asset('images/book$index.jpg'),
                              ),
                              Container(
                                // color: Colors.yellow,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      child: const Text(
                                        'เที่ยวโตเกียวคนเดียว',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                        maxLines:
                                            1, // จำนวนบรรทัดสูงสุดที่ควรแสดง
                                        overflow: TextOverflow.ellipsis,
                                        // ระบุว่าควรให้แสดง '...' ที่ส่วนที่ตัดทอน
                                      ),
                                    ),
                                    const Text(
                                      'Author:',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.grey),
                                    ),
                                    SizedBox(
                                      // width: 80,
                                      height: 30,
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            primary: Color(0x00FFFFFF)
                                                .withOpacity(0.8),
                                            onPrimary: Color(0xFF462ECD),
                                            textStyle: TextStyle(fontSize: 12),
                                            side: const BorderSide(
                                              color: Color(0xFF9381ff),
                                              width: 2,
                                            ),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                            elevation: 2,
                                          ),
                                          onPressed: () {},
                                          child: const Text(
                                            '\$1.99',
                                            // style: TextStyle(fontSize: 8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            print('Clicked on Cart');
          },
          label: const Text('Cart'),
          icon: const Icon(Icons.shopping_cart),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.storefront), label: 'ร้านหนังสือ'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'ค้นหา'),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: 'ชั้นหนังสือ'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmarks), label: 'ลิสต์ของฉัน'),
          ],
        ),
      ),
    );
  }
}
