class Mobile{
  String? company;
  String? model;
  int? price;

  void display(){
    print("Mobile brand: ${company}");
    print("Model: ${model}");
    print("Price of mobile: ${price}");
  }
}

void main(){
  Mobile mobile = Mobile();
  mobile.company = "Samsung";
  mobile.model = "S21 Ultra";
  mobile.price = 7654;

  mobile.display();
}