#ifndef BENCH_H
#define BENCH_H

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

class benchmark
{
  


public:
  
  //Adds a new benchmark test
  void add(std::string title, int iterations, int runs, void (*function)());
    
  
  //Adds a new benchmark with default # of iterations and runs
  void add(std::string title, void (*function)());
  
  
  //Runs all added benchmark tests in the order they were added
  void run();
  
};
#endif