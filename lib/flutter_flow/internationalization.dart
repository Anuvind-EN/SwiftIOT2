import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // SplashScreen
  {
    'jqegwnxp': {
      'en': 'SWIFT',
      'hi': '',
    },
    'r40eleyd': {
      'en':
          '\"Introducing the Smart Farming System - a revolutionary way to grow and cultivate crops using advanced sensor technology and solar-powered slave modules. Our system accurately monitors temperature, humidity, and soil moisture levels, and uses this information to optimize irrigation and pest control. The system includes a user-friendly mobile app that allows you to control the water pump and buzzer remotely. Whether you\'re a seasoned farmer or just starting out, the Smart Farming System is the perfect solution for efficient, sustainable, and enjoyable farming.\"',
      'hi': '',
    },
    'w29pn3xx': {
      'en': 'Register',
      'hi': '',
    },
    'x7qiori4': {
      'en': 'Login',
      'hi': '',
    },
    '502at4rs': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Login
  {
    'bomwr0bw': {
      'en': 'SWIFT',
      'hi': '',
    },
    '6fxo9bj1': {
      'en': 'Email Address',
      'hi': '',
    },
    'cbzsmqb3': {
      'en': 'Your email...',
      'hi': '',
    },
    'navje4c4': {
      'en': 'Password',
      'hi': '',
    },
    'bicw7mof': {
      'en': 'Enter your password here...',
      'hi': '',
    },
    'g2i44jfg': {
      'en': 'Login',
      'hi': '',
    },
    'fuhn0vaa': {
      'en': 'Don’t have an account yet? ',
      'hi': '',
    },
    'pv7lq8so': {
      'en': 'Register',
      'hi': '',
    },
    '52tuujrn': {
      'en': 'Please fill in a valid email address...',
      'hi': '',
    },
    'dr7712kl': {
      'en': 'That password doesn\'t match.',
      'hi': '',
    },
    'mym5vu81': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Register
  {
    'tx938eml': {
      'en': 'SWIFT',
      'hi': '',
    },
    'eand2yq3': {
      'en': 'Full Name',
      'hi': '',
    },
    'q3x2zf9t': {
      'en': 'Enter your name here...',
      'hi': '',
    },
    'fm6kiroo': {
      'en': 'Email Address',
      'hi': '',
    },
    'ev3wu3jn': {
      'en': 'Enter your email here...',
      'hi': '',
    },
    'valwvd6r': {
      'en': 'Password',
      'hi': '',
    },
    'l9kdwgu8': {
      'en': 'Enter your password here...',
      'hi': '',
    },
    '8fg77o4h': {
      'en': 'Confirm Password',
      'hi': '',
    },
    'hiwpdaje': {
      'en': 'Confirm password here...',
      'hi': '',
    },
    '86gnod5u': {
      'en': 'Create Account',
      'hi': '',
    },
    'wuy4zvts': {
      'en': 'Don’t have an account yet? ',
      'hi': '',
    },
    'l7vqphxe': {
      'en': 'Login',
      'hi': '',
    },
    'a9g2s7la': {
      'en': 'Home',
      'hi': '',
    },
  },
  // EditProfile
  {
    '8oax77b7': {
      'en': 'Update Account Information',
      'hi': '',
    },
    'azy9xn7u': {
      'en': 'Full Name',
      'hi': '',
    },
    'iqk6u7p2': {
      'en': 'Please enter your full name...',
      'hi': '',
    },
    'rf8zajjc': {
      'en': 'Email Address',
      'hi': '',
    },
    'xr47kaqu': {
      'en': 'Your email...',
      'hi': '',
    },
    '675p3dda': {
      'en': 'Save Changes',
      'hi': '',
    },
    'c0k28581': {
      'en': 'Please fill in a valid email address...',
      'hi': '',
    },
    'nn3nvy5m': {
      'en': 'Please fill in a valid email address...',
      'hi': '',
    },
    '5rmb31yd': {
      'en': 'Edit Profile',
      'hi': '',
    },
    'lc2jnf8t': {
      'en': 'Home',
      'hi': '',
    },
  },
  // MyProfile
  {
    's8wf66h8': {
      'en': 'Welcome',
      'hi': '',
    },
    '366ljlqt': {
      'en': 'Account Information',
      'hi': '',
    },
    'ye8q2yrd': {
      'en': 'Edit Profile',
      'hi': '',
    },
    'hefan80l': {
      'en': 'Change Password',
      'hi': '',
    },
    '8qm7jduw': {
      'en': 'Switch to Dark Mode',
      'hi': '',
    },
    'ka9ardig': {
      'en': 'Switch to Light Mode',
      'hi': '',
    },
    '5qdxvuro': {
      'en': 'Log Out',
      'hi': '',
    },
    'wdraxapg': {
      'en': 'App Version v1.0',
      'hi': '',
    },
    'krss1wg1': {
      'en': '--',
      'hi': '',
    },
  },
  // ChangePassword
  {
    'diugbgju': {
      'en':
          'Enter your email and we will send a reset password link to your email for you to update it.',
      'hi': '',
    },
    '1ugvo4lh': {
      'en': 'Email address here...',
      'hi': '',
    },
    'wmrbsfa7': {
      'en': 'We will send a link to your email...',
      'hi': '',
    },
    'vsdsmfuz': {
      'en': 'Send Link',
      'hi': '',
    },
    '51rzt67i': {
      'en': 'Please fill in a new password..',
      'hi': '',
    },
    'zrv5xzt7': {
      'en': 'Change Password',
      'hi': '',
    },
    'vldf6jzv': {
      'en': 'Home',
      'hi': '',
    },
  },
  // emptyList_tasks
  {
    'wqawnh0w': {
      'en': 'You don\'t have any tasks',
      'hi': '',
    },
    'gk4xv2wi': {
      'en': 'Create tasks by tapping the button below.',
      'hi': '',
    },
    'him5iaxk': {
      'en': 'Create Task',
      'hi': '',
    },
  },
  // CreateTask_new
  {
    '7dan52i0': {
      'en': 'Add Task',
      'hi': '',
    },
    'n2jb1q2v': {
      'en': 'Fill out the details below to add a new task.',
      'hi': '',
    },
    'lcxf3u56': {
      'en': 'Task Name',
      'hi': '',
    },
    'wr1fvsxr': {
      'en': 'Enter your task here....',
      'hi': '',
    },
    'l578w56q': {
      'en': 'Details',
      'hi': '',
    },
    'yvjxfg1b': {
      'en': 'Enter a description here...',
      'hi': '',
    },
    'g15up3p8': {
      'en': 'Cancel',
      'hi': '',
    },
    'jelapbcw': {
      'en': 'Create Task',
      'hi': '',
    },
  },
  // CreateTask_Edit
  {
    'mipaq56q': {
      'en': 'Add Task',
      'hi': '',
    },
    'tdqemf4k': {
      'en': 'Fill out the details below to add a new task.',
      'hi': '',
    },
    'ga9pisan': {
      'en': 'Task Name',
      'hi': '',
    },
    'mj77l5ae': {
      'en': 'Enter your task here....',
      'hi': '',
    },
    'pdt0mpll': {
      'en': 'Details',
      'hi': '',
    },
    'nwvmmkv2': {
      'en': 'Enter a description here...',
      'hi': '',
    },
    'fw0oqrnv': {
      'en': 'Current Due Date',
      'hi': '',
    },
    'c5db1zsh': {
      'en': 'Cancel',
      'hi': '',
    },
    'kybqfn97': {
      'en': 'Update Task',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    'hghvzrkb': {
      'en': '',
      'hi': '',
    },
    '3wlt575h': {
      'en': '',
      'hi': '',
    },
    'iu70shul': {
      'en': '',
      'hi': '',
    },
    'eg8ogwvg': {
      'en': '',
      'hi': '',
    },
    'qq53koaf': {
      'en': '',
      'hi': '',
    },
    '77rfz9kc': {
      'en': '',
      'hi': '',
    },
    'f9gprcda': {
      'en': '',
      'hi': '',
    },
    'ymgkxjfu': {
      'en': '',
      'hi': '',
    },
    '1wqpdtc4': {
      'en': '',
      'hi': '',
    },
    '3agjlsat': {
      'en': '',
      'hi': '',
    },
    'rut9697z': {
      'en': '',
      'hi': '',
    },
    '03bii9oy': {
      'en': '',
      'hi': '',
    },
    'i96caezk': {
      'en': '',
      'hi': '',
    },
    'zkx8y0fz': {
      'en': '',
      'hi': '',
    },
    'tknrrht2': {
      'en': '',
      'hi': '',
    },
    '5yt2enro': {
      'en': '',
      'hi': '',
    },
    'yecj5hyj': {
      'en': '',
      'hi': '',
    },
    'k7gsjsxi': {
      'en': '',
      'hi': '',
    },
    'df75fwom': {
      'en': '',
      'hi': '',
    },
    '5ia75ihn': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
