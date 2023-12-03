


class TPricingCalculator {
  // Calculate Price based on tax and shipping
  static double calculateTotalPrice(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice * taxRate;
    double shippingCost=getShippingCost(location);
    double totalPrice=productPrice + taxAmount + shippingCost;
    return totalPrice;
  }

  //Calculate shipping cost
  static String calculateShippingCost(double productPrice, String location){
    double shippingCost=getShippingCost(location);
    return shippingCost.toStringAsFixed(2);
  }

  //calculate tax
  static String calculateTax(double productPrice,String location){
    double taxRate=getTaxRateForLocation(location);
    double taxAmount=productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }
  static double getTaxRateForLocation(String location){
    //lookup the tax rate for given location from a tax rate database or Api.
    // return the appropriate tax rate.
    return 0.10;//dummy(default)
  }
  static double getShippingCost(String location){
    //lookup the shipping cost for the given location using a shipping Api.
    //Calculate the shippping cost based on various factors like distances,weight, etc..
    return 40.00;
  }
  //-Sum all cart values and return total amount
 
}