/*
제어문은 프로그램의 실행 흐름을 제어하는 구문.
if~else, for, while, do~while, break, continue, switch-case 등이 제어문.
 */
main(){
  var list=[10,20,30];
  for(var i=0; i<list.length; i++){
    print(list[i]);
  }
  
  for(var x in list){
    print(x);
  }
}