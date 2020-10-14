class UIDesigner {
  // Database
  int id;
  String username;

  // Personal Info
  String avatar;
  String cover;
  String name;
  String description;

  // Location
  String job;
  String address;
  String location;

  // Soical Media
  String facebook;
  String twitter;
  String instagram;
  String linkedin;

  // Portfolio
  String website;
  String dribbble;
  String behance;

  // Freelance
  String fiverr;
  String upwork;

  // Direct
  String skype;
  List<String> emails;
  List<String> phone;

  UIDesigner({
    this.id,
    this.username,
    this.avatar,
    this.cover = "assets/user/cover.jpg",
    this.name,
    this.description,
    this.address,
    this.job,
    this.location,
    this.facebook,
    this.twitter,
    this.instagram,
    this.linkedin,
    this.skype,
    this.dribbble,
    this.behance,
    this.website,
    this.fiverr,
    this.upwork,
    this.emails,
    this.phone,
  });
}