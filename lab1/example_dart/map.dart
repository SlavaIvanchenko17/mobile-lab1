class Operations{
  Map<int,int> map = {};

  Operations();

  generate([int n = 10]){
    for(int i = 1; i <= n; i++){
      map[i] = i;
    }
    return this;
  }
  push(Map<int,int> m){
    map.addAll(m);
    return this;
  }
  sum(){
    int sum = map.keys.reduce((value, element) => value + element);
    print("Sum values = $sum");
    return this;
  }
  displayEach(){
    for(var item in map.entries){
        print("${item.key} - ${item.value}");
    }
    return this;
  }
  display(){
    print("Map = $map");
    return this;
  }
}


void main(){ 
  Map<int,int> map = {
    8: 8,
    9: 9,
    10: 10
  };
  new Operations()
  .generate(7)
  .push(map)
  .display()
  .displayEach()
  .sum();
}