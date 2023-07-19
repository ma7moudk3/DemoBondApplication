import 'dart:convert';

import 'page.dart';
import 'payment_method.dart';

class Data {
  String? siteLogo;
  String? siteName;
  String? currencyName;
  String? address;
  String? whatsapp;
  String? facebook;
  String? twitter;
  String? instagram;
  String? youtube;
  String? phone;
  String? email;
  String? currencySymbol;
  List<dynamic>? mainCategories;
  List<Page>? pages;
  List<PaymentMethod>? paymentMethods;

  Data({
    this.siteLogo,
    this.siteName,
    this.currencyName,
    this.address,
    this.whatsapp,
    this.facebook,
    this.twitter,
    this.instagram,
    this.youtube,
    this.phone,
    this.email,
    this.currencySymbol,
    this.mainCategories,
    this.pages,
    this.paymentMethods,
  });

  @override
  String toString() {
    return 'Data(siteLogo: $siteLogo, siteName: $siteName, currencyName: $currencyName, address: $address, whatsapp: $whatsapp, facebook: $facebook, twitter: $twitter, instagram: $instagram, youtube: $youtube, phone: $phone, email: $email, currencySymbol: $currencySymbol, mainCategories: $mainCategories, pages: $pages, paymentMethods: $paymentMethods)';
  }

  factory Data.fromMap(Map<String, dynamic> data) => Data(
        siteLogo: data['site_logo'] as String?,
        siteName: data['site_name'] as String?,
        currencyName: data['currency_name'] as String?,
        address: data['address'] as String?,
        whatsapp: data['whatsapp'] as String?,
        facebook: data['facebook'] as String?,
        twitter: data['twitter'] as String?,
        instagram: data['instagram'] as String?,
        youtube: data['youtube'] as String?,
        phone: data['phone'] as String?,
        email: data['email'] as String?,
        currencySymbol: data['currency_symbol'] as String?,
        mainCategories: data['main_categories'] as List<dynamic>?,
        pages: (data['pages'] as List<dynamic>?)
            ?.map((e) => Page.fromMap(e as Map<String, dynamic>))
            .toList(),
        paymentMethods: (data['payment_methods'] as List<dynamic>?)
            ?.map((e) => PaymentMethod.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'site_logo': siteLogo,
        'site_name': siteName,
        'currency_name': currencyName,
        'address': address,
        'whatsapp': whatsapp,
        'facebook': facebook,
        'twitter': twitter,
        'instagram': instagram,
        'youtube': youtube,
        'phone': phone,
        'email': email,
        'currency_symbol': currencySymbol,
        'main_categories': mainCategories,
        'pages': pages?.map((e) => e.toMap()).toList(),
        'payment_methods': paymentMethods?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Data].
  factory Data.fromJson(String data) {
    return Data.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Data] to a JSON string.
  String toJson() => json.encode(toMap());

  Data copyWith({
    String? siteLogo,
    String? siteName,
    String? currencyName,
    String? address,
    String? whatsapp,
    String? facebook,
    String? twitter,
    String? instagram,
    String? youtube,
    String? phone,
    String? email,
    String? currencySymbol,
    List<dynamic>? mainCategories,
    List<Page>? pages,
    List<PaymentMethod>? paymentMethods,
  }) {
    return Data(
      siteLogo: siteLogo ?? this.siteLogo,
      siteName: siteName ?? this.siteName,
      currencyName: currencyName ?? this.currencyName,
      address: address ?? this.address,
      whatsapp: whatsapp ?? this.whatsapp,
      facebook: facebook ?? this.facebook,
      twitter: twitter ?? this.twitter,
      instagram: instagram ?? this.instagram,
      youtube: youtube ?? this.youtube,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      mainCategories: mainCategories ?? this.mainCategories,
      pages: pages ?? this.pages,
      paymentMethods: paymentMethods ?? this.paymentMethods,
    );
  }
}
