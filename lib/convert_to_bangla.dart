const banglaNumber = ['০', '১', '২', '৩', '৪', '৫', '৬', '৭', '৮', '৯'];

const bengaliMonth = [
  'এপ্রিল',
  'মে',
  'মার্চ',
  'এপ্রিল',
  'জুন',
  'জুলাই',
  'আগস্ট',
  'সেপ্টেম্বর',
  'অক্টোবর',
  'নভেম্বর',
  'ডিসেম্বর'
];
const englishNumber = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
const gregEquivalentBanglaMonths = [
  "পৌষ",
  "মাঘ",
  "ফাল্গুন",
  "চৈত্র",
  "বৈশাখ",
  "জ্যৈষ্ঠ",
  "আষাঢ়",
  "শ্রাবণ",
  "ভাদ্র",
  "আশ্বিন",
  "কার্তিক",
  "অগ্রহায়ণ"
];
const banglaWeekdays = [
  "সোমবার",
  "মঙ্গলবার",
  "বুধবার",
  "বৃহস্পতিবার",
  "শুক্রবার",
  "শনিবার",
  "রবিবার"
];
const bdAllDistrictNames = [
  "ঢাকা",
  "খুলনা",
  "গুজরাবাড়ী",
  "কিশোরগঞ্জ",
  "মাগুরা",
  "মেহেরপুর",
  "নারায়ালগঞ্জ",
  "রাজবাড়ী",
  "শরীয়তপুর",
  "টাঙ্গাইল",
  "বরিশাল",
  "চট্টগ্রাম",
  "সিলেট",
  "মৌলভীবাজার",
  "রংপুর",
  "সিলেট",
  "কুড়িগ্রাম",
  "লক্ষ্মীপুর",
  "ময়মনসিংহ",
  "খুলনা",
  "চট্টগ্রাম",
  "সিলেট",
  "রাজশাহী",
  "ময়মনসিংহ",
  "খুলনা",
];

// make a package for converting english to bangla

class BanglaUtitility {
// convert english number to bangla number
  static String convertToBangla(String english) {
    String bengali = '';
    for (int i = 0; i < english.length; i++) {
      switch (english[i]) {
        case '0':
          bengali += '০';
          break;
        case '1':
          bengali += '১';
          break;
        case '2':
          bengali += '২';
          break;
        case '3':
          bengali += '৩';
          break;
        case '4':
          bengali += '৪';
          break;
        case '5':
          bengali += '৫';
          break;
        case '6':
          bengali += '৬';
          break;
        case '7':
          bengali += '৭';
          break;
        case '8':
          bengali += '৮';
          break;
        case '9':
          bengali += '৯';
          break;
        default:
          bengali += english[i];
      }
    }
    return bengali;
  }

  // converting english number to bengali number
  static String convertToEnglish(String number) {
    String englishNumber = '';
    for (int i = 0; i < number.length; i++) {
      int index = banglaNumber.indexOf(number[i]);
      englishNumber += banglaNumber[index];
    }
    return englishNumber;
  }

  // greg equivlent bangla month
  static String gregEquivlentBanglaMonth(int month) {
    return gregEquivalentBanglaMonths[month - 1];
  }

// bangla week days
  static String banglaWeekDays(int day) {
    return banglaWeekdays[day];
  }

  // bangla month
  static String banglaMonth(int month) {
    return bengaliMonth[month - 1];
  }

  // all bd districts names
  static String bdDistrictsNames(int index) {
    return bdAllDistrictNames[index];
  }

// bangla date
  static String banglaDate(int day, int month, int year) {
    return '$day ${banglaMonth(month)} $year';
  }

  // is leap year or not
  static bool isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || year % 400 == 0;
  }

// english to bangla dictionary
  static String englishToBanglaText(String english) {
    String bangla = '';
    for (int i = 0; i < english.length; i++) {
      switch (english[i]) {
        case 'a':
          bangla += 'অ';
          break;
        case 'b':
          bangla += 'ব';
          break;
        case 'c':
          bangla += 'চ';
          break;
        case 'd':
          bangla += 'ড';
          break;
        case 'e':
          bangla += 'এ';
          break;
        case 'f':
          bangla += 'ফ';
          break;
        case 'g':
          bangla += 'গ';
          break;
        case 'h':
          bangla += 'হ';
          break;
        case 'i':
          bangla += 'ই';
          break;
        case 'j':
          bangla += 'জ';
          break;
        case 'k':
          bangla += 'ক';
          break;
        case 'l':
          bangla += 'ল';
          break;
        case 'm':
          bangla += 'ম';
          break;
        case 'n':
          bangla += 'ন';
          break;
        case 'o':
          bangla += 'ও';
          break;
        case 'p':
          bangla += 'প';
          break;
        case 'q':
          bangla += 'ক';
          break;
        case 'r':
          bangla += 'র';
          break;
        case 's':
          bangla += 'স';
          break;
        case 't':
          bangla += 'ত';
          break;
        case 'u':
          bangla += 'উ';
          break;
        case 'v':
          bangla += 'ভ';
          break;
        case 'w':
          bangla += 'ও';
          break;
        case 'x':
          bangla += 'ক';
          break;
        case 'y':
          bangla += 'ই';
          break;
        case 'z':
          bangla += 'জ';
          break;
        case 'A':
          bangla += 'আ';
          break;
        case 'B':
          bangla += 'ব';
          break;
        case 'C':
          bangla += 'চ';
          break;
        case 'D':
          bangla += 'ড';
          break;
        case 'E':
          bangla += 'এ';
          break;
        case 'F':
          bangla += 'ফ';
          break;
        case 'G':
          bangla += 'গ';
          break;
        case 'H':
          bangla += 'হ';
          break;
        case 'I':
          bangla += 'ই';
          break;
        case 'J':
          bangla += 'জ';
          break;
        case 'K':
          bangla += 'ক';
          break;
        case 'L':
          bangla += 'ল';
          break;
        case 'M':
          bangla += 'ম';
          break;
        case 'N':
          bangla += 'ন';
          break;
        case 'O':
          bangla += 'ও';
          break;
        case 'P':
          bangla += 'প';
          break;
        case 'Q':
          bangla += 'ক';
          break;
        case 'R':
          bangla += 'র';
          break;
        case 'S':
          bangla += 'স';
          break;
        case 'T':
          bangla += 'ত';
          break;
        case 'U':
          bangla += 'উ';
          break;
        case 'V':
          bangla += 'ভ';
          break;
        case 'W':
          bangla += 'ও';
          break;
        case 'X':
          bangla += 'ক';
          break;
        case 'Y':
          bangla += 'ই';
          break;
        case 'Z':
          bangla += 'জ';
          break;
        case '0':
          bangla += '০';
          break;
        case '1':
          bangla += '১';
          break;
        case '2':
          bangla += '২';
          break;
        case '3':
          bangla += '৩';
          break;
        case '4':
          bangla += '৪';
          break;
        case '5':
          bangla += '৫';
          break;
        case '6':
          bangla += '৬';
          break;
        case '7':
          bangla += '৭';
          break;
        case '8':
          bangla += '৮';
          break;
        case '9':
          bangla += '৯';
          break;
      }
    }
    return bangla;
  }
}
