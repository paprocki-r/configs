# Sortowanie
sortowanie stabilne - nie zamienia elementow miejscami jesli sa rowne sobie
Jesli sortowanie jest stabilne to mozna sortowac wielopoziomowo

Jesli chcemy miec liste ocen z osobami alfabetycznie, to najpierw sortujemy alfabetycznie a potem z lista ocen (ale stabilnie, wiec alfabetyczny porzadek juz sie nie zmieni)

## (O(n^2)) 
### Sortowanie moze byc stabilne lub niestabilne, zalezy od implementacji
1. bubble sort
2. przez wstawianie - wez element i pchaj go w lewo dopoki jest wiekszy
3. przez selekcje 
	- znajdz najmniejszy i wstaw na pierwsze miejsce, znajdz 2 najmniejszy i wstaw na 2 miejsce

## (O(nlogn))
1. merge - [ISZE SIE GO RACZEJ PROSTO, ALE HEAP LEPSZY]
	- tablice podziel na 2 czesci
	- rekurencyjnie sortuj kazda polowke (dziel i zwyciezaj)
	`
	int t[], tmp[];
	void merge(a,m,b){
		int pos=a;
		int i=a, j=m+1;//first elements of both halves
		//one way
		while(i<=m AND j<=b){
			if(t[i]<t[j]){
				tmp[pos++] = t[i];
				++i;
			}
		}
		else{
			tmp[pos++]=t[j];
			++j;
		}
		//...merge arrays
		//
		//second way
		while(i<=m)
			tmp[pos++] = t[i+1];
		while
			tmp[pos++]=t[j++];
		for(i=a;i<=b;++i)
			t[i] = tmp[i] 
	}
	}
	void mergesort(int a, int b)
		if(mid>=b) return; //basecase
		int mid=(a+b)/2;
		mergesort(a, mid);
		mergesort(mid+1, b);
		merge(a,mid,b);//merge two arrays
	`
2. quick (niestabilny) (pesymistyczna n^2 jesli dane sa posortowane :D, srednia nlogn dla losowych danych)
- lepij nie uzywac (ze wzgledu na pesymistyczny wariant)
- jesli chcemy quicksorta to zabezpieczyc sie przed posymistycznym wariantem - albo robic shuffle na danych wejsciowych, albo (lepsze) wybrac looosowo pivota
3. heap (kopcowanie) 
	- dwie wariacje (max-heap, min-heap)
	- dwie operacje (heapUP[dodawanie], heapDOWN[usuwanie roota])

## shellsort - wariacja sortowania przez wstawianie
## counting sort - sortowanie przez zliczanie (O(n+k) - jesli k<nlogn wtedy oplaca sie uzyc counting sort, jesli nie to wziac inny algorytm)
	- tylko do liczb > 0 :D
	- zliczyc ilosc wystapien do akumulatora - wtedy wartosci akumulatora beda posortowanymi danymi
## bucket sort (sortowanie kubelkowe) (O(nlogn))