import 'package:flutter/material.dart';

class BannerDemo extends StatelessWidget {
  const BannerDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
        color: Colors.yellow,
        height: 100,
        child: ClipRect(
          child: Banner(
            message: "hello",
            location: BannerLocation.topEnd,
            color: Colors.red,
            child: Container(
              color: Colors.yellow,
              height: 100,
              child: const Center(
                child: Text("Hello, banner!"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
