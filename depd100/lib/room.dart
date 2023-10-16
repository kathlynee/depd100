import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  bool isLove = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Mission 1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.pink[300],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerRight,
            colors: [Colors.pink.shade50, Colors.purple.shade50],
          ),
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  width: double.infinity,
                  child: ClipRRect(
                    child: Image.asset('images/kuromi-5.jpg',
                        fit: BoxFit.fill, width: double.infinity),
                  ),
                ),
                Positioned(
                  //tes
                  top: 20,
                  right: 20,
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        isLove = !isLove;
                      });
                    },
                    backgroundColor: Color.fromARGB(255, 153, 96, 96),
                    child: Icon(
                      Icons.favorite,
                      color: isLove ? Colors.red : Colors.grey[700],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('images/kuromi-2.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('images/kuromi-3.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('images/kuromi-4.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: AspectRatio(
                          aspectRatio: 1.0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset('images/kuromi.jpg',
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Hello, Kuromi's Friend ^-^",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
              ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(8),
                children: [
                  // Teks panjang yang bisa di-scroll
                  Text(
                    "Kuromi is a popular character in the world of Sanrio, a Japanese company known for creating iconic characters such as Hello Kitty. Kuromi is a mischievous and edgy character that stands out with her unique style and personality.Kuromi has a goth-punk aesthetic, often seen wearing a black jester's hat with a pink skull on it. She also sports a black eye mask, black gloves, and a pink, frilly dress with a skull on the front. Her overall appearance combines elements of cute and dark, making her an intriguing character for fans of all ages. Kuromi's mischievous nature is one of her defining traits. She's known for her playful and sometimes sly behavior. While she may look tough on the outside, she has a sweet side, especially when it comes to her friends. One of her best friends is My Melody, another Sanrio character. Kuromi and My Melody have a unique friendship that showcases the idea that even characters with contrasting personalities can get along. This dynamic adds depth to Kuromi's character and the Sanrio universe. Kuromi's hobbies include playing the guitar and writing in her diary. These activities give her a creative and expressive outlet, revealing her multi-dimensional personality. Her love for music and writing highlights the importance of self-expression and pursuing one's passions.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
