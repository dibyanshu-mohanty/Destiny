import 'package:flutter/material.dart';
import 'story_brain.dart';
void main() => runApp(Destini());

Content story = Content();

class Destini extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Destiny()
      ),
    );
  }
}

class Destiny extends StatefulWidget {
  @override
  _DestinyState createState() => _DestinyState();
}

class _DestinyState extends State<Destiny> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/destini.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: SafeArea(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Center(
                  child: Text(
                    story.mainStory(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Expanded(
                flex: 3,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      story.nextStory(1);
                    });
                  },
                child: Text(
                  story.getChoice1(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.redAccent),
                ),
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Expanded(
                flex: 3,
                child: Visibility(
                  visible: story.buttonVisible(),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        story.nextStory(2);
                      });
                    },
                  child: Text(
                    story.getChoice2(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                  ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                  ),
              ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

