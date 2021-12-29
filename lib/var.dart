import 'dart:math';

Random random = Random();
int firstImageStartSize = random.nextInt(600);
int secondImageStartSize = firstImageStartSize;

increaseFirstAndDecreaseSecond() {
  int changeBy = 10 + random.nextInt(20);
  firstImageStartSize += changeBy;
  secondImageStartSize -= changeBy;
  if (firstImageStartSize > 700) {
    firstImageStartSize = 700;
  }
  if (secondImageStartSize < 100) {
    secondImageStartSize = 100;
  }
}

decreaseFirstIAndIncreaseSecondImage() {
  int changeBy = 10 + random.nextInt(20);
  firstImageStartSize -= changeBy;
  secondImageStartSize += changeBy;
  if (secondImageStartSize > 700) {
    secondImageStartSize = 700;
  }
  if (firstImageStartSize < 100) {
    firstImageStartSize = 100;
  }
}
