class Operations{
  Set<int> set = {};

  Operations();

  generate([int n = 10]){
    for(int i = 1; i <= n; i++){
      set.add(i);
    }
    return this;
  }
  filter([int n = 0]){
    set = set.where((e) => e > n).toSet();
    return this;
  }
  push(var value){
    if(value is Iterable<int>){
      set.addAll(value);
    }
    else set.add(value);
    return this;
  }
  sum(){
    int sum = set.reduce((value, element) => value + element);
    print("Sum = $sum");
    return this;
  }
  displayEach(){
    int i = 1;
    for(int n in set){
      print("Element$i = $n");
      i++;
    }
    return this;
  }
  display(){
    print("List = $set");
    return this;
  }
}

void main(){ 
  new Operations()
  .generate(7)
  .push(7)
  .push({4, 5, 2})
  .filter(4)
  .display()
  .displayEach()
  .sum();
}