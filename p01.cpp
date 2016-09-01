//Cross Platform 2016 Benchmarking C++ Code
#include <iostream>
#include <string>
#include <list>
#include <ctime>
#include <ratio>
#include <chrono>
#include <functional>
#include <boost/accumulators/accumulators.hpp>
#include <boost/accumulators/statistics/stats.hpp>
#include <boost/accumulators/statistics/mean.hpp>
#include <boost/accumulators/statistics/min.hpp>
#include <boost/accumulators/statistics.hpp>



using namespace std::chrono;
using namespace boost::accumulators;


struct benchmark_test{
 std::string title;
 int iterations;
 int runs;
 void (*functiontocall)();
};

class benchmark
{
  
  
private:
  std::list<benchmark_test> benchmarks_list;
  

public:
  
  //Adds a new benchmark test
  void add(std::string title, int iterations, int runs, void (*function)()) //TODO Dodati ovdje da kao argument prima funkciju koja se onda može pozivat i izvršavati
  {
    benchmark_test temp;
    temp.title=title;
    temp.iterations=iterations;
    temp.runs=runs;
    temp.functiontocall=function;
    //TODO Ovo temp.function=function;
    benchmarks_list.push_back(temp);   
    
  }
  
  //Adds a new benchmark with default # of iterations and runs
  void add(std::string title)
  {
    benchmark_test temp;
    temp.title=title;
    temp.iterations=1000;
    temp.runs=10;
    //TODO Ovo temp.function=function;
    benchmarks_list.push_back(temp);
  }
  
  //Runs all added benchmark tests in the order they were added
  void run(){
    
    duration<double>time_span;
    duration<double>min_time_span;
    
    std::cout << "________________________________________" << std::endl;
    std::cout << "|Running " << benchmarks_list.size() << " benchmark/s." << std::endl;
    //Loop through all individual benchmarks
    for( auto & ibenchmark : benchmarks_list )
    {
      accumulator_set < double, stats<tag::mean, tag::min, tag::max > >acc_all;
      std::cout << "| Benchmark Name: " << ibenchmark.title << std::endl;
      std::cout << "| " << ibenchmark.runs << " runs and " << ibenchmark.iterations << " iterations to perform: " << std::endl;
      std::cout << "| Benchmark Running" << std::endl;
      std::cout << "|----------------------------------------" << std::endl;
      //Loop through all runs for a benchmark
      for(int i=0; i<ibenchmark.runs; i++)
      {
	accumulator_set < double, stats<tag::min > > acc;
	//Loop through all iterations in one run
	//Every run, # of iterations are performed, median is taken and accumulated to acc_all
	for (int j=0; j<ibenchmark.iterations; j++)
	{
	  
	  high_resolution_clock::time_point t1 = high_resolution_clock::now();

	  //Test Code Insert Here
	  ibenchmark.functiontocall();
	  //ibenchmark.function(); 
	  //Sample Test Code
	  //std::cout << "";
	  //Test Code Ends Here
	  high_resolution_clock::time_point t2 = high_resolution_clock::now();
	  time_span = duration_cast<duration<double>>(t2 - t1);
	  double time_seconds = time_span.count()*1000000;
	  acc(time_seconds);
	}
	acc_all(min(acc));
	
      }
      

      std::cout << "| Average time: " << mean(acc_all) << " us." << std::endl;
      std::cout << "| Fastest time: " << min(acc_all) << " us." << std::endl; 
      std::cout << "| Slowest time: " << max(acc_all) << " us." << std::endl;
      std::cout << "| Average performance: " << 1000000/mean(acc_all) << " iterations/s." << std::endl;
      std::cout << "| Fastest performance: " << 1000000/min(acc_all) << " iterations/s." << std::endl;
      std::cout << "| Slowest performance: " << 1000000/max(acc_all) << " iterations/s." << std::endl;
      std::cout << "|----------------------------------------" << std::endl;
      std::cout << std::endl;
    }
  }
};

//Test function to test the function reference in the benchmark::run()
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
  testBenchmark.add("Prvi test",100, 10, testFunction);
  testBenchmark.add("Drugi test",100, 10, testFunction2);
  testBenchmark.run();
  

  

  return 0;
}
