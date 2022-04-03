import 'package:demo_app/src/constant.dart';

import '../details/details_view.dart';
import '../home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../models/product_items.dart';

Widget buildItem(Items item) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.blueGrey,
        child: Image.asset(
          imgDog,
          width: 30,
          height: 30,
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.name ?? '',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: Colors.amber,
            ),
          ),
          Text(
            item.singer ?? '',
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w400,
              color: Colors.amber,
            ),
          )
        ],
      ),
      trailing: favMore(),
    ),
  );
}

AppBar buildAppBar() {
  return AppBar(
    title: const Text('Home'),
    elevation: 0,
    backgroundColor: Colors.transparent,
    centerTitle: true,
  );
}

SizedBox favMore() {
  return SizedBox(
    width: 45,
    child: Row(
      children: [
        Icon(
          Icons.favorite_outline,
          color: Colors.amber.shade300,
          size: 20,
        ),
        const Spacer(),
        Icon(
          Icons.more_horiz,
          color: Colors.grey.shade300,
          size: 20,
        )
      ],
    ),
  );
}

Widget buildLoader() {
  return const Center(
    child: CircularProgressIndicator(),
  );
}

Widget buildErrorWidget() {
  return const Center(
    child: Text('Failed to load items'),
  );
}

Widget bannerPlayer(BuildContext context) {
  return Stack(
    children: [
      Container(
        child: Lottie.asset(
          animDog,
        ),
      ),
      Positioned(
        bottom: 5,
        left: 2,
        right: 2,
        child: musicBar(context),
      ),
    ],
  );
}

Padding musicBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListTile(
      title: Text(
        'Daft Punk',
        style: Theme.of(context).textTheme.headline5,
      ),
      subtitle: const Text(
        '6.8m listners',
        style: TextStyle(color: Colors.amber),
      ),
      trailing: GestureDetector(
        onTap: () {
          debugPrint('Tapped for navigate');
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const DetailPage()));
        },
        child: Container(
          child: Lottie.asset(
            animLoader,
          ),
        ),
      ),
    ),
  );
}

Column theLoginBtn(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        width: double.infinity,
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.lock_outline,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          label: const Text(
            "Login",
            style: TextStyle(fontSize: 16, color: Colors.black),
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.amber,
            //fixedSize: const Size(208, 43),
          ),
        ),
      ),
      const SizedBox(height: 20),
      const Text(
        "http://www.github.com/ishaileshmishra",
        style: TextStyle(fontSize: 12, color: Colors.grey),
      )
    ],
  );
}

Positioned theInspiringText(BuildContext context) {
  return Positioned(
    left: 20,
    right: 10,
    top: 40,
    child: Container(
      height: 200,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const HomeScreen()));
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () => debugPrint(''),
                  style: const ButtonStyle(),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              const Text(
                '100+ inspiring UI work, design & developments in flutter mobile framework',
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.w200,
                  fontSize: 30,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

SizedBox playingMusicBackground() {
  return SizedBox(
    height: double.infinity,
    width: double.infinity,
    child: Lottie.asset(animMusic),
  );
}
