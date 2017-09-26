# 큐(Queue) 

리스트의 한쪽 끝에서는 자료가 삽입되고(rear or tail) 다른 한쪽 끝에서는 자료가 삭제(front or head) 된다.
가장 먼저 삽입된 자료가 가장 먼저 삭제되는 FIFO(First In First Out) 구조를 가지고 있다. OS의 스케줄링에 사용된다.

rear의 위치: 제일 마지막에 있는 자료	
front의 위치: 제일 앞에 있는 자료보다 1작은 위치

- 삽입: rear포인터를 1만큼 증가시킨후 rear이 가리키는 곳(rear + 1)에 자료를 삽입한다.

  ```c
  /* 크기가 n인 Queue에 item을 삽입하는 알고리즘
  Queue: 최대 크기가 n인 배열
  n: 큐의 크기
  rear: 큐에 마지막으로 삽입된 원소의 위치를 가리킨다.
  item: 큐에 삽입할 자료 */
  void insertQueue{
  	if(rear==(n-1)){ //남은 기억장소가 없으면
   		print("큐가 꽉참");
        	exit(0); //종료
  	} else {
        rear++;
        Queue[rear] = item; //rear이 있는 곳에 자료 삽입
  	}
  }
  ```

- 삭제: 현재 front 포인터에 1증가시킨 위치에서 삭제(front + 1) 후 삭제 (* +1을 한 이유: front가 1작은 위치를 가리킴)

  ```c
  /* 크기가 n인 Queue에 item을 삭제하는 알고리즘
  Queue: 최대 크기가 n인 배열
  n: 큐의 크기
  front: 큐에서 자료를 삭제할 위치보다 1작은 위치를 지정
  item: 큐에서 삭제할 자료를 저장할 변수*/

  void deleteQueue(){
    if(front==rear){ //큐가 비었음
      print("큐가 비었음");
      exit(0);
    } else {
      front++;
      item = Queue[front];
    }
  }
  ```
