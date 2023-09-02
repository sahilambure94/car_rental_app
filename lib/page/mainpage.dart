import 'package:car_rental_app/page/mappage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.circleInfo,
                    ),
                    label: const Text('Information'),
                  ),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shadowColor: Colors.transparent,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      FontAwesomeIcons.bell,
                    ),
                    label: const Text('Notifications'),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(249, 241, 241, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 28,
                      ),
                      child: Text(
                        'NEAREST CAR',
                        style: TextStyle(
                          color: Colors.black38,
                        ),
                      ),
                    ),
                    Image(image: AssetImage('assets/tesla.png')),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 20,
                      ),
                      child: Text(
                        "Tesla Model S",
                        style: TextStyle(
                          fontFamily: 'GilroyBold',
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        bottom: 8,
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.batteryThreeQuarters,
                                color: Colors.black45,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '288 km',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.personRunning,
                                color: Colors.black45,
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '4 min',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 12,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.snowflake,
                                color: Colors.black45,
                                size: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                FontAwesomeIcons.bolt,
                                color: Colors.black45,
                                size: 20,
                              ),
                            ],
                          ),
                          Text(
                            "\$10.20/h",
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.46,
                    height: MediaQuery.of(context).size.width * 0.5,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/map.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.46,
                    height: MediaQuery.of(context).size.width * 0.5,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        color: Color.fromRGBO(239, 234, 229, 1)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const CircleAvatar(
                          radius: 30.0,
                          backgroundImage: AssetImage('assets/profile.jpg'),
                          backgroundColor: Colors.transparent,
                        ),
                        const Text(
                          'Edgar Schultz',
                          style: TextStyle(
                            fontFamily: 'GilroyBold',
                          ),
                        ),
                        RichText(
                          text: const TextSpan(
                              text: "\$2,912",
                              style: TextStyle(
                                fontFamily: 'GilroyBold',
                                color: Colors.black,
                                fontSize: 24,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: ".56",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Gilroy',
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * 0.55,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Color.fromARGB(225, 27, 33, 40),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SAVED FILTERS',
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white60,
                              ),
                            ),
                            Icon(
                              FontAwesomeIcons.ellipsis,
                              color: Colors.white60,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3 Offers',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GilroyBold',
                                    fontSize: 22,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.arrowTrendUp,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '500 m',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.personRunning,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '4 min',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.snowflake,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.bolt,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              //<-- SEE HERE
                              width: 40,
                              height: 40,
                              child: FittedBox(
                                //<-- SEE HERE
                                child: FloatingActionButton(
                                  //<-- SEE HERE
                                  backgroundColor: Colors.blueGrey,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return const MapPage();
                                    })));
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '3 Offers',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'GilroyBold',
                                    fontSize: 22,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.arrowTrendUp,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '500 m',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.personRunning,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      '4 min',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 12,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.snowflake,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      FontAwesomeIcons.bolt,
                                      color: Colors.white54,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                              height: 40,
                              child: FittedBox(
                                child: FloatingActionButton(
                                  backgroundColor: Colors.blueGrey,
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: ((context) {
                                      return const MapPage();
                                    })));
                                  },
                                  child: const Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
