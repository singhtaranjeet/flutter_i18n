class Scientist {
  Scientist(
      {required this.name,
      required this.invention,
      required this.photoLink,
      required this.country,
      required this.year});

  factory Scientist.empty() => Scientist(
        country: '',
        invention: '',
        name: '',
        photoLink: '',
        year: 0,
      );

  final String name;
  final String invention;
  final String photoLink;
  final String country;
  final int year;
}
