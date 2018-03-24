#include <iostream>
using namespace std;

int main()
{
    long int pbg,tmp,k=1,j,n,faktor[1000],pangkat[1000];

    cin>>n;
    pbg=2;

    while (n>1)
    {
        tmp=1;
        if(n%pbg==0)
        {
            while (n%pbg==0)
            {
                faktor[k]=pbg;
                pangkat[k]=tmp;
                n=n/pbg;
                tmp++;
            }
            k++;
        }
        pbg++;
    }

    for(j=1;j<=k-1;j++)
    {
    	if (pangkat[j]<2){
    		cout<<faktor[j];
		}
        else{
		cout<<faktor[j]<<'^'<<pangkat[j];
		}
        if(j<k-1)
            cout<<" x ";
    }
    cout<<"\n";
}
