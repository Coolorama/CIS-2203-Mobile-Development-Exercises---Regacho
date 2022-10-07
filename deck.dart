import "dart:io";

int getNumber() {
  int num = int.parse(stdin.readLineSync()!);
  return num;
}

String getText() {
  print("Enter a Suit (Diamonds, Hearts, Clubs, Spades): ");
  String text = stdin.readLineSync()!;
  return text;
}

List<String> makeADeck(List<String> cards) {
  List<String> deck = [
    "Ace of Diamonds",
    "Two of Diamonds",
    "Three of Diamonds",
    "Four of Diamonds",
    "Five of Diamonds",
    "Six of Diamonds",
    "Seven of Diamonds",
    "Eight of Diamonds",
    "Nine of Diamonds",
    "Ten of Diamonds",
    "Jack of Diamonds",
    "Queen of Diamonds",
    "King of Diamonds",
    "Ace of Hearts",
    "Two of Hearts",
    "Three of Hearts",
    "Four of Hearts",
    "Five of Hearts",
    "Six of Hearts",
    "Seven of Hearts",
    "Eight of Hearts",
    "Nine of Hearts",
    "Ten of Hearts",
    "Jack of Hearts",
    "Queen of Hearts",
    "King of Hearts",
    "Ace of Clubs",
    "Two of Clubs",
    "Three of Clubs",
    "Four of Clubs",
    "Five of Clubs",
    "Six of Clubs",
    "Seven of Clubs",
    "Eight of Clubs",
    "Nine of Clubs",
    "Ten of Clubs",
    "Jack of Clubs",
    "Queen of Clubs",
    "King of Club",
    "Ace of Spades",
    "Two of Spades",
    "Three of Spades",
    "Four of Spades",
    "Five of Spades",
    "Six of Spades",
    "Seven of Spades",
    "Eight of Spades",
    "Nine of Spades",
    "Ten of Spades",
    "Jack of Spades",
    "Queen of Spades",
    "King of Spades"
  ];
  cards = deck;

  return cards;
}

void printCards(List<String> cards) {
  print(cards.length);
  if (cards.length > 0) {
    print(cards);
  } else {
    print("Make a Deck First");
  }
}

List<String> shuffle(List<String> cards) {
  if (cards.length > 0) {
    cards.shuffle();
  } else {
    print("Make a Deck First");
  }
  return cards;
}

void cardsWithSuit(List<String> cards, String suit) {
  Iterable<String> suitCards = cards.where((item) {
    return item.contains(suit);
  });
  print(suitCards);
}

void options() {
  List<String> cards = [];
  int exitNumber = 5;
  int choose = 0;

  while (choose != exitNumber) {
    print("Choose a Function!");
    print("1 - Make a Deck!");
    print("2 - Print Deck!");
    print("3 - Shuffle Deck!");
    print("4 - Cards With Suit!");
    print("5 - Exit Program!");
    choose = getNumber();

    if (choose == 1) {
      cards = makeADeck(cards);
    } else if (choose == 2) {
      printCards(cards);
    } else if (choose == 3) {
      cards = shuffle(cards);
    } else if (choose == 4) {
      String suit = getText();
      cardsWithSuit(cards, suit);
    } else {
      print("Exiting the Program");
    }
  }
}

void main() {
  options();
}
