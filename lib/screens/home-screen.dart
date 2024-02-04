import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          // AppBar and Switching pages label
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            height: 50,
            child: Column(
              children: [
                // AppBar containing the title (facebook), icons(add, search, messenger)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // FB Icon
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: const Text('Facebook',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontSize: 18)),
                    ),
                    const SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add_circle_sharp, size: 20),
                          Icon(Icons.search, size: 20),
                          Icon(
                            FontAwesomeIcons.facebookMessenger,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Here the implementation of switching pages
          Container(
            height: 45,
            child: Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top: 10),
                          height: 20,
                          width: 20,
                          decoration: const BoxDecoration(
                            // color: Colors.blue,
                            image: DecorationImage(image: AssetImage('assets/home-icon-1.png'))
                          ),
                        ),
                        const SizedBox(height:9),
                        Container(
                          width: 80,
                          height: 5,
                          decoration:const BoxDecoration(
                            color: Color.fromRGBO(0, 113, 255, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                            )
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin:const EdgeInsets.only(top: 10),
                          height: 25,
                          width: 25,
                          decoration: const BoxDecoration(
                            // color: Colors.blue,
                              image: DecorationImage(image: AssetImage('assets/tv-icon-1.png'))
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.people,
                      color: Colors.grey,
                    ),
                    const Icon(
                      Icons.notifications_none_rounded,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 40,
                      width: 45,
                      margin: const EdgeInsets.only(bottom: 7),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                              image: AssetImage('assets/man-person-icon.png')),
                          border: Border.all(color: Colors.grey, width: 2)),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 43),
                  height: 1,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          // Here the implementation of search bar
          SizedBox(
            height: 50,
            width: 400,
            child: Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/man-person-icon.png')),
                    // border: Border.all(color: Colors.grey, width: 2)
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'What\'s on your mind? ',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 5),
          // Story section
          Divider(color: Colors.grey.shade400, height: 10, thickness: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            height: 240,
            width: MediaQuery.of(context).size.width,
            // decoration: const BoxDecoration(color: Colors.lightBlue),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 120,
                  margin: const EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            blurRadius: 9,
                            offset: const Offset(0.5, 0.2))
                      ]),
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/profile-img.png',
                                ),
                                fit: BoxFit.cover),
                            color: Colors.grey.shade400,
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(25),
                              topLeft: Radius.circular(25),
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 150),
                        padding: const EdgeInsets.only(top: 20),
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),
                        )),
                        child: const Center(
                          child: Text('Create \n Story',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 130, left: 40),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                            border: Border.all(
                              color: Colors.white,
                              width: 5,
                            )),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey, width: 1),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            blurRadius: 10,
                            offset: const Offset(0.5, 0.2))
                      ]),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 180, left: 10),
                        child: const Text('User name',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/man-person-icon.png')),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 3,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 120,
                  margin: const EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey, width: 1),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            blurRadius: 10,
                            offset: const Offset(0.5, 0.3))
                      ]),
                  child: Stack(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 180, left: 10),
                        child: const Text('User name',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(top: 5, left: 5),
                        decoration: const BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image:
                                      AssetImage('assets/man-person-icon.png')),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                                width: 3,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Colors.grey.shade400, height: 10, thickness: 10),
          // Post
          Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            decoration: const BoxDecoration(
                // color: Colors.green,
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Row(
                  children: [
                    // User Image
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/profile-img.png')),
                          shape: BoxShape.circle,
                          color: Colors.grey),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'User name',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Updated his profile image',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text(
                    'I love coding ❤️❤️',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/profile-img.png')),
                      color: Colors.grey),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    const SizedBox(width: 20),
                    const Text('❤️'),
                    Text('  Mohamed Mousa and 3k others',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w400)),
                    const SizedBox(width: 50),
                    Text('1k comments • 2.3k shares',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.w300)),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: const BoxDecoration(color: Colors.grey),
                  height: 0.5,
                ),
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/like-icon.png'),
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Like',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/comment-icon.png'),
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Comment',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Image(
                            image: AssetImage('assets/share-icon.png'),
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Share',
                            style: TextStyle(color: Colors.grey, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Divider(color: Colors.grey.shade400, height: 10, thickness: 10),
        ],
      ),
    )));
  }
}
