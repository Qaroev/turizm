class TravelCard {
  String image;
  String imageText;
  String name;
  String subName;
  String day;
  String description;
  String price;
  String date;

  TravelCard(this.image, this.imageText, this.name, this.subName, this.day, this.description, this.price,
      this.date);
}

List<TravelCard> cardsTravel = [
  TravelCard("assets/images/ostrov.png", "Пасхальные каникулы", "Мальдивы", "Северный Мале Атолл", "7", "Хороший бюджетный вариант для любителей спокойного отдыха. Отель открыт в июле 2016 года.", "1320", "02.05.23"),
  TravelCard("assets/images/ostrov1.png", "Отдых на Бали", "Бали", "Отдых", "5", "Хороший бюджетный вариант для любителей спокойного отдыха. Отель открыт в июле 2016 года.", "1320", "02.05.23"),
];