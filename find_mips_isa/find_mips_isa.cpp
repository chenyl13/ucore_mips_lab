#include <iostream>
#include <fstream>
#include <string>
#include <set>
#include <algorithm>
using namespace std;

int main(int argc, char** argv)
{
	ifstream fin;
	fin.open("kernel0_set.txt");
	string tmp;
	set<string> isa_set, origin_set;
	while (fin >> tmp)
	{
		origin_set.insert(tmp);
	}
	fin.close();
	
	fin.open("kernel1_set.txt");
	while (fin >> tmp)
	{
		origin_set.insert(tmp);
	}
	fin.close();
	
	fin.open(argv[1]);
	while (fin >> tmp)
	{
		if (tmp[tmp.length()-1] == ':')
		{
			fin >> tmp;
			fin >> tmp;
			if (!origin_set.count(tmp))
				isa_set.insert(tmp);
		}
		getline(fin, tmp);
	}
	fin.close();
	ofstream fout;
	fout.open(argv[2]);
	set<string>::iterator iter;
	for(iter = isa_set.begin(); iter != isa_set.end(); iter++)
    	fout << (*iter) << ' ';
    fout.close();
	return 0;
} 
