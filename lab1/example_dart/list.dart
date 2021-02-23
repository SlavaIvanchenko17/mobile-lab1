class Operations{
  List<int> list = [];

  Operations();

  generate([int n = 10]){
    list = List.generate(n, (int index) => index + 1, growable: true);
    return this;
  }
  filter([int n = 0]){
    list = list.where((e) => e > n).toList();
    return this;
  }
  push(var value){
    if(value is Iterable<int>){
      list.addAll(value);
    }
    else list.add(value);
    return this;
  }
  sum(){
    int sum = list.reduce((value, element) => value + element);
    print("Sum = $sum");
    return this;
  }
  displayEach(){
    for(int i = 0; i < list.length; i++){
      print("List[$i] = ${list[i]}");
    }
    return this;
  }
  display(){
    print("List = $list");
    return this;
  }
}

void main(){ 
  new Operations()
  .generate(7)
  .push(7)
  .push([4, 5, 2])
  .filter(4)
  .display()
  .displayEach()
  .sum();
}