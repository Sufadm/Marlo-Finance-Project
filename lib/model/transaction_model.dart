class TransactionModel {
  String? errorFlag;
  String? message;
  bool? hasMore;
  List<Data>? data;

  TransactionModel({this.errorFlag, this.message, this.hasMore, this.data});

  TransactionModel.fromJson(Map<String, dynamic> json) {
    errorFlag = json['error_flag'];
    message = json['message'];
    hasMore = json['has_more'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error_flag'] = errorFlag;
    data['message'] = message;
    data['has_more'] = hasMore;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? id;
  String? amount;
  String? status;
  String? sourceId;
  String? sourceType;
  String? transactionType;
  String? currency;
  String? createdAt;
  int? fee;
  String? description;
  String? settledAt;
  String? estimatedSettledAt;
  String? currency1;
  String? company;

  Data(
      {this.id,
      this.amount,
      this.status,
      this.sourceId,
      this.sourceType,
      this.transactionType,
      this.currency,
      this.createdAt,
      this.fee,
      this.description,
      this.settledAt,
      this.estimatedSettledAt,
      this.currency1,
      this.company});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    amount = json['amount'];
    status = json['status'];
    sourceId = json['sourceId'];
    sourceType = json['sourceType'];
    transactionType = json['transactionType'];
    currency = json['currency'];
    createdAt = json['createdAt'];
    fee = json['fee'];
    description = json['description'];
    settledAt = json['settledAt'];
    estimatedSettledAt = json['estimatedSettledAt'];
    currency1 = json['currency1'];
    company = json['company'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['amount'] = amount;
    data['status'] = status;
    data['sourceId'] = sourceId;
    data['sourceType'] = sourceType;
    data['transactionType'] = transactionType;
    data['currency'] = currency;
    data['createdAt'] = createdAt;
    data['fee'] = fee;
    data['description'] = description;
    data['settledAt'] = settledAt;
    data['estimatedSettledAt'] = estimatedSettledAt;
    data['currency1'] = currency1;
    data['company'] = company;
    return data;
  }
}
