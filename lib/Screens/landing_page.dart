import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/book_screen_detail.dart';
import 'package:liber_maniac/categories/children_screen.dart';
import 'package:liber_maniac/categories/comic_screen.dart';
import 'package:liber_maniac/categories/history_screen.dart';
import 'package:liber_maniac/categories/horror_screen.dart';
import 'package:liber_maniac/categories/mystery_screen.dart';
import 'package:liber_maniac/categories/romance_screen.dart';
import 'package:liber_maniac/categories/scifi_screen.dart';
import 'package:liber_maniac/categories/thriller_screen.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Search bar
          searchBar(),

          //promotion bar
          promotionBar(message: '50% Discount on Your first Purchase!'),

          //Add category bar
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(5),
            color: const Color.fromRGBO(
                129, 8, 61, 1.0), // Background color for the text
            child: const Text(
              'Categories',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),

          // List of items under categories
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                categoryItem(context, 'Science Fiction', 'lib/images/scifi.png',
                    const SciFiPage()),
                categoryItem(context, 'Historical Fantasy',
                    'lib/images/historical.png', const HistoryPage()),
                categoryItem(context, 'Romance', 'lib/images/romance.png',
                    const RomancePage()),
                categoryItem(context, 'Thriller', 'lib/images/thriller.png',
                    const ThrillerPage()),
                categoryItem(context, 'Horror', 'lib/images/horror.png',
                    const HorrorPage()),
                categoryItem(context, 'Mystery', 'lib/images/mystery.png',
                    const MysteryPage()),
                categoryItem(context, 'Children Literature',
                    'lib/images/children.png', const ChildrenPage()),
                categoryItem(context, 'Comics', 'lib/images/comic.png',
                    const ComicPage()),
                // Add more category items as needed
              ],
            ),
          ),

          //Add most popular bar
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(5),
            color: const Color.fromRGBO(
                129, 8, 61, 1.0), // Background color for the text
            child: const Text(
              'Most Popular',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),

          //Most Popular Books
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    popularBookItem(
                      context,
                      'The Art of War',
                      'lib/images/the_art_of_war.jpg',
                      'The Art of War by Sun Tzu is a timeless treatise on military strategy, focusing on principles applicable to warfare and broader aspects of conflict resolution. Through its concise and profound aphorisms, Sun Tzu elucidates the importance of strategic planning, understanding the terrain, exploiting the enemy\'s weaknesses, and the significance of adaptability and deception in achieving victory. Central themes include the idea that the ultimate victory is to defeat the enemy without engaging in direct conflict, emphasizing the importance of psychological warfare and the manipulation of perception. Sun Tzu\'s teachings transcend military contexts, offering insights into leadership, diplomacy, and the art of negotiation, making it indispensable not only for military leaders but also for anyone seeking to navigate the complexities of competition and conflict in various spheres of life.',
                      (
                              {Key? key,
                              required String title,
                              required String imagePath,
                              required String description}) =>
                          BookDetailsScreen(
                        key: UniqueKey(), // Provide a unique key for the screen
                        title:
                            'The Art of War', // Pass the title to the BookDetailsScreen
                        imagePath: 'lib/images/the_art_of_war.jpg',
                        description:
                            'The Art of War by Sun Tzu is a timeless treatise on military strategy, focusing on principles applicable to warfare and broader aspects of conflict resolution. Through its concise and profound aphorisms, Sun Tzu elucidates the importance of strategic planning, understanding the terrain, exploiting the enemy\'s weaknesses, and the significance of adaptability and deception in achieving victory. Central themes include the idea that the ultimate victory is to defeat the enemy without engaging in direct conflict, emphasizing the importance of psychological warfare and the manipulation of perception. Sun Tzu\'s teachings transcend military contexts, offering insights into leadership, diplomacy, and the art of negotiation, making it indispensable not only for military leaders but also for anyone seeking to navigate the complexities of competition and conflict in various spheres of life.', // Pass the image path to the BookDetailsScreen
                      ),
                    ),
                    popularBookItem(
                      context,
                      'The Time Machine',
                      'lib/images/the_time_machine.jpg',
                      'The Time Machine by H.G. Wells is a classic science fiction novel that follows the story of an unnamed Time Traveler who invents a machine capable of traveling through time. He journeys far into the future, witnessing the evolution of humanity, where he encounters two distinct species: the gentle Eloi, who live above ground in a utopian society, and the monstrous Morlocks, who dwell underground and prey on the Eloi. The Time Traveler\'s adventures reveal a dystopian future where humanity has diverged into two distinct classes, representing the extremes of intellect and labor. As he struggles to understand this future world and find a way back to his own time, he confronts themes of social inequality, the consequences of scientific advancement, and the nature of human civilization. Through its imaginative narrative and thought-provoking exploration of time and society, The Time Machine remains a seminal work of science fiction literature, inspiring countless adaptations and continuing to captivate readers with its visionary storytelling.',
                      (
                              {Key? key,
                              required String title,
                              required String imagePath,
                              required String description}) =>
                          BookDetailsScreen(
                        key: UniqueKey(), // Provide a unique key for the screen
                        title:
                            'The Time Machine', // Pass the title to the BookDetailsScreen
                        imagePath: 'lib/images/the_time_machine.jpg',
                        description:
                            'The Time Machine by H.G. Wells is a classic science fiction novel that follows the story of an unnamed Time Traveler who invents a machine capable of traveling through time. He journeys far into the future, witnessing the evolution of humanity, where he encounters two distinct species: the gentle Eloi, who live above ground in a utopian society, and the monstrous Morlocks, who dwell underground and prey on the Eloi. The Time Traveler\'s adventures reveal a dystopian future where humanity has diverged into two distinct classes, representing the extremes of intellect and labor. As he struggles to understand this future world and find a way back to his own time, he confronts themes of social inequality, the consequences of scientific advancement, and the nature of human civilization. Through its imaginative narrative and thought-provoking exploration of time and society, The Time Machine remains a seminal work of science fiction literature, inspiring countless adaptations and continuing to captivate readers with its visionary storytelling.',
                        // Pass the image path to the BookDetailsScreen
                      ),
                    ),
                    popularBookItem(
                        context,
                        'Clarimonde',
                        'lib/images/clarimonde.jpg',
                        '"Clarimonde" is a haunting tale by Théophile Gautier, following the story of a young priest named Romuald who is drawn into a forbidden love affair with the enigmatic and seductive Clarimonde. Romuald, initially dedicated to his religious vows, encounters Clarimonde at a funeral procession and is immediately captivated by her beauty. Despite his religious convictions, he succumbs to his desires and enters into a passionate relationship with her. However, as their love deepens, Romuald becomes increasingly disturbed by Clarimonde\'s mysterious nature and the dark secrets surrounding her. Eventually, he discovers that Clarimonde is a vampire, and his love for her is put to the ultimate test as he grapples with the conflict between his religious beliefs and his passion for her. "Clarimonde" explores themes of forbidden desire, temptation, and the eternal struggle between good and evil, creating a mesmerizing and chilling narrative that continues to fascinate readers with its blend of Gothic romance and supernatural elements.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'Clarimonde', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/clarimonde.jpg',
                              description:
                                  '"Clarimonde" is a haunting tale by Théophile Gautier, following the story of a young priest named Romuald who is drawn into a forbidden love affair with the enigmatic and seductive Clarimonde. Romuald, initially dedicated to his religious vows, encounters Clarimonde at a funeral procession and is immediately captivated by her beauty. Despite his religious convictions, he succumbs to his desires and enters into a passionate relationship with her. However, as their love deepens, Romuald becomes increasingly disturbed by Clarimonde\'s mysterious nature and the dark secrets surrounding her. Eventually, he discovers that Clarimonde is a vampire, and his love for her is put to the ultimate test as he grapples with the conflict between his religious beliefs and his passion for her. "Clarimonde" explores themes of forbidden desire, temptation, and the eternal struggle between good and evil, creating a mesmerizing and chilling narrative that continues to fascinate readers with its blend of Gothic romance and supernatural elements.',
                              // Pass the image path to the BookDetailsScreen
                            )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    popularBookItem(
                        context,
                        'The Woman in White',
                        'lib/images/the_woman_in_white.jpg',
                        '"The Woman in White" by Wilkie Collins is a gripping Victorian-era mystery novel that unfolds through multiple narratives and perspectives. The story begins with Walter Hartright, a young drawing master, who encounters a mysterious woman dressed in white on a moonlit road. This chance meeting sets off a series of events that lead Walter into a tangled web of intrigue, deception, and betrayal. As he becomes entangled with the wealthy Fairlie family, Walter learns of their dark secrets, including the identity of the woman in white, who is revealed to be Anne Catherick, a mentally troubled figure with a connection to the family. Through twists and turns, the novel delves into themes of identity, madness, and the power dynamics of Victorian society. With its intricate plot and memorable characters, "The Woman in White" remains a classic of Victorian literature, celebrated for its suspenseful storytelling and its exploration of social issues of the time.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'The Woman in White', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/the_woman_in_white.jpg',
                              description:
                                  '"The Woman in White" by Wilkie Collins is a gripping Victorian-era mystery novel that unfolds through multiple narratives and perspectives. The story begins with Walter Hartright, a young drawing master, who encounters a mysterious woman dressed in white on a moonlit road. This chance meeting sets off a series of events that lead Walter into a tangled web of intrigue, deception, and betrayal. As he becomes entangled with the wealthy Fairlie family, Walter learns of their dark secrets, including the identity of the woman in white, who is revealed to be Anne Catherick, a mentally troubled figure with a connection to the family. Through twists and turns, the novel delves into themes of identity, madness, and the power dynamics of Victorian society. With its intricate plot and memorable characters, "The Woman in White" remains a classic of Victorian literature, celebrated for its suspenseful storytelling and its exploration of social issues of the time.',
                            )),
                    popularBookItem(
                        context,
                        'The Abandoned Room',
                        'lib/images/the_abandoned_room.jpg',
                        '"An Abandoned Room" is a mystery novel by Wadsworth Camp, first published in 1917. The story follows detective Peter Clancy as he investigates a perplexing case involving the disappearance of a wealthy man, Arthur Sinclair. Sinclair vanishes from his mansion, leaving behind a locked and sealed room with no apparent exit. Clancy is called to solve the mystery, and as he delves deeper into the case, he uncovers a web of secrets, lies, and hidden motives among the suspects, including Sinclair\'s relatives and associates. As the investigation progresses, Clancy must navigate through a series of twists and turns, ultimately leading to a surprising and suspenseful conclusion. "An Abandoned Room" is praised for its clever plot, atmospheric setting, and engaging characters, making it a classic of early 20th-century mystery fiction.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'The Abandoned Room', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/the_abandoned_room.jpg',
                              description:
                                  '"An Abandoned Room" is a mystery novel by Wadsworth Camp, first published in 1917. The story follows detective Peter Clancy as he investigates a perplexing case involving the disappearance of a wealthy man, Arthur Sinclair. Sinclair vanishes from his mansion, leaving behind a locked and sealed room with no apparent exit. Clancy is called to solve the mystery, and as he delves deeper into the case, he uncovers a web of secrets, lies, and hidden motives among the suspects, including Sinclair\'s relatives and associates. As the investigation progresses, Clancy must navigate through a series of twists and turns, ultimately leading to a surprising and suspenseful conclusion. "An Abandoned Room" is praised for its clever plot, atmospheric setting, and engaging characters, making it a classic of early 20th-century mystery fiction.',
                              // Pass the image path to the BookDetailsScreen
                            )),
                    popularBookItem(
                        context,
                        'The Analysis of Mind',
                        'lib/images/the_analysis_of_mind.jpg',
                        '"Analysis of Mind" by Bertrand Russell is a seminal work in the field of philosophy of mind, first published in 1921. In this book, Russell explores the nature of consciousness, perception, and mental processes, aiming to provide a systematic analysis of the workings of the human mind. Through a rigorous examination of various philosophical and psychological concepts, Russell addresses fundamental questions such as the nature of perception, the relationship between mind and matter, the concept of consciousness, and the nature of knowledge. He discusses topics including sense-data theory, introspection, memory, and the distinction between knowledge by acquaintance and knowledge by description. Russell\'s approach is characterized by his analytical rigor, clarity of expression, and his commitment to empiricism and logical analysis. "Analysis of Mind" remains a landmark work in the philosophy of mind, influencing subsequent thinkers and contributing to ongoing debates in the field.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'The Analysis of Mind', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/the_analysis_of_mind.jpg',
                              description:
                                  '"Analysis of Mind" by Bertrand Russell is a seminal work in the field of philosophy of mind, first published in 1921. In this book, Russell explores the nature of consciousness, perception, and mental processes, aiming to provide a systematic analysis of the workings of the human mind. Through a rigorous examination of various philosophical and psychological concepts, Russell addresses fundamental questions such as the nature of perception, the relationship between mind and matter, the concept of consciousness, and the nature of knowledge. He discusses topics including sense-data theory, introspection, memory, and the distinction between knowledge by acquaintance and knowledge by description. Russell\'s approach is characterized by his analytical rigor, clarity of expression, and his commitment to empiricism and logical analysis. "Analysis of Mind" remains a landmark work in the philosophy of mind, influencing subsequent thinkers and contributing to ongoing debates in the field.',
                            )),
                  ],
                ),
                // Add more rows as needed
              ],
            ),
          ),

          //Add Recent Added bar
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(5),
            color: const Color.fromRGBO(
                129, 8, 61, 1.0), // Background color for the text
            child: const Text(
              'Recently Added',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),

          //Recent Added Books
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    recentAddedItems(
                      context,
                      'The Art of War',
                      'lib/images/the_art_of_war.jpg',
                      'The Art of War by Sun Tzu is a timeless treatise on military strategy, focusing on principles applicable to warfare and broader aspects of conflict resolution. Through its concise and profound aphorisms, Sun Tzu elucidates the importance of strategic planning, understanding the terrain, exploiting the enemy\'s weaknesses, and the significance of adaptability and deception in achieving victory. Central themes include the idea that the ultimate victory is to defeat the enemy without engaging in direct conflict, emphasizing the importance of psychological warfare and the manipulation of perception. Sun Tzu\'s teachings transcend military contexts, offering insights into leadership, diplomacy, and the art of negotiation, making it indispensable not only for military leaders but also for anyone seeking to navigate the complexities of competition and conflict in various spheres of life.',
                      (
                              {Key? key,
                              required String title,
                              required String imagePath,
                              required String description}) =>
                          BookDetailsScreen(
                        key: UniqueKey(), // Provide a unique key for the screen
                        title:
                            'The Art of War', // Pass the title to the BookDetailsScreen
                        imagePath: 'lib/images/the_art_of_war.jpg',
                        description:
                            'The Art of War by Sun Tzu is a timeless treatise on military strategy, focusing on principles applicable to warfare and broader aspects of conflict resolution. Through its concise and profound aphorisms, Sun Tzu elucidates the importance of strategic planning, understanding the terrain, exploiting the enemy\'s weaknesses, and the significance of adaptability and deception in achieving victory. Central themes include the idea that the ultimate victory is to defeat the enemy without engaging in direct conflict, emphasizing the importance of psychological warfare and the manipulation of perception. Sun Tzu\'s teachings transcend military contexts, offering insights into leadership, diplomacy, and the art of negotiation, making it indispensable not only for military leaders but also for anyone seeking to navigate the complexities of competition and conflict in various spheres of life.', // Pass the image path to the BookDetailsScreen
                      ),
                    ),
                    recentAddedItems(
                      context,
                      'The Time Machine',
                      'lib/images/the_time_machine.jpg',
                      'The Time Machine by H.G. Wells is a classic science fiction novel that follows the story of an unnamed Time Traveler who invents a machine capable of traveling through time. He journeys far into the future, witnessing the evolution of humanity, where he encounters two distinct species: the gentle Eloi, who live above ground in a utopian society, and the monstrous Morlocks, who dwell underground and prey on the Eloi. The Time Traveler\'s adventures reveal a dystopian future where humanity has diverged into two distinct classes, representing the extremes of intellect and labor. As he struggles to understand this future world and find a way back to his own time, he confronts themes of social inequality, the consequences of scientific advancement, and the nature of human civilization. Through its imaginative narrative and thought-provoking exploration of time and society, The Time Machine remains a seminal work of science fiction literature, inspiring countless adaptations and continuing to captivate readers with its visionary storytelling.',
                      (
                              {Key? key,
                              required String title,
                              required String imagePath,
                              required String description}) =>
                          BookDetailsScreen(
                        key: UniqueKey(), // Provide a unique key for the screen
                        title:
                            'The Time Machine', // Pass the title to the BookDetailsScreen
                        imagePath: 'lib/images/the_time_machine.jpg',
                        description:
                            'The Time Machine by H.G. Wells is a classic science fiction novel that follows the story of an unnamed Time Traveler who invents a machine capable of traveling through time. He journeys far into the future, witnessing the evolution of humanity, where he encounters two distinct species: the gentle Eloi, who live above ground in a utopian society, and the monstrous Morlocks, who dwell underground and prey on the Eloi. The Time Traveler\'s adventures reveal a dystopian future where humanity has diverged into two distinct classes, representing the extremes of intellect and labor. As he struggles to understand this future world and find a way back to his own time, he confronts themes of social inequality, the consequences of scientific advancement, and the nature of human civilization. Through its imaginative narrative and thought-provoking exploration of time and society, The Time Machine remains a seminal work of science fiction literature, inspiring countless adaptations and continuing to captivate readers with its visionary storytelling.',
                        // Pass the image path to the BookDetailsScreen
                      ),
                    ),
                    recentAddedItems(
                        context,
                        'Clarimonde',
                        'lib/images/clarimonde.jpg',
                        '"Clarimonde" is a haunting tale by Théophile Gautier, following the story of a young priest named Romuald who is drawn into a forbidden love affair with the enigmatic and seductive Clarimonde. Romuald, initially dedicated to his religious vows, encounters Clarimonde at a funeral procession and is immediately captivated by her beauty. Despite his religious convictions, he succumbs to his desires and enters into a passionate relationship with her. However, as their love deepens, Romuald becomes increasingly disturbed by Clarimonde\'s mysterious nature and the dark secrets surrounding her. Eventually, he discovers that Clarimonde is a vampire, and his love for her is put to the ultimate test as he grapples with the conflict between his religious beliefs and his passion for her. "Clarimonde" explores themes of forbidden desire, temptation, and the eternal struggle between good and evil, creating a mesmerizing and chilling narrative that continues to fascinate readers with its blend of Gothic romance and supernatural elements.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'Clarimonde', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/clarimonde.jpg',
                              description:
                                  '"Clarimonde" is a haunting tale by Théophile Gautier, following the story of a young priest named Romuald who is drawn into a forbidden love affair with the enigmatic and seductive Clarimonde. Romuald, initially dedicated to his religious vows, encounters Clarimonde at a funeral procession and is immediately captivated by her beauty. Despite his religious convictions, he succumbs to his desires and enters into a passionate relationship with her. However, as their love deepens, Romuald becomes increasingly disturbed by Clarimonde\'s mysterious nature and the dark secrets surrounding her. Eventually, he discovers that Clarimonde is a vampire, and his love for her is put to the ultimate test as he grapples with the conflict between his religious beliefs and his passion for her. "Clarimonde" explores themes of forbidden desire, temptation, and the eternal struggle between good and evil, creating a mesmerizing and chilling narrative that continues to fascinate readers with its blend of Gothic romance and supernatural elements.',
                              // Pass the image path to the BookDetailsScreen
                            )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    recentAddedItems(
                        context,
                        'The Woman in White',
                        'lib/images/the_woman_in_white.jpg',
                        '"The Woman in White" by Wilkie Collins is a gripping Victorian-era mystery novel that unfolds through multiple narratives and perspectives. The story begins with Walter Hartright, a young drawing master, who encounters a mysterious woman dressed in white on a moonlit road. This chance meeting sets off a series of events that lead Walter into a tangled web of intrigue, deception, and betrayal. As he becomes entangled with the wealthy Fairlie family, Walter learns of their dark secrets, including the identity of the woman in white, who is revealed to be Anne Catherick, a mentally troubled figure with a connection to the family. Through twists and turns, the novel delves into themes of identity, madness, and the power dynamics of Victorian society. With its intricate plot and memorable characters, "The Woman in White" remains a classic of Victorian literature, celebrated for its suspenseful storytelling and its exploration of social issues of the time.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'The Woman in White', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/the_woman_in_white.jpg',
                              description:
                                  '"The Woman in White" by Wilkie Collins is a gripping Victorian-era mystery novel that unfolds through multiple narratives and perspectives. The story begins with Walter Hartright, a young drawing master, who encounters a mysterious woman dressed in white on a moonlit road. This chance meeting sets off a series of events that lead Walter into a tangled web of intrigue, deception, and betrayal. As he becomes entangled with the wealthy Fairlie family, Walter learns of their dark secrets, including the identity of the woman in white, who is revealed to be Anne Catherick, a mentally troubled figure with a connection to the family. Through twists and turns, the novel delves into themes of identity, madness, and the power dynamics of Victorian society. With its intricate plot and memorable characters, "The Woman in White" remains a classic of Victorian literature, celebrated for its suspenseful storytelling and its exploration of social issues of the time.',
                            )),
                    recentAddedItems(
                        context,
                        'The Abandoned Room',
                        'lib/images/the_abandoned_room.jpg',
                        '"An Abandoned Room" is a mystery novel by Wadsworth Camp, first published in 1917. The story follows detective Peter Clancy as he investigates a perplexing case involving the disappearance of a wealthy man, Arthur Sinclair. Sinclair vanishes from his mansion, leaving behind a locked and sealed room with no apparent exit. Clancy is called to solve the mystery, and as he delves deeper into the case, he uncovers a web of secrets, lies, and hidden motives among the suspects, including Sinclair\'s relatives and associates. As the investigation progresses, Clancy must navigate through a series of twists and turns, ultimately leading to a surprising and suspenseful conclusion. "An Abandoned Room" is praised for its clever plot, atmospheric setting, and engaging characters, making it a classic of early 20th-century mystery fiction.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'The Abandoned Room', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/the_abandoned_room.jpg',
                              description:
                                  '"An Abandoned Room" is a mystery novel by Wadsworth Camp, first published in 1917. The story follows detective Peter Clancy as he investigates a perplexing case involving the disappearance of a wealthy man, Arthur Sinclair. Sinclair vanishes from his mansion, leaving behind a locked and sealed room with no apparent exit. Clancy is called to solve the mystery, and as he delves deeper into the case, he uncovers a web of secrets, lies, and hidden motives among the suspects, including Sinclair\'s relatives and associates. As the investigation progresses, Clancy must navigate through a series of twists and turns, ultimately leading to a surprising and suspenseful conclusion. "An Abandoned Room" is praised for its clever plot, atmospheric setting, and engaging characters, making it a classic of early 20th-century mystery fiction.',
                              // Pass the image path to the BookDetailsScreen
                            )),
                    recentAddedItems(
                        context,
                        'The Analysis of Mind',
                        'lib/images/the_analysis_of_mind.jpg',
                        '"Analysis of Mind" by Bertrand Russell is a seminal work in the field of philosophy of mind, first published in 1921. In this book, Russell explores the nature of consciousness, perception, and mental processes, aiming to provide a systematic analysis of the workings of the human mind. Through a rigorous examination of various philosophical and psychological concepts, Russell addresses fundamental questions such as the nature of perception, the relationship between mind and matter, the concept of consciousness, and the nature of knowledge. He discusses topics including sense-data theory, introspection, memory, and the distinction between knowledge by acquaintance and knowledge by description. Russell\'s approach is characterized by his analytical rigor, clarity of expression, and his commitment to empiricism and logical analysis. "Analysis of Mind" remains a landmark work in the philosophy of mind, influencing subsequent thinkers and contributing to ongoing debates in the field.',
                        (
                                {Key? key,
                                required String title,
                                required String imagePath,
                                required String description}) =>
                            BookDetailsScreen(
                              key:
                                  UniqueKey(), // Provide a unique key for the screen
                              title:
                                  'The Analysis of Mind', // Pass the title to the BookDetailsScreen
                              imagePath: 'lib/images/the_analysis_of_mind.jpg',
                              description:
                                  '"Analysis of Mind" by Bertrand Russell is a seminal work in the field of philosophy of mind, first published in 1921. In this book, Russell explores the nature of consciousness, perception, and mental processes, aiming to provide a systematic analysis of the workings of the human mind. Through a rigorous examination of various philosophical and psychological concepts, Russell addresses fundamental questions such as the nature of perception, the relationship between mind and matter, the concept of consciousness, and the nature of knowledge. He discusses topics including sense-data theory, introspection, memory, and the distinction between knowledge by acquaintance and knowledge by description. Russell\'s approach is characterized by his analytical rigor, clarity of expression, and his commitment to empiricism and logical analysis. "Analysis of Mind" remains a landmark work in the philosophy of mind, influencing subsequent thinkers and contributing to ongoing debates in the field.',
                            )),
                  ],
                ),
                // Add more rows as needed
              ],
            ),
          ),

          // Contact us details
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(20),
            color: const Color.fromRGBO(129, 8, 61, 1.0),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact Us',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'Email: customersuport@libermaniac.com\nPhone: 0445636542\nAddress: 31 Market St, sydney, NSW, 2000',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),

          // Copyright
          Container(
            padding: const EdgeInsets.all(20),
            color: const Color.fromARGB(255, 77, 3, 35),
            child: const Center(
              child: Text(
                '© 2024 Liber Maniac. All Rights Reserved.',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//search bar
Widget searchBar() {
  return Container(
    padding: const EdgeInsets.all(16.0),
    child: const TextField(
      decoration: InputDecoration(
        hintText: 'Search...',
        border: OutlineInputBorder(),
        contentPadding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        prefixIcon: Icon(Icons.search),
      ),
    ),
  );
}

//Promotion bar
Widget promotionBar({required String message}) {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: const Color.fromRGBO(129, 8, 61, 1.0),
        borderRadius: BorderRadius.circular(5)),
    padding: const EdgeInsets.all(16.0),
    child: Text(
      message,
      textAlign: TextAlign.center,
      style: const TextStyle(
          fontSize: 28.0, fontWeight: FontWeight.bold, color: Colors.white),
    ),
  );
}

//Category items
Widget categoryItem(BuildContext context, itemName, String imagePath,
    Widget destinationScreen) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => destinationScreen),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.symmetric(
          horizontal: 5), // Add spacing between items
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 80,
            height: 60,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 5),
          SizedBox(
            height: 40,
            width: 100, // Adjust the height of the text container as needed
            child: Center(
              child: Text(
                itemName,
                style: const TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    ),
  );
}

// popular book item
Widget popularBookItem(
    BuildContext context,
    String title,
    String imagePath,
    String description,
    Widget Function(
            {Key key,
            required String title,
            required String imagePath,
            required String description})
        destinationScreen) {
  return GestureDetector(
    onTap: () {
      // Handle tap event, passing title and image path to the destination screen
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => destinationScreen(
                title: title, imagePath: imagePath, description: description)),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 60,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    ),
  );
}

// popular book item
Widget recentAddedItems(
    BuildContext context,
    String title,
    String imagePath,
    String description,
    Widget Function(
            {Key key,
            required String title,
            required String imagePath,
            required String description})
        destinationScreen) {
  return GestureDetector(
    onTap: () {
      // Handle tap event, passing title and image path to the destination screen
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => destinationScreen(
                title: title, imagePath: imagePath, description: description)),
      );
    },
    child: Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 60,
            height: 80,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    ),
  );
}
