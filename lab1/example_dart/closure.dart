Function sum1 = ([int x = 10]) => ({int y = 10}) => print("Sum1 = ${x + y}");

Function sum2 = (int x) => (int y){
  print("Sum2 = ${x + y}");
  return sum2(x + y);
};

void main(){
  sum1()();
  sum1(5)(y: 5);
  sum2(10)(10)(10)(10);
  assert(sum1 is Object);
  assert(sum2 is Object);
}
