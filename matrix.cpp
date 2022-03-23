#include"matrix.h"

vector<vector<double>> operator*(vector<vector<double>> a, vector<vector<double>> b)
{
    vector<vector<double>> result(a.size(),vector<double> (b[0].size(),0));
    for (unsigned int i=0;i<a.size();i++)
    {
        for (unsigned int j=0;j<a[0].size();j++)
        {
            result[i][j] = 0.0;
            for(unsigned int k = 0;k < a[0].size();k++)
            {
                result[i][j] += a[i][k]*b[k][j];
            }
        }
    }
    return result;
}

vector<vector<double>> doubled(vector<vector<double>> a){
    vector<vector<double>> result = {{0,0},{0,0}};
    for (unsigned int i=0;i<2;i++)
    {
        for (unsigned int j=0;j<2;j++)
        {
            result[i][j] = a[i][j]*2;
        }
    }
    return result;
}
