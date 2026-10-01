class Counter{

  int _counter = 0;
  int get count => _counter;

  void counterIncrement(){
    _counter++;
  }

  void decrementCounter(){
    _counter--;
  }
  void reset(){
    _counter = 0;
  }
}