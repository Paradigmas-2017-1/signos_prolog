:- [baseMes].
:- [baseSignos].
:- [baseAfinidades].

sinder :- write('Seja bem vinda, miga'), nl, nl,
  write('O que você deseja fazer?'), nl,
  write('1. - Descobrir seu signo '), nl,
  write('2. - Descobrir signo do crush '), nl,
  write('3. - Descobrir se voce e o crush combinam '), nl,
  write('4. - Descobrir o seu tipo de crush '), nl,
  write('5. - sair '), nl,
  read(Alternativa),
  interpretaTipoDeConsulta(Alternativa).

interpretaTipoDeConsulta(1) :- write('Digite primeiro o dia e depois o mes do seu aniversario'), nl,
  read(Dia),
  read(Mes),
  signoAniversario(Dia, Mes, Signo),
  write(Signo), nl, nl,
  voltarMenu().

interpretaTipoDeConsulta(2) :- write('Digite primeiro o dia e depois o mes do aniversario do crush'), nl,
  read(Dia),
  read(Mes),
  signoAniversario(Dia, Mes, Crush),
  write(Crush), nl, nl,
  voltarMenu().

% interpretaTipoDeConsulta(3)

% interpretaTipoDeConsulta(4)

interpretaTipoDeConsulta(5) :- novaConsulta(2).

voltarMenu :- write('Deseja fazer outra consulta?'), nl,
  write('1. - Sim '), nl,
  write('2. - Nao '), nl,
  read(Alternativa),
  novaConsulta(Alternativa).

novaConsulta(1) :- sinder().

novaConsulta(2) :- write('Tchau, miga :)'), nl.

signoAniversario(Dia, Mes, Signo) :- horoscopo(Signo,Di,Mi,Df,Mf),((Mes=Mi,Dia>=Di,mes(Mi,D),Dia=<D);(Mes=Mf,Dia=<Df,Dia>0)).

combinacaoAmor(Signo, Outro) :- afinidade(Signo, Outro, Amor, _, _, _), Amor >= 9.
combinacaoSexo(Signo, Outro) :- afinidade(Signo, Outro, _, Sexo, _, _), Sexo >= 9.
combinacaoTrabalho(Signo, Outro) :- afinidade(Signo, Outro, _, _, Trabalho, _), Trabalho >= 9.
combinacaoAmizade(Signo, Outro) :- afinidade(Signo, Outro, _, _, _, Amizade), Amizade >= 9.

entrarCombinacaoAmor :- read(Signo), read(Outro), combinacaoAmor(Signo, Outro).
entrarCombinacaoSexo :- read(Signo), read(Outro), combinacaoSexo(Signo, Outro).
entrarCombinacaoTrabalho :- read(Signo), read(Outro), combinacaoTrabalho(Signo, Outro).
entrarCombinacaoAmizade :- read(Signo), read(Outro), combinacaoAmizade(Signo, Outro).
