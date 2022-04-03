import 'package:demo_app/src/constant.dart';
import 'package:demo_app/src/models/product_items.dart';
import 'package:demo_app/src/screens/components/_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final Items _item = Items(
      name: 'Waka Waka (This Time for Africa)',
      image: '',
      singer: 'Song by Shakira');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Lottie.asset(
            animBounce,
          ),
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            padding: const EdgeInsets.symmetric(vertical: 22),
            decoration: const BoxDecoration(
                //color: Colors.black45,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                buildItem(_item),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22.0),
                  child: Column(
                    children: [
                      const LinearProgressIndicator(
                        backgroundColor: Colors.grey,
                        minHeight: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.amber,
                        ),
                        value: 0.5,
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [Text('1:28'), Spacer(), Text('3:48')],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.volume_up_rounded,
                            size: 35,
                          ),
                          const SizedBox(width: 22),
                          const Icon(
                            Icons.pause_circle,
                            color: Colors.amber,
                            size: 70,
                          ),
                          const SizedBox(width: 22),
                          const Icon(
                            Icons.skip_next_outlined,
                            size: 35,
                          ),
                          //const Spacer(),
                          const SizedBox(width: 22),
                          Container(
                            child: Lottie.asset(
                              animEqualiser,
                              height: 80,
                              width: 80,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
