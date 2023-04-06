dynamic a1=10;
dynamic a2;
dynamic? a3;

testFun(){
  a1=null;
  a2=null;
  a3=null;
}
// dynamic 타입에는 물음표를 추가할 수 있지만 의미가 X
// dynamic 타입은 모든 타입의 데이터를 대입 가능하므로 널을 허용하는 Nullable도 포함.