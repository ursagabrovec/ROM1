%1 naloga
podatki = dlmread('kolokviji.csv', ',')
vsota = sum(podatki,2)
povprecje = round(mean(podatki,2))
ocene=izracunaj_oceno(povprecje)
zaporedje=(1:length(ocene))'
rezultat=[zaporedje,podatki,vsota,povprecje,ocene]
dlmwrite('rezultat.csv',rezultat,',')
disp('Tip rezultata')
disp('Tipi stolpcev')
class(podatki)
class(vsota)
class(povprecje)
class(zaporedje)
class(ocene)

%2 naloga
hist(ocene)
pkg install-forge io
pkg install-forge statistics
pkg load statistics
%1 možnost
frekvence = tabulate(ocene)
%2 možnost
izracunaj = @(n) length(ocene(ocene==n))
arrayfun(izracunaj,6:10)
%3 možnost
frekvence = zeros(1,5)
for n = 6:10
    frekvence(n-5)= length(ocene(ocene==n))
end
class(frekvence)
bar(6:10, frekvence)

slika=figure()
bar(6:10,frekvence,'facecolor','r','edgecolor','b')
tittle('Porazdelitev ocen kolokvija')
xlabel('Ocene');
ylabel('Stevilo studentov')
text(10,3,'Bravo!')
print(slika,'slika.pdf')

%3.naloga
N=narascajoca(4)

%5.naloga
A = rand(2)
B = rotacija(A)
