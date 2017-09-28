# 데크(Deque)

큐와 같은 모양으로 양쪽 끝에서 자료의 추가, 삭제가 가능한 선형리스트이며 스택과 큐를 하나로 합친형태이다. Double-ended queue를 줄여 데크라고 부른다. 

데크에 자료를 삽입하고 삭제하기 위해서는 포인터 2개가 필요하다. 왼쪽 포인터는 데크의 왼쪽 끝에서 삽입과 삭제가 이루어지고 오른쪽 포인터는 데크의 오른쪽 끝에서 삽입과 삭제가 이루어진다. 

데크의 입출력에 제한을 두어 구분이 가능하다. 제한된 쪽을 제외한 반대쪽에서는 삽입과 삭제가 둘다 이루어진다.

- 입력 제한 데크 : 입력을 한쪽 끝에서만 가능하게 한 데크, 스크롤(SCROLL)이라 한다.
- 출력 제한 데크 : 출력을 한쪽 끝에서만 가능하게 한 데크, 쉘프(SHELF)라고 한다.