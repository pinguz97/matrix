#include "matrix.h"
#include <iostream>


int main(){

    vector<vector<double>> a = {{1,1},{1,1}};
    vector<vector<double>> b = {{1,3},{2,2}};
    
    vector<vector<double>> c = a*b; 
    cout << c[0][0] << " "<< c[0][1] << " " << endl;
    cout << c[1][0] << " "<< c[1][1] << " " << endl;

}