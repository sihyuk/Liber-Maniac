import 'package:flutter/material.dart';
import 'package:liber_maniac/Screens/book_screen_detail.dart';

class BookList {
  final String title;
  final String imagePath;
  final String description;
  final double price;
  final String author;

  BookList({
    required this.title,
    required this.imagePath,
    required this.description,
    required this.price,
    required this.author,
  });
}

class HorrorPage extends StatelessWidget {
  HorrorPage({super.key});

  final List<BookList> bookList = [
    BookList(
      title: 'Clarimonde',
      imagePath: 'lib/images/clarimonde.jpg',
      description:
          '"Clarimonde" is a haunting tale by Théophile Gautier, following the story of a young priest named Romuald who is drawn into a forbidden love affair with the enigmatic and seductive Clarimonde. Romuald, initially dedicated to his religious vows, encounters Clarimonde at a funeral procession and is immediately captivated by her beauty. Despite his religious convictions, he succumbs to his desires and enters into a passionate relationship with her. However, as their love deepens, Romuald becomes increasingly disturbed by Clarimonde\'s mysterious nature and the dark secrets surrounding her. Eventually, he discovers that Clarimonde is a vampire, and his love for her is put to the ultimate test as he grapples with the conflict between his religious beliefs and his passion for her. "Clarimonde" explores themes of forbidden desire, temptation, and the eternal struggle between good and evil, creating a mesmerizing and chilling narrative that continues to fascinate readers with its blend of Gothic romance and supernatural elements.',
      price: 9.99,
      author: 'Théophile Gautier',
    ),
    BookList(
      title: 'The Art of war',
      imagePath: 'lib/images/the_art_of_war.jpg',
      description:
          'The Art of War by Sun Tzu is a timeless treatise on military strategy, focusing on principles applicable to warfare and broader aspects of conflict resolution. Through its concise and profound aphorisms, Sun Tzu elucidates the importance of strategic planning, understanding the terrain, exploiting the enemy\'s weaknesses, and the significance of adaptability and deception in achieving victory. Central themes include the idea that the ultimate victory is to defeat the enemy without engaging in direct conflict, emphasizing the importance of psychological warfare and the manipulation of perception. Sun Tzu\'s teachings transcend military contexts, offering insights into leadership, diplomacy, and the art of negotiation, making it indispensable not only for military leaders but also for anyone seeking to navigate the complexities of competition and conflict in various spheres of life.',
      price: 14.99,
      author: 'ASun Tzu',
    ),
    BookList(
      title: 'The Time Machine',
      imagePath: 'lib/images/the_time_machine.jpg',
      description:
          'The Time Machine by H.G. Wells is a classic science fiction novel that follows the story of an unnamed Time Traveler who invents a machine capable of traveling through time. He journeys far into the future, witnessing the evolution of humanity, where he encounters two distinct species: the gentle Eloi, who live above ground in a utopian society, and the monstrous Morlocks, who dwell underground and prey on the Eloi. The Time Traveler\'s adventures reveal a dystopian future where humanity has diverged into two distinct classes, representing the extremes of intellect and labor. As he struggles to understand this future world and find a way back to his own time, he confronts themes of social inequality, the consequences of scientific advancement, and the nature of human civilization. Through its imaginative narrative and thought-provoking exploration of time and society, The Time Machine remains a seminal work of science fiction literature, inspiring countless adaptations and continuing to captivate readers with its visionary storytelling.',
      price: 14.99,
      author: 'H.G. Wells',
    ),
    BookList(
      title: 'The Woman in White',
      imagePath: 'lib/images/the_woman_in_white.jpg',
      description:
          '"The Woman in White" by Wilkie Collins is a gripping Victorian-era mystery novel that unfolds through multiple narratives and perspectives. The story begins with Walter Hartright, a young drawing master, who encounters a mysterious woman dressed in white on a moonlit road. This chance meeting sets off a series of events that lead Walter into a tangled web of intrigue, deception, and betrayal. As he becomes entangled with the wealthy Fairlie family, Walter learns of their dark secrets, including the identity of the woman in white, who is revealed to be Anne Catherick, a mentally troubled figure with a connection to the family. Through twists and turns, the novel delves into themes of identity, madness, and the power dynamics of Victorian society. With its intricate plot and memorable characters, "The Woman in White" remains a classic of Victorian literature, celebrated for its suspenseful storytelling and its exploration of social issues of the time.',
      price: 14.99,
      author: 'Author 2',
    ),
    BookList(
      title: 'The Abandoned Room',
      imagePath: 'lib/images/the_abandoned_room.jpg',
      description:
          '"An Abandoned Room" is a mystery novel by Wadsworth Camp, first published in 1917. The story follows detective Peter Clancy as he investigates a perplexing case involving the disappearance of a wealthy man, Arthur Sinclair. Sinclair vanishes from his mansion, leaving behind a locked and sealed room with no apparent exit. Clancy is called to solve the mystery, and as he delves deeper into the case, he uncovers a web of secrets, lies, and hidden motives among the suspects, including Sinclair\'s relatives and associates. As the investigation progresses, Clancy must navigate through a series of twists and turns, ultimately leading to a surprising and suspenseful conclusion. "An Abandoned Room" is praised for its clever plot, atmospheric setting, and engaging characters, making it a classic of early 20th-century mystery fiction.',
      price: 14.99,
      author: 'Author 2',
    ),
    BookList(
      title: 'The Analysis of Mind',
      imagePath: 'lib/images/the_analysis_of_mind.jpg',
      description:
          '"Analysis of Mind" by Bertrand Russell is a seminal work in the field of philosophy of mind, first published in 1921. In this book, Russell explores the nature of consciousness, perception, and mental processes, aiming to provide a systematic analysis of the workings of the human mind. Through a rigorous examination of various philosophical and psychological concepts, Russell addresses fundamental questions such as the nature of perception, the relationship between mind and matter, the concept of consciousness, and the nature of knowledge. He discusses topics including sense-data theory, introspection, memory, and the distinction between knowledge by acquaintance and knowledge by description. Russell\'s approach is characterized by his analytical rigor, clarity of expression, and his commitment to empiricism and logical analysis. "Analysis of Mind" remains a landmark work in the philosophy of mind, influencing subsequent thinkers and contributing to ongoing debates in the field.',
      price: 14.99,
      author: 'Author 2',
    ),
    BookList(
      title: 'Clarimonde',
      imagePath: 'lib/images/clarimonde.jpg',
      description: 'Description of Comic 2',
      price: 14.99,
      author: 'Author 2',
    ),
    BookList(
      title: 'The Time Machine',
      imagePath: 'lib/images/the_time_machine.jpg',
      description:
          'The Time Machine by H.G. Wells is a classic science fiction novel that follows the story of an unnamed Time Traveler who invents a machine capable of traveling through time. He journeys far into the future, witnessing the evolution of humanity, where he encounters two distinct species: the gentle Eloi, who live above ground in a utopian society, and the monstrous Morlocks, who dwell underground and prey on the Eloi. The Time Traveler\'s adventures reveal a dystopian future where humanity has diverged into two distinct classes, representing the extremes of intellect and labor. As he struggles to understand this future world and find a way back to his own time, he confronts themes of social inequality, the consequences of scientific advancement, and the nature of human civilization. Through its imaginative narrative and thought-provoking exploration of time and society, The Time Machine remains a seminal work of science fiction literature, inspiring countless adaptations and continuing to captivate readers with its visionary storytelling.',
      price: 14.99,
      author: 'H.G. Wells',
    ),
    // Add more comics as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Horror',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color.fromRGBO(129, 8, 61, 1.0),
          iconTheme: const IconThemeData(color: Colors.white)),
      body: ListView.builder(
        itemCount: bookList.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              // Navigate to BookDetailsScreen when tapped
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsScreen(
                    key: UniqueKey(),
                    title: bookList[index].title,
                    imagePath: bookList[index].imagePath,
                    description: bookList[index].description,
                    price: bookList[index].price,
                  ),
                ),
              );
            },
            child: Card(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      bookList[index].imagePath,
                      width: 100,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListTile(
                          title: Text(bookList[index].title),
                          subtitle: Text('Author: ${bookList[index].author}'),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text(
                            'Price: \$${bookList[index].price.toStringAsFixed(2)}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
