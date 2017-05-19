:- [baseMes].
:- [baseSignos].
:- [baseAfinidades].

signo(Dia,Mes,Signo):-horoscopo(Signo,Di,Mi,Df,Mf),((Mes=Mi,Dia>=Di,mes(Mi,D),Dia=<D);(Mes=Mf,Dia=<Df,Dia>0)).

combinacaoAmor(Signo, Outro) :- afinidade(Signo, Outro, Amor, _, _, _), Amor >= 9.
combinacaoSexo(Signo, Outro) :- afinidade(Signo, Outro, _, Sexo, _, _), Sexo >= 9.
combinacaoTrabalho(Signo, Outro) :- afinidade(Signo, Outro, _, _, Trabalho, _), Trabalho >= 9.
combinacaoAmizade(Signo, Outro) :- afinidade(Signo, Outro, _, _, _, Amizade), Amizade >= 9.

entrarCombinacaoAmor :- read(Signo), read(Outro), combinacaoAmor(Signo, Outro).
entrarCombinacaoSexo :- read(Signo), read(Outro), combinacaoSexo(Signo, Outro).
entrarCombinacaoTrabalho :- read(Signo), read(Outro), combinacaoTrabalho(Signo, Outro).
entrarCombinacaoAmizade :- read(Signo), read(Outro), combinacaoAmizade(Signo, Outro).
