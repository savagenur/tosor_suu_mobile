class Area {
  bool? isExpanded;
  String? title;
  late int number;
  late List<Street> street;

  Area({
    this.title = "Участок",
    this.isExpanded = false,
    required this.number,
    required this.street,
  });

  Area.fromJson(Map<String, dynamic> json) {
    isExpanded = json['isExpanded'];
    title = json['title'];
    number = json['number'];
    if (json['street'] != null) {
      street = <Street>[];
      json['street'].forEach((v) {
        street.add(Street.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isExpanded'] = false;
    data['title'] = "Участок";

    data['number'] = this.number;
    if (this.street != null) {
      data['street'] = this.street.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Street {
  late bool isExpanded;
  String? title;
  String? streetName;
  int? number;
  String? date;
  List<House>? house;

  Street(
      {this.isExpanded = false,
      this.title = "Улица",
      this.number,
      this.streetName,
      this.date,
      this.house});

  Street.fromJson(Map<String, dynamic> json) {
    isExpanded = json['isExpanded'];
    title = json['title'];
    streetName = json['streetName'];
    number = json['number'];
    date = json['date'];
    if (json['house'] != null) {
      house = <House>[];
      json['house'].forEach((v) {
        house!.add(House.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isExpanded'] = false;
    data['title'] = "Улица";
    data['streetName'] = this.streetName;
    data['number'] = this.number;
    data['date'] = this.date;
    if (this.house != null) {
      data['house'] = this.house!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class House {
  bool? isExpanded;
  String? title;
  int? number;
  List<Entrance>? entrance;

  House(
      {this.isExpanded = false,
      this.title = "Дом",
      this.number,
      this.entrance});

  House.fromJson(Map<String, dynamic> json) {
    isExpanded = json['isExpanded'];
    title = json['title'];
    number = json['number'];
    if (json['entrance'] != null) {
      entrance = <Entrance>[];
      json['entrance'].forEach((v) {
        entrance!.add(Entrance.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isExpanded'] = false;
    data['title'] = "Дом";
    data['number'] = this.number;
    if (this.entrance != null) {
      data['flat'] = this.entrance!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Entrance {
  bool? isExpanded;
  String? title;
  int? number;
  List<Flat>? flat;

  Entrance(
      {this.isExpanded = false,
      this.title = "Подъезд",
      this.number,
      this.flat});

  Entrance.fromJson(Map<String, dynamic> json) {
    isExpanded = json['isExpanded'];
    title = json['title'];
    number = json['number'];
    if (json['flat'] != null) {
      flat = <Flat>[];
      json['flat'].forEach((v) {
        flat!.add(Flat.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isExpanded'] = false;
    data['title'] = "Дом";
    data['number'] = this.number;
    if (this.flat != null) {
      data['flat'] = this.flat!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Flat {
  bool? isExpanded;
  String? title;
  int? number;
  int? debt;
  int? electricMeterId;
  int? isRecordedElectricMeter;
  bool? isExistElectricMeter;

  Flat(
      {this.isExpanded = false,
      this.title = "Квартира",
      this.number,
      this.isExistElectricMeter =true,
      this.isRecordedElectricMeter=0,
      this.debt,
      this.electricMeterId});

  Flat.fromJson(Map<String, dynamic> json) {
    isExpanded = json['isExpanded'];
    title = json['title'];
    number = json['number'];
    isExistElectricMeter = json['isExistElectricMeter'];
    isRecordedElectricMeter = json['isRecordedElectricMeter'];
    debt = json['debt'];
    electricMeterId = json['electric_meter_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['isExpanded'] = false;
    data['title'] = "Квартира";
    data['number'] = this.number;
    data['isExistElectricMeter'] = this.isExistElectricMeter;
    data['isRecordedElectricMeter'] = this.isRecordedElectricMeter;
    data['debt'] = this.debt;
    data['electric_meter_id'] = this.electricMeterId;
    return data;
  }
}
