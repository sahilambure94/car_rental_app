import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  void initState() {
    // TODO: implement initState

    Future.delayed(const Duration(seconds: 0)).then((_) {
      showModalBottomSheet(
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(10.0),
          // ),
          backgroundColor: Colors.white,
          context: context,
          builder: (builder) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tesla Model S',
                          style: TextStyle(
                            fontFamily: 'GilroyBold',
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.batteryThreeQuarters,
                              color: Colors.black,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '288 km',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              FontAwesomeIcons.personRunning,
                              color: Colors.black,
                              size: 20,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '4 min',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Image(image: AssetImage('assets/tesla.png')),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 140,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.black26),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.snowflake,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Climate Control',
                                    style: TextStyle(
                                      fontFamily: 'GilroyBold',
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    'Two Zone',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 12,
                                      color: Colors.black38,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 140,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.black26),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.gauge,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Acceleration',
                                    style: TextStyle(
                                      fontFamily: 'GilroyBold',
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '4.2s 0-100km/h',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 12,
                                      color: Colors.black38,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 140,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 1, color: Colors.black26),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    FontAwesomeIcons.bolt,
                                    color: Colors.black,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    'Electricity',
                                    style: TextStyle(
                                      fontFamily: 'GilroyBold',
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    '100% Charged',
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontSize: 12,
                                      color: Colors.black38,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: const TextSpan(
                              text: "\$13.75",
                              style: TextStyle(
                                fontFamily: 'GilroyBold',
                                color: Colors.black,
                                fontSize: 40,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "/h",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'GilroyBold',
                                  ),
                                ),
                              ]),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(150, 60),
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                            shadowColor: Colors.transparent,
                          ),
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: ((context) => const MainPage())));
                          },
                          child: const Text(
                            "Book Now",
                            style: TextStyle(
                              fontFamily: 'GilroyBold',
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/map1.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          initState();
        },
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        child: const Icon(FontAwesomeIcons.arrowsToDot),
      ),
    );
  }
}
