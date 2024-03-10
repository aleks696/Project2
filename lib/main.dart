// Initialization constructor
class Student{
  String name;
  String lastname;

  Student.initNames()
  : name = 'Tania',
    lastname = 'Oleksiienko';

  // Fabric constructor
  factory Student.initNamesFactory() {
    return Student.initNames();
  }
}

mixin LastNames {
  void welcome(names) {
    print('Hi, $names');
  }
}

class Students with LastNames {
  void end(lastnames) {
    print('$lastnames. Nice to meet you!');
  }
}

void main() {
  // Operator "syntax sugar"
  int? a;
  a ??= 15;
  print('a - $a');
  int b = 10;
  print('b - $b');

  // If this conditions is not true, it stops running program 
  assert(a > b);
  print('a ia greater than b');

  // Collections
  // List
  List<int> numbers = [1, 2, 3, 4];
  print(numbers);

  // Set
  Set<String> names = {'Olena', 'Petro', 'Ivan', 'Mykola'};
  print(names);

  // Map
  Map<String, String> lastnames = {
    'Olena': 'Vovk',
    'Petro': 'Horenko',
    'Ivan': 'Kovalenko',
    'Mykola': 'Petrenko'
  };
  print(lastnames);

  // Lambda function, closure
  Function sumNumbers(num Base){
    return (num i) => i + Base;
  }
  var lambdaFunc = sumNumbers(a);
  print("Sum of numbers with closure: $lambdaFunc");
  print("Sum of numbers without closure: ${lambdaFunc(5)}");

  // Default parameters
  void defParameters(int num, {String word = 'Number is - '}){
    print('$word $num');
  }
  defParameters(4);
  defParameters(5, word: 'Changed number - ');

  // Constructor
  // Initialization
  var student1 = Student.initNames();
  print('By initialization constructor: ' + student1.name + ' ' + student1.lastname);

  // Fabric constructor
  var student2 = Student.initNamesFactory();
  print('By factory constructor: ' + student2.name + ' ' + student2.lastname);

  // Mixin
  var students = Students();
  lastnames.forEach((names, lastnames) { 
    students.welcome(names);
    students.end(lastnames);
  });  
}
