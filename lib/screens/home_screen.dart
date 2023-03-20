import 'package:flutter/material.dart';
import 'package:readmenow/models/book.dart';
import 'package:readmenow/widgets/top_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TopBar(
                text: "Home",
                isTrelingIconRequired: true,
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Please Login for full acess of the library to read or buy ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.red.shade900),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "ReadMeNow recommends",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "DISCOVER >",
                      style: TextStyle(
                        color: Colors.red.shade900,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    Book book = items[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Image.asset(
                            book.cover ?? "",
                            height: 165,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            book.title ?? "",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
