# 스택

삽입과 삭제가 한쪽 끝에서만 발생하는 선형리스트, 후입선출방식 LIFO(Last In First Out)

삽입과 삭제는 top라는 포인터, 스택의 바닥은 bottom
push는  top = top +1, pop은 top = top - 1   		*top의 초기값은 -1

- 삽입 - top포인터가 가리키는 위치보다 1이 증가한 위치에 자료가 삽입

  ```c
  /*크기가 n인 STACK에 item을 삽입하는 알고리즘
  STACK: 최대 크기가 n인 배열
  n: 스택의 크기
  top: 스택 포인터로 스택이 선언될 때는 초기치가 -1이다.*/

  void PUSH(stack, n, top, item){

  if(top >=(n-1)) //top포인터가 스택의 제일 위쪽을 가리키면, 스택이 꽉 찬것
    {
      printf("스택 가득 참");
    	exit(0); //종료
    }
  else
    {
      top++; //top포인터를 1증가시킴
  	STACK[top] = item; //top포인터가 가리키는 곳에 자료 삽입
    }
  }
  ```

- 삭제 - top포인터가 가리키는 위치의 자료가 삭제

  ```c
  /* 크기가 n인 STACK에서 자료를 삭제하는 알고리즘
  item: 삭제된 자료를 저장할 변수
  top: 스택포인터 */

  char POP(){
    char item;
    if(top<0){ //스택에 자료가 없으면
      printf("스택이 비었음");
      exit(0); //종료
    }
    else{
      item = STACK[top]; //top가 가리키는 곳으 ㅣ자료를 삭제하여 item에 저장한다
      top--; //top포인터를 1감소시킴
    }
  }
  ```

- 스택의 TOP내용조사 - 현재 스택에서 제일 위에 있는 자료가 무엇인지를 알려준다.

  ```c
  /*스택의 제일 위에 있는 자료를 반환하는 알고리즘
  STACK: 크기가 n인 배열
  top: 스택포인터 */
  char TOP(){
    if(top<0){ //스택에 자료가 없으면
      prinft("스택이 비었음");
      exit(0) //종료
    }
    else{
      return(STACK[top]); //top포인터가 기리키는 곳의 자료를 되돌려준다.
    }
  }
  ```

- 사용사례 

  -  산술연산을 할때 연산자와 피연산자 저장
  - 서브루틴의 복귀주소 저장
  - 인터럽트 처리시 복귀주소 저장