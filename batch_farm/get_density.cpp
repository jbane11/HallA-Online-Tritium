#include <iostream>

void get_density(int run, TString targ){
  double density = getsqlcurrent(run);

  ofstream f(Form("batch_files/batch_%d",run));
  f << "export DENSITY=" << density << endl;
  f.close();
}
