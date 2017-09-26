# 원형큐(Circle Queue, Ring Buffer)

큐를 원형으로 표현한 것. 큐의 첫 원소와 마지막 원소가 서로 연결되어 있는 형태이며, 기존 큐의 앞의 원소가 비었을 때 자료를 앞의 빈공간으로 이동시키는 문제를 해결하는 방법으로 고안되었다.
삽입, 삭제되는 원형큐의 위치는 (n-1)번째 요소의 다음 요소가 0번째 요소이기 때문에 %(나머지)연산자를 이용한다. 

- 삽입: rear포인터를 1만큼 증가시킨 후 rear가 가리키는 위치((rear+1)%n)에 자료를 삽입하면 된다.

  ```c
  /* 크기가 n인 원형큐에 item을 삽입하는 알고리즘
  Cqueue: 최대크기가 n인 배열
  n: 원형 큐의 크기
  rear: 원형 큐에 마지막원소 포인터
  item: 삽입될 자료*/
  void insert_Cqueue(item){
    char item;
    rear = (rear+1)%n; //삽입될 위치 계산
    if(front==rear){ //여분의 기억 장소가 없음
      printf("원형 큐가 가득참");
      rear--; //여분 공간이 없는 원형 큐에서 삭제가 이루어지도록 rear포인터를 1감소
      exit(0);
    } else {
      Cqueue[rear] = item; //rear 포인터가 가리키는 곳에 자료 삽입
    }
  }
  ```

- 삭제: front포인터를 1만큼 증가시킨 후 front가 가리키는 위치((front+1)%n)에 자료를 삭제한다.

  ```c
  /* 크기가 n인 원형 큐에서 자료를 삭제하는 알고리즘
  Cqueue: 최대크기가 n인 배열
  n: 원형 큐의 크기
  fornt: 원형 큐에서 제일 앞에 있는 자료보다 반시계 방향으로 1작은 위치를 가리킨다.
  item: 삭제될 자료를 저장할 변수*/
  void delete_Cqueue(){
    char item;
    if(front==rear){
      print("원형 큐가 비었음");
      exit(0);
    } else {
      fornt = (front+1)%n; //삭제될 위치 계산
    	item = Cqueue[front]; //front포인터가 가리키는 곳의 자료를 삭제하여 item에 저장
    }
  }
  ```