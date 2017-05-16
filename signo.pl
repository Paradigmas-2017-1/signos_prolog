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

afinidade(escorpiao, aries, 		, , , ).
afinidade(escorpiao, leao, 			, , , ).
afinidade(escorpiao, sagitario, 	, , , ).
afinidade(escorpiao, touro, 		, , , ).
afinidade(escorpiao, virgem, 		, , , ).
afinidade(escorpiao, capricornio,	, , , ).
afinidade(escorpiao, cancer, 		, , , ).
afinidade(escorpiao, escorpiao, 	, , , ).
afinidade(escorpiao, peixes,		, , , ).
afinidade(escorpiao, gemeos, 	 	, , , ).
afinidade(escorpiao, libra, 	 	, , , ).
afinidade(escorpiao, aquario, 	 	, , , ).

afinidade(sagitario, aries, 		, , , ).
afinidade(sagitario, leao, 			, , , ).
afinidade(sagitario, sagitario, 	, , , ).
afinidade(sagitario, touro, 		, , , ).
afinidade(sagitario, virgem, 		, , , ).
afinidade(sagitario, capricornio,	, , , ).
afinidade(sagitario, cancer, 		, , , ).
afinidade(sagitario, escorpiao, 	, , , ).
afinidade(sagitario, peixes,		, , , ).
afinidade(sagitario, gemeos, 	 	, , , ).
afinidade(sagitario, libra, 	 	, , , ).
afinidade(sagitario, aquario, 	 	, , , ).

afinidade(capricornio, aries, 		, , , ).
afinidade(capricornio, leao, 		, , , ).
afinidade(capricornio, sagitario, 	, , , ).
afinidade(capricornio, touro, 		, , , ).
afinidade(capricornio, virgem, 		, , , ).
afinidade(capricornio, capricornio,	, , , ).
afinidade(capricornio, cancer, 		, , , ).
afinidade(capricornio, escorpiao, 	, , , ).
afinidade(capricornio, peixes,		, , , ).
afinidade(capricornio, gemeos, 	 	, , , ).
afinidade(capricornio, libra, 	 	, , , ).
afinidade(capricornio, aquario,  	, , , ).

afinidade(aquario, aries, 		, , , ).
afinidade(aquario, leao, 		, , , ).
afinidade(aquario, sagitario, 	, , , ).
afinidade(aquario, touro, 		, , , ).
afinidade(aquario, virgem, 		, , , ).
afinidade(aquario, capricornio,	, , , ).
afinidade(aquario, cancer, 		, , , ).
afinidade(aquario, escorpiao, 	, , , ).
afinidade(aquario, peixes,		, , , ).
afinidade(aquario, gemeos, 	 	, , , ).
afinidade(aquario, libra, 	 	, , , ).
afinidade(aquario, aquario,  	, , , ).

afinidade(peixes, aries, 		, , , ).
afinidade(peixes, leao, 		, , , ).
afinidade(peixes, sagitario, 	, , , ).
afinidade(peixes, touro, 		, , , ).
afinidade(peixes, virgem, 		, , , ).
afinidade(peixes, capricornio,	, , , ).
afinidade(peixes, cancer, 		, , , ).
afinidade(peixes, escorpiao, 	, , , ).
afinidade(peixes, peixes,		, , , ).
afinidade(peixes, gemeos, 	 	, , , ).
afinidade(peixes, libra, 	 	, , , ).
afinidade(peixes, aquario, 	 	, , , ).


combinacao(Signo,X):-afinidade(Signo,X,Amor,_,_,_),Amor>=9.

