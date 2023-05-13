import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'email_hint': 'Email',
          'internet_exception':
              "We're unable tp show results.\nPlease check your data\nconenction.",
          'general_exception':
              "We're unable to process your request.\n Please try again",
          'splash_text': 'Zainik\nShop',
          'search_placeholder': 'Search Items..',
          'search_result_text': 'Search Result',
          'login': 'Login',
          'password_hint': 'Password',
          'user_name': 'Himu',
          'user_lc': '12/5 Jhenaidah Sadar',
          'nav_home': 'Home',
          'nav_explore': 'Explore',
          'nav_message': 'Message',
          'nav_store': 'Store',
          'flash_sales': 'Flash Sales',
          'trending': 'Trending',
          'retry': 'Retry',
          'add_cart': 'Add to Cart',
          'colors': 'Colors',
          'see_all': 'See All',
        },
        'bn': {
          'splash_text': 'যাইনিক সপ',
          'internet_exception': "কোন ডেটা সংযোগ নেই।\nদয়া করে ডেটা চালু\nকরুন।",
          'general_exception':
              "আমরা আপনার অনুরোধ রাখতে পারছি না।\n পুনরায় চেষ্টা করুন।",
          'user_name': 'হিমু',
          'user_lc': '১২/৫ ঝিনাইদাহ সদর',
          'search_placeholder': 'সার্চ করুন',
          'nav_home': 'হোম',
          'nav_explore': 'অনুসন্ধান',
          'nav_message': 'বার্তা',
          'nav_store': 'স্টোর',
          'flash_sales': 'ফ্ল্যাশ সেলস',
          'retry': 'রিফ্রেশ',
          'trending': 'ট্রেন্ডিং ফ্যাশন',
          'add_cart': 'কার্টে যুক্ত করুন',
          'colors': 'রং',
          'see_all': 'দেখুন',
        },
      };
}

// import 'package:get/get.dart';
// import 'package:get_localization/utils/langs/ar.dart';
// import 'package:get_localization/utils/langs/en.dart';

// class Translation extends Translations {
//   @override
//   // TODO: implement keys
//   Map<String, Map<String, String>> get keys => {
//         'en': en,
//         'ar': ar,
//       };
// }