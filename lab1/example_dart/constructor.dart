class A{
    int a;
    int b;
     
    A.first(this.a, this.b);

    A.second({this.a, this.b});

    A.third(int a, int b){
        this.a = a;
        this.b = b;
    }

    void displaySum(){
        print(a + b);
    }
}

void main(){
  A.first(5,5).displaySum();
  A.second(a:5, b:5).displaySum();
  A.third(5,5).displaySum();
}