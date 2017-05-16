mes(1,31).
mes(2,28).
mes(3,31).
mes(4,30).
mes(5,31).
mes(6,30).
mes(7,31).
mes(8,31).
mes(9,30).
mes(10,31).
mes(11,30).
mes(12.31).

horoscopo(aries,21,3,19,4).
horoscopo(touro,20,4,20,5).
horoscopo(gemeos,21,5,20,6).
horoscopo(cancer,21,6,22,7).
horoscopo(leao,23,7,22,8).
horoscopo(virgem,23,8,22,9).
horoscopo(libra,22,9,22,10).
horoscopo(escorpiao,23,10,21,11).
horoscopo(sagitario,22,11,21,12).
horoscopo(capricornio,22,12,19,1).
horoscopo(aquario,20,1,18,2).
horoscopo(peixes,19,2,20,3).

signo(Dia,Mes,Signo):-horoscopo(Signo,Di,Mi,Df,Mf),((Mes=Mi,Dia>=Di,mes(Mi,D),Dia=<D);(Mes=Mf,Dia=<Df,Dia>0)).

afinidade(aries, aries, 		7, 8, 6, 7).
afinidade(aries, leao, 			10, 9, 8, 9).
afinidade(aries, sagitario, 	10, 9, 7, 9).
afinidade(aries, touro, 		4, 7, 6, 5).
afinidade(aries, virgem, 		5, 7, 8, 7).
afinidade(aries, capricornio,	6, 7, 9, 6).
afinidade(aries, cancer, 		6, 8, 7, 6).
afinidade(aries, escorpiao, 	5, 9, 7, 6).
afinidade(aries, peixes,		4, 8, 6, 5).
afinidade(aries, gemeos, 	 	8, 7, 7, 10).
afinidade(aries, libra, 	 	7, 8, 8, 7).
afinidade(aries, aquario, 	 	8, 7, 7, 10).

afinidade(touro, aries, 		4, 7, 5, 5).
afinidade(touro, leao, 			6, 8, 7, 6).
afinidade(touro, sagitario, 	5, 8, 5, 6).
afinidade(touro, touro, 		8, 9, 7, 8).
afinidade(touro, virgem, 		10, 8, 9, 7).
afinidade(touro, capricornio,	10, 8, 9, 9).
afinidade(touro, cancer, 		8, 7, 8, 10).
afinidade(touro, escorpiao, 	7, 9, 8, 7).
afinidade(touro, peixes,		7, 8, 7, 10).
afinidade(touro, gemeos, 	 	4, 7, 6, 5).
afinidade(touro, libra, 	 	5, 8, 7, 6).
afinidade(touro, aquario, 	 	5, 6, 7, 6).

afinidade(gemeos, aries, 		8, 7, 7, 10).
afinidade(gemeos, leao, 		8, 7, 7, 10).
afinidade(gemeos, sagitario, 	8, 9, 7, 7).
afinidade(gemeos, touro, 		4, 7, 6, 5).
afinidade(gemeos, virgem, 		6, 8, 6, 7).
afinidade(gemeos, capricornio,	5, 9, 7, 6).
afinidade(gemeos, cancer, 		4, 7, 6, 5).
afinidade(gemeos, escorpiao, 	5, 8, 7, 6).
afinidade(gemeos, peixes,		6, 7, 8, 6).
afinidade(gemeos, gemeos, 	 	9, 8, 7, 8).
afinidade(gemeos, libra, 	 	10, 9, 8, 9).
afinidade(gemeos, aquario, 	 	10, 8, 9, 9).

afinidade(cancer, aries, 		6, 8, 7, 6).
afinidade(cancer, leao, 		4, 7, 6, 5).
afinidade(cancer, sagitario, 	5, 8, 7, 6).
afinidade(cancer, touro, 		8, 7, 8, 10).
afinidade(cancer, virgem, 		8, 7, 7, 10).
afinidade(cancer, capricornio,	8, 7, 8, 7).
afinidade(cancer, cancer, 		9, 8, 7, 8).
afinidade(cancer, escorpiao, 	10, 9, 8, 9).
afinidade(cancer, peixes,		10, 9, 9, 10).
afinidade(cancer, gemeos, 	 	4, 7, 6, 5).
afinidade(cancer, libra, 	 	7, 8, 7, 6).
afinidade(cancer, aquario, 	 	5, 8, 6, 6).

afinidade(leao, aries, 			10, 9, 8, 9).
afinidade(leao, leao, 			9, 8, 7, 8).
afinidade(leao, sagitario, 		10, 9, 8, 9).
afinidade(leao, touro, 			6, 8, 7, 6).
afinidade(leao, virgem, 		5, 7, 7, 6).
afinidade(leao, capricornio,	5, 8, 7, 6).
afinidade(leao, cancer, 		4, 7, 6, 5).
afinidade(leao, escorpiao, 		6, 9, 6, 7).
afinidade(leao, peixes,			5, 8, 5, 6).
afinidade(leao, gemeos, 	 	8, 7, 7, 10).
afinidade(leao, libra, 	 		9, 8, 8, 10).
afinidade(leao, aquario, 	 	7, 7, 8, 8).

afinidade(virgem, aries, 		5, 7, 8, 7).
afinidade(virgem, leao, 		4, 7, 6, 6).
afinidade(virgem, sagitario, 	6, 7, 6, 7).
afinidade(virgem, touro, 		10, 8, 9, 7).
afinidade(virgem, virgem, 		9, 8, 9, 8).
afinidade(virgem, capricornio,	10, 9, 8, 9).
afinidade(virgem, cancer, 		8, 7, 7, 10).
afinidade(virgem, escorpiao, 	7, 7, 8, 10).
afinidade(virgem, peixes,		7, 9, 8, 7).
afinidade(virgem, gemeos, 	 	6, 8, 6, 7).
afinidade(virgem, libra, 	 	5, 7, 7, 6).
afinidade(virgem, aquario, 	 	5, 8, 7, 6).

afinidade(libra, aries, 		7, 8, 8, 7).
afinidade(libra, leao, 			9, 8, 8, 10).
afinidade(libra, sagitario, 	9, 8, 8, 10).
afinidade(libra, touro, 		5, 8, 7, 6).
afinidade(libra, virgem, 		4, 7, 6, 5).
afinidade(libra, capricornio,	6, 7, 8, 7).
afinidade(libra, cancer, 		7, 8, 7, 6).
afinidade(libra, escorpiao, 	5, 7, 6, 5).
afinidade(libra, peixes,		5, 9, 7, 6).
afinidade(libra, gemeos, 	 	10, 9, 8, 9).
afinidade(libra, libra, 	 	9, 8, 8, 9).
afinidade(libra, aquario, 	 	10, 8, 8, 9).

afinidade(escorpiao, aries, 		5, 8, 7, 6).
afinidade(escorpiao, leao, 			6, 9, 6, 7).
afinidade(escorpiao, sagitario, 	5, 8, 6, 5).
afinidade(escorpiao, touro, 		7, 9, 8, 7).
afinidade(escorpiao, virgem, 		7, 7, 8, 10).
afinidade(escorpiao, capricornio,	8, 9, 8, 9).
afinidade(escorpiao, cancer, 		10, 9, 8, 9).
afinidade(escorpiao, escorpiao, 	9, 10, 8, 9).
afinidade(escorpiao, peixes,		10, 9, 8, 9).
afinidade(escorpiao, gemeos, 	 	5, 8, 7, 6).
afinidade(escorpiao, libra, 	 	4, 7, 6, 5).
afinidade(escorpiao, aquario, 	 	5, 8, 6, 6).

