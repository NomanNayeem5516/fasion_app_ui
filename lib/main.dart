import 'package:flutter/material.dart';

void main() => runApp(const FancyUI());

class FancyUI extends StatelessWidget {
  const FancyUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          //   elevation: 0,
          //   leading: const Icon(
          //     Icons.arrow_back_ios_new_outlined,
          //     color: Colors.black,
          //   ),
          //   actions: const [
          //     Icon(
          //       Icons.share,
          //       color: Colors.black,
          //     ),
          //   ],
          // ),
          body: Stack(
            children: [
              Image.asset(
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  "asset/111.jpg"),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
                  )),
                  width: double.infinity,
                  height: 500,
                ),
              ),
              SafeArea(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Colors.black,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.black,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
