void main(){
  final engineer = Engineer();
  engineer..engineer()
  ..physics()
  ..english();


  final lawyer = Lawyer();
  lawyer..law()
  ..english()
  ..politic();
}

class Engineering {
  void engineer(){
    print('Engineering');
  }

}
class Law{
  void law(){
    print('Law');
  }
}

class Engineer extends Engineering with English,Physics{

}

class Lawyer extends Law with English,Politic{

}

class Technician extends Engineering with Physics{

}
class Politician extends Law with Politic{

}

mixin English{
  void english(){
    print('English...');
  }
}

mixin Physics on Engineering{
  void physics(){
    print('Physics...');
  }
}
mixin Politic on Law{
  void politic(){
    print('Politics..');
  }
}