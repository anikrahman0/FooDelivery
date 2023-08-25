import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _counter=1;
    return Scaffold(
      backgroundColor: const Color(0xff2A2D32),
      appBar: AppBar(
        backgroundColor: const Color(0xff2A2D32),
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
              padding: const EdgeInsets.all(10),
              child: CircleAvatar(
                backgroundColor: const Color(0xff53565A),
                child: SvgPicture.asset(
                  'assets/cheveron-left.svg',
                  width: 19,
                  height: 19,
                ),
              )),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                padding: const EdgeInsets.all(10),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: SvgPicture.asset(
                    'assets/heart.svg',
                    width: 17,
                    height: 17,
                  ),
                )),
          ),
        ],
      ),
      body: ListView(
        children: [
          Stack(children: [
            Container(
              margin: const EdgeInsets.only(top: 100),
              width: MediaQuery.of(context).size.width,
              height:100,
              decoration: const BoxDecoration(
                color: Colors.white,
                 borderRadius: BorderRadius.only(topRight:  Radius.circular(40), topLeft: Radius.circular(40)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional.topCenter,
              child: Container(
                width: 250,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/food5.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ]),
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox( height: 20, ),
                const Text('Chicken Curry with Rice',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    )),
                const SizedBox( height: 20, ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset('assets/stop-watch2.svg',
                              height: 25, width: 25),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('30 Min',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/fire-new-2.svg',
                              height: 25, width: 25),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('275 calories',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ],
                      ),
                      Row(
                        children: [
                          SvgPicture.asset('assets/star2.svg',
                              height: 25, width: 25),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('4.9',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 445,
                  padding: const EdgeInsets.only(left:10),
                  child: const Column(
                    children: [
                      Text(
                        'This is in Bengal the name of a peculiar dry kind of curry, often served as a breakfast dish. We can only conjecture that it was a favourite dish at the table of the skippers of ‘country ships,’ who were themselves called ‘country captains,’ as in our first quotation. In Madras the term is applied to a spatchcock dressed with onions and curry stuff, which is probably the original form.',
                        style: TextStyle(
                          color: Color.fromARGB(255, 56, 53, 53),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox( height: 20, ),
                cartButtonSection(counter: _counter),
                const SizedBox( height: 20, ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class cartButtonSection extends StatelessWidget {
  const cartButtonSection({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          // padding: EdgeInsets.all(10),
          child: Row(
            children: [
              TextButton(
                onPressed: (){},
                style:ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll <Color>(Color(0xffE7EAF3)),
                  foregroundColor: const MaterialStatePropertyAll <Color>(Colors.black),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0))),
                ),
                child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.remove),
                    alignment: Alignment.centerLeft,
                    iconSize: 16,
                  ),
                  Text(
                    '$_counter',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(Icons.add),
                    alignment: Alignment.centerRight,
                    iconSize: 16,
                  ),
                ],
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll<Color>(
                      Color.fromARGB(255, 31, 31, 31)),
                  foregroundColor:
                      const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 255, 255)),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0))),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Add to Cart',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width:20,),
                          Text(
                            '\$25',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