afinidade(sagitario, aries, 		10, 9, 7, 9).
afinidade(sagitario, leao, 			10, 9, 8, 9).
afinidade(sagitario, sagitario, 	9, 9, 8, 9).
afinidade(sagitario, touro, 		5, 8, 5, 6).
afinidade(sagitario, virgem, 		6, 7, 6, 7).
afinidade(sagitario, capricornio,	5, 7, 6, 5).
afinidade(sagitario, cancer, 		5, 8, 7, 6).
afinidade(sagitario, escorpiao, 	4, 8, 6, 5).
afinidade(sagitario, peixes,		6, 8, 7, 6).
afinidade(sagitario, gemeos, 	 	8, 9, 7, 8).
afinidade(sagitario, libra, 	 	9, 8, 8, 10).
afinidade(sagitario, aquario, 	 	9, 8, 9, 10).

afinidade(capricornio, aries, 		6, 7, 9, 6).
afinidade(capricornio, leao, 		5, 8, 7, 6).
afinidade(capricornio, sagitario, 	4, 7, 6, 5).
afinidade(capricornio, touro, 		10, 8, 9, 9).
afinidade(capricornio, virgem, 		10, 9, 8, 8).
afinidade(capricornio, capricornio,	9, 9, 10, 8).
afinidade(capricornio, cancer, 		8, 7, 8, 7).
afinidade(capricornio, escorpiao, 	8, 9, 8, 10).
afinidade(capricornio, peixes,		8, 9, 8, 9).
afinidade(capricornio, gemeos, 	 	5, 9, 7, 6).
afinidade(capricornio, libra, 	 	6, 7, 8, 7).
afinidade(capricornio, aquario,  	5, 7, 6, 5).

afinidade(aquario, aries, 		8, 7, 7, 10).
afinidade(aquario, leao, 		7, 7, 8, 8).
afinidade(aquario, sagitario, 	9, 8, 9, 10).
afinidade(aquario, touro, 		5, 6, 7, 6).
afinidade(aquario, virgem, 		5, 8, 7, 6).
afinidade(aquario, capricornio,	4, 7, 6, 5).
afinidade(aquario, cancer, 		5, 8, 6, 6).
afinidade(aquario, escorpiao, 	5, 8, 6, 6).
afinidade(aquario, peixes,		5, 8, 6, 6).
afinidade(aquario, gemeos, 	 	9, 8, 9, 10).
afinidade(aquario, libra, 	 	10, 8, 8, 9).
afinidade(aquario, aquario,  	9, 8, 8, 10).

afinidade(peixes, aries, 		5, 8, 6, 5).
afinidade(peixes, leao, 		5, 8, 5, 6).
afinidade(peixes, sagitario, 	6, 8, 7, 6).
afinidade(peixes, touro, 		7, 8, 7, 9).
afinidade(peixes, virgem, 		7, 8, 7, 9).
afinidade(peixes, capricornio,	8, 9, 8, 10).
afinidade(peixes, cancer, 		10, 9, 9, 10).
afinidade(peixes, escorpiao, 	9, 10, 8, 9).
afinidade(peixes, peixes,		10, 9, 7, 9).
afinidade(peixes, gemeos, 	 	6, 7, 8, 6).
afinidade(peixes, libra, 	 	5, 9, 7, 6).
afinidade(peixes, aquario, 	 	4, 8, 6, 6).


combinacaoAmor(Signo, Outro) :- afinidade(Signo, Outro, Amor, _, _, _), Amor >= 9.
combinacaoSexo(Signo, Outro) :- afinidade(Signo, Outro, _, Sexo, _, _), Sexo >= 9.
combinacaoTrabalho(Signo, Outro) :- afinidade(Signo, Outro, _, _, Trabalho, _), Trabalho >= 9.
combinacaoAmizade(Signo, Outro) :- afinidade(Signo, Outro, _, _, _, Amizade), Amizade >= 9.

entrarCombinacaoAmor :- read(Signo), read(Outro), combinacaoAmor(Signo, Outro).
entrarCombinacaoSexo :- read(Signo), read(Outro), combinacaoSexo(Signo, Outro).
entrarCombinacaoTrabalho :- read(Signo), read(Outro), combinacaoTrabalho(Signo, Outro).
entrarCombinacaoAmizade :- read(Signo), read(Outro), combinacaoAmizade(Signo, Outro).
