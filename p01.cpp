// high_resolution_clock example
#include <iostream>
#include <string>
#include <list>
#include <ctime>
#include <ratio>
#include <chrono>

using namespace std::chrono;

struct benchmark_test{
 std::string title;
 int repetitions;  
};

class benchmark
{
  
  
private:
  std::list<benchmark_test> benchmarks_list;

public:
  void add(std::string title, int repetitions) //TODO Dodati ovdje da kao argument prima funkciju koja se onda može pozivat i izvršavati
  {
    benchmark_test temp;
    temp.title=title;
    temp.repetitions=repetitions;
    benchmarks_list.push_back(temp);    
  }
  
  void remove(std::string title)
  {
    //TODO Add remove method to remove single benchmarks from the test
  }
  
  void run(){
    for( auto & ibenchmark : benchmarks_list )
    {
      high_resolution_clock::time_point t1 = high_resolution_clock::now();
      std::cout << "Test Name: " << ibenchmark.title << std::endl;
      std::cout << "printing out" << ibenchmark.repetitions << " stars...\n";
      for (int i=0; i<ibenchmark.repetitions; ++i) std::cout << "*";
      std::cout << std::endl;

      high_resolution_clock::time_point t2 = high_resolution_clock::now();

      duration<double> time_span = duration_cast<duration<double>>(t2 - t1);

      std::cout << "It took me " << time_span.count() << " seconds.";
      std::cout << std::endl;
    }
  }
};

int main ()
{
  benchmark testBenchmark;
  testBenchmark.add("++Prvi Test Naziv++",20);
  testBenchmark.run();
  

  

  return 0;
}