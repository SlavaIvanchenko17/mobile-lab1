class Person{
    String _name;
     
    Person(this._name);

    static create(String name) => new Person(name);

    void displayName(){
        print("Person name: $_name");
    }
}

void main(){
  Person.create("Slava").displayName();
}