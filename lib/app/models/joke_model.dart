class JokeModel {
  bool? error;
  int? amount;
  List<Jokes>? jokes;

  JokeModel({this.error, this.amount, this.jokes});

  JokeModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    amount = json['amount'];
    if (json['jokes'] != null) {
      jokes = <Jokes>[];
      json['jokes'].forEach((v) {
        jokes!.add(new Jokes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['amount'] = this.amount;
    if (this.jokes != null) {
      data['jokes'] = this.jokes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Jokes {
  String? category;
  String? type;
  String? joke;
  Flags? flags;
  int? id;
  bool? safe;
  String? lang;
  String? setup;
  String? delivery;

  Jokes(
      {this.category,
      this.type,
      this.joke,
      this.flags,
      this.id,
      this.safe,
      this.lang,
      this.setup,
      this.delivery});

  Jokes.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    type = json['type'];
    joke = json['joke'];
    flags = json['flags'] != null ? new Flags.fromJson(json['flags']) : null;
    id = json['id'];
    safe = json['safe'];
    lang = json['lang'];
    setup = json['setup'];
    delivery = json['delivery'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category'] = this.category;
    data['type'] = this.type;
    data['joke'] = this.joke;
    if (this.flags != null) {
      data['flags'] = this.flags!.toJson();
    }
    data['id'] = this.id;
    data['safe'] = this.safe;
    data['lang'] = this.lang;
    data['setup'] = this.setup;
    data['delivery'] = this.delivery;
    return data;
  }
}

class Flags {
  bool? nsfw;
  bool? religious;
  bool? political;
  bool? racist;
  bool? sexist;
  bool? explicit;

  Flags(
      {this.nsfw,
      this.religious,
      this.political,
      this.racist,
      this.sexist,
      this.explicit});

  Flags.fromJson(Map<String, dynamic> json) {
    nsfw = json['nsfw'];
    religious = json['religious'];
    political = json['political'];
    racist = json['racist'];
    sexist = json['sexist'];
    explicit = json['explicit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nsfw'] = this.nsfw;
    data['religious'] = this.religious;
    data['political'] = this.political;
    data['racist'] = this.racist;
    data['sexist'] = this.sexist;
    data['explicit'] = this.explicit;
    return data;
  }
}
