class Welcome{ 
  String name; 
    
  Welcome();

  String get getName => name == null ? "Іncognito" : name;

  set setName(String name) { 
    this.name = name; 
  }
}  
  
void main(){
  var welcome = new Welcome();
  print("Welcome to ${welcome.getName}");
  welcome.setName = "Slava";
  print("Welcome to ${welcome.getName}");
  welcome.setName = "Vasya";
  print("Welcome to ${welcome.getName}");
}
