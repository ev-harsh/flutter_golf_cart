class Rides {
  String date;
  String id;
  String amount;
  String distance;
  String calories;
  String time;
  String carbon;

  Rides(
      {this.date,
      this.id,
      this.amount,
      this.distance,
      this.calories,
      this.time,
      this.carbon});

  Rides.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    id = json['id'];
    amount = json['amount'];
    distance = json['distance'];
    calories = json['calories'];
    time = json['time'];
    carbon = json['carbon'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['date'] = this.date;
    data['id'] = this.id;
    data['amount'] = this.amount;
    data['distance'] = this.distance;
    data['calories'] = this.calories;
    data['time'] = this.time;
    data['carbon'] = this.carbon;
    return data;
  }
}
