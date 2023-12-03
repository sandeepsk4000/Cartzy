import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date){
    date??=DateTime.now();
    return DateFormat('dd-MMM-YYYY').format(date);//Customize the date format as needed
  }

  static String formatCurrency(double amount){
    return NumberFormat.currency(symbol: '₹ ', locale: "HI").format(amount);//Customize the currency locale and symbol as needed
  }
  // static String formatePhoneNumber(String phoneNumber){
  //   if (phoneNumber.length==10) {
  //     return '(${phoneNumber.substring(0,3)})${phoneNumber.substring(3,6)}${phoneNumber.substring(6)}';
  //   }else if(phoneNumber.length==11){
  //     return '(${phoneNumber.substring(0,4)})${phoneNumber.substring(4,7)}${phoneNumber.substring(7)}';
  //   }else{
  //     return phoneNumber;
  //   }
  // }
  //INDIAN FORMAT PHONE NUMBER!!!
  static String formatPhoneNumberIndian(String phoneNumber) {
    phoneNumber = phoneNumber.replaceAll("[^0-9]", ""); // Remove non-digit characters
    

    if (phoneNumber.length == 10) {
        return "+91-(${phoneNumber.substring(0, 3)})-${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}";
    } else if (phoneNumber.length == 11) {
        return "+91-(${phoneNumber.substring(0, 4)})-${phoneNumber.substring(4, 7)}-${phoneNumber.substring(7)}";
    } else {
        return phoneNumber;
    }
}
static String interNationalFormatPhoneNumber(String phoneNumber) {
  var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

  // Extract the country code from the digitsOnly
  String countryCode = '+${digitsOnly.substring(0, 2)}';
  digitsOnly = digitsOnly.substring(2);

  // Add the remaining digits with proper formatting
  final formattedNumber = StringBuffer();
  formattedNumber.write('($countryCode)');

  int i = 0;
  while (i < digitsOnly.length) {
    int groupLength = 2;
    if (i == 0 && countryCode == '+1') {
      groupLength = 3;
    }
    int end = i + groupLength;
    formattedNumber.write(digitsOnly.substring(i, end));

    if (end < digitsOnly.length) {
      formattedNumber.write('-');
    }
    i = end;
  }

  return formattedNumber.toString();
}


  
}

