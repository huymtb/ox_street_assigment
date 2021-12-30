// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Ox Street`
  String get appName {
    return Intl.message(
      'Ox Street',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `All listings`
  String get allList {
    return Intl.message(
      'All listings',
      name: 'allList',
      desc: '',
      args: [],
    );
  }

  /// `Ranking listings`
  String get rankList {
    return Intl.message(
      'Ranking listings',
      name: 'rankList',
      desc: '',
      args: [],
    );
  }

  /// `Just dropped`
  String get dropped {
    return Intl.message(
      'Just dropped',
      name: 'dropped',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get seeAll {
    return Intl.message(
      'See all',
      name: 'seeAll',
      desc: '',
      args: [],
    );
  }

  /// `There is no product`
  String get emptyProduct {
    return Intl.message(
      'There is no product',
      name: 'emptyProduct',
      desc: '',
      args: [],
    );
  }

  /// `Create at`
  String get createAt {
    return Intl.message(
      'Create at',
      name: 'createAt',
      desc: '',
      args: [],
    );
  }

  /// `Guaranteed Authentic`
  String get guaranteed {
    return Intl.message(
      'Guaranteed Authentic',
      name: 'guaranteed',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status {
    return Intl.message(
      'Status',
      name: 'status',
      desc: '',
      args: [],
    );
  }

  /// `Release date`
  String get releaseDate {
    return Intl.message(
      'Release date',
      name: 'releaseDate',
      desc: '',
      args: [],
    );
  }

  /// `Rank`
  String get rank {
    return Intl.message(
      'Rank',
      name: 'rank',
      desc: '',
      args: [],
    );
  }

  /// `Product details`
  String get productDetails {
    return Intl.message(
      'Product details',
      name: 'productDetails',
      desc: '',
      args: [],
    );
  }

  /// `Similar product`
  String get similarProducts {
    return Intl.message(
      'Similar product',
      name: 'similarProducts',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
