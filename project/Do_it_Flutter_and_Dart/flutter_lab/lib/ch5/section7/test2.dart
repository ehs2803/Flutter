/*
다트에서는 switch의 조건을 정수나 문자열 타입으로 지정 가능.
또한 case가 여러개라면 맨 마지막 case문을 제외하고 break, continue, return, throw 중 하나를 작성해야 한다.

break : switch문 나가기.
continue : 특정 위치(라벨)로 이동하기
return : switch문이 작성된 함수 종료하기(반환하기)
throw : switch문이 작성된 함수 종료하기(던지기)
 */
some(arg){
  switch(arg){
    case 'A':
      print('A');
      break; // case문을 2개 이상 선언했는데 첫번째 case문에서 break, continue, return, throw 등으로 그다음 실행 흐름을 지정하지 않으면 오류.
    case 'B':
      print('B');
  }
}