abstract class Name{
    String name;

    Name(this.name);

    void displayName();
}
 
abstract class Age{
    int age;

    Age(this.age);
      
    void displayAge();
}

class Person implements Name, Age{
    String name;
    int age;

    Person(this.name, this.age);

    void displayName(){
        print("Name: $name");
    }

    void displayAge(){
        print("Age: $age");
    }
}

void main (){
  new Person("Slava", 20)
  ..displayName()
  ..displayAge();
} 
