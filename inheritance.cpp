#include <iostream>

using namespace std;

class Mother
{
public:     Mother ()
  { //default
    cout << "Mother: no parameters\n";
  }
  Mother (int a)
  { //overload
    cout << "Mother: int parameter\n";
  }
};

class Daughter : public Mother
{
public:
  Daughter (int a)
  { //override
    cout << "Daughter: int parameter\n\n";
  }
};

class Son : public Mother
{
public:
  Son (int a): Mother (0)
  { //overload w/init list
    cout << "Son: int parameter\n\n";
  }
  Son(){ //default
    cout <<"none\n";
  }
};

int main ()
{
  Daughter Cynthia (0);
  Son Daniel(0);
  Son none;
  
  return 0;
}
