import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'uikit_localizations_en.dart';
import 'uikit_localizations_zh.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/uikit_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh')
  ];

  /// No description provided for @uikitAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio'**
  String get uikitAudio;

  /// No description provided for @uikitFile.
  ///
  /// In en, this message translates to:
  /// **'File'**
  String get uikitFile;

  /// No description provided for @uikitVideo.
  ///
  /// In en, this message translates to:
  /// **'Video'**
  String get uikitVideo;

  /// No description provided for @uikitLocation.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get uikitLocation;

  /// No description provided for @uikitImage.
  ///
  /// In en, this message translates to:
  /// **'Image'**
  String get uikitImage;

  /// No description provided for @uikitCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get uikitCustom;

  /// No description provided for @uikitCamera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get uikitCamera;

  /// No description provided for @uikitAlbum.
  ///
  /// In en, this message translates to:
  /// **'Album'**
  String get uikitAlbum;

  /// No description provided for @uikitFiles.
  ///
  /// In en, this message translates to:
  /// **'Files'**
  String get uikitFiles;

  /// No description provided for @uikitDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get uikitDelete;

  /// No description provided for @uikitDeleteConversation.
  ///
  /// In en, this message translates to:
  /// **'Delete conversation'**
  String get uikitDeleteConversation;

  /// No description provided for @uikitConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get uikitConfirm;

  /// No description provided for @uikitCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get uikitCancel;

  /// No description provided for @holdToTalk.
  ///
  /// In en, this message translates to:
  /// **'Hold to Talk'**
  String get holdToTalk;

  /// No description provided for @releaseToSend.
  ///
  /// In en, this message translates to:
  /// **'Release to Send'**
  String get releaseToSend;

  /// No description provided for @releaseToCancel.
  ///
  /// In en, this message translates to:
  /// **'Release to Cancel'**
  String get releaseToCancel;

  /// No description provided for @uikitCopy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get uikitCopy;

  /// No description provided for @uikitRecall.
  ///
  /// In en, this message translates to:
  /// **'Unsend'**
  String get uikitRecall;

  /// No description provided for @uikitSend.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get uikitSend;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
