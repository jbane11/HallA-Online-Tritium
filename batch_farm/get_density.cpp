#include <iostream>
#include "../replay/scripts/headers/SQLanalysis.h"

Double_t He3Boiling(Double_t I){
  return (1 + (-0.004759*I) + (8.69e-05*I*I));
}

Double_t H3Boiling(Double_t I){
  return (1 + (-0.007399*I) + (0.0001293*I*I));
}

Double_t D2Boiling(Double_t I){
  return (1 + (-0.006651*I) + (0.0001147*I*I));
}

Double_t H1Boiling(Double_t I){
  return (1 + (-0.008529*I) + (0.0001527*I*I));
}

Double_t He3Density(Double_t I){
  return 0.0534*He3Boiling(I)/25;
}

Double_t H3Density(Double_t I){
  return 0.077*H3Boiling(I)/25;
}

Double_t D2Density(Double_t I){
  return 0.1422*D2Boiling(I)/25;
}

Double_t H1Density(Double_t I){
  return 0.0708*H1Boiling(I)/25;
}

void get_density(){
  int run = atoi(gSystem->Getenv("run"));
  TString targ = TString(gSystem->Getenv("targ"));
  double current = GetAvgCurrentSQL(run,0);
  cout << "current = " << current << endl;
  double density = 0;

  if(targ=="H1"){
    density=H1Density(current);
  }else if(targ=="He3"){
    density=He3Density(current);
  }else if(targ=="H3"){
    density=H3Density(current);
  }else if(targ=="D2"){
    density=D2Density(current);
  }

  ofstream f(Form("batch_files/batch_%d",run),std::ofstream::app);
  f << "export DENSITY=" << density << endl;
  f.close();
}
