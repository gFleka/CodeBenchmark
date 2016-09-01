#include<bench.h>
#include<stdio.h>
#include<iostream>

void testFunction()
{
  for(int i=0;i<500;i++)
  {
    std::cout << ""; //Just a test code
    
  }
}

void testFunction2()
{
  for(int i=0;i<1500;i++)
  {
    std::cout << ""; //Just a test code
    
  }
}

int main ()
{
  
  benchmark testBenchmark;
  testBenchmark.add("Prvi test",1000, 10, testFunction);
  testBenchmark.add("Drugi test",1000, 10, testFunction2);
  testBenchmark.run();
  

  

  return 0;
}
