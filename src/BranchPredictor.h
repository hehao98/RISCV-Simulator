/*
 * The branch perdiction module with the following strategies
 * 
 * 
 * Created by He, Hao on 2019-3-25
 */

#ifndef BRANCH_PREDICTOR_H
#define BRANCH_PREDICTOR_H

#include <cstdint>
#include <string>

class BranchPredictor {
public:
  enum Strategy {
    AT, // Always Taken
    NT, // Always Not Taken
    BTFNT, // Backward Taken, Forward Not Taken
    PLATINUM3, // History Based Stategy in Plentium CPUs
  } strategy;

  BranchPredictor() {}
  BranchPredictor(BranchPredictor::Strategy strategy);
  ~BranchPredictor();

  bool predict(uint32_t pc, uint32_t insttype, int64_t op1, int64_t op2,
               int64_t offset);

  std::string strategyName();
  
private:
  
};

#endif