import 'package:car_rental_app/page/mainpage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                'Premium cars.',
                style: TextStyle(
                  fontFamily: 'GilroyBold',
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const Text(
                'Enjoy the luxury',
                style: TextStyle(
                  fontFamily: 'GilroyBold',
                  fontSize: 36,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const Text(
                'Premium and prestige car hourly rental.',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
              const Text(
                'Experience the thrill at a lower price.',
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const MainPage())));
                },
                child: const Text(
                  "Let's Go!",
                  style: TextStyle(
                    fontFamily: 'GilroyBold',
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
