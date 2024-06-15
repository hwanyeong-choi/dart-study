
// Enum
enum Status {
  approved,  // 승인
  pending, // 대기
  regected // 거절
}


void main(List<String> argument) {

  Status status = Status.approved;
  
  if (status == Status.approved) {
    print('승인입니다.');
  } else if (status == Status.pending) {
    print('대기입니다.');
  } else {
    print('거절입니다.');
  }

}