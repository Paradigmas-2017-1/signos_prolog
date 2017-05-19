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

interpretaTipoDeConsulta(3) :- signo().

interpretaTipoDeConsulta(4) :- acharCombinacoes().

interpretaTipoDeConsulta(5) :- novaConsulta(2).

signo :- write('Voce deseja entrar com seu aniversario ou seu signo?'), nl,
  write('1. - Aniversario '), nl,
  write('2. - Signo '), nl,
  read(Alternativa),
  interpretaEscolha(Alternativa).

interpretaEscolha(1) :- write('Digite primeiro o dia e depois o mes do seu aniversario'), nl,
  read(Dia),
  read(Mes),
  signoAniversario(Dia, Mes, Signo),
  acharCrush(Signo).

interpretaEscolha(2) :- write('Digite seu signo (minusculo e sem acentos)'), nl,
  read(Signo),
  acharCrush(Signo).

acharCrush(Signo) :- write('Voce deseja entrar com o aniversario ou signo do crush?'), nl,
  write('1. - Aniversario '), nl,
  write('2. - Signo '), nl,
  read(Alternativa),
  interpretaEscolhaCrush(Alternativa, Signo).

interpretaEscolhaCrush(1, Signo) :- write('Digite primeiro o dia e depois o mes do aniversario do crush'), nl,
  read(Dia),
  read(Mes),
  signoAniversario(Dia, Mes, Crush),
  identificarCombinacao(Signo, Crush).

interpretaEscolhaCrush(2, Signo) :- write('Digite o signo do seu crush (minusculo e sem acentos)'), nl,
  read(Crush),
  identificarCombinacao(Signo, Crush).

identificarCombinacao(Signo, Crush) :- write('Você deseja encontrar que tipo de combinacao?'), nl,
  write('1. - Amorzinho'), nl,
  write('2. - Pra copular'), nl,
  write('3. - Meter o loko'), nl,
  write('4. - Virar brother'), nl,
  read(Alternativa),
  interpretaCombinacao(Alternativa, Signo, Crush).

interpretaCombinacao(1, Signo, Crush) :- nl,
  ( combinacaoAmor(Signo, Crush) -> 
    write('Voce e o crush sao muito amorzinhos')
    ; 
    write('Acha outro crush, miga :(')
  ),
  nl,
  nl,
  voltarMenu().

interpretaCombinacao(2, Signo, Crush) :- nl,
  ( combinacaoSexo(Signo, Crush) ->
    write('Voce e o crush podem arrochar na copulacao')
    ;
    write('Acha outro crush, miga :(')
  ),
  nl,
  nl,
  voltarMenu().

interpretaCombinacao(3, Signo, Crush) :- nl,
  ( combinacaoTrabalho(Signo, Crush) ->
    write('Voce e o crush podem meter o louco já')
    ;
    write('Acha outro crush, miga :(')
  ),
  nl,
  nl,
  voltarMenu().

interpretaCombinacao(4, Signo, Crush) :- nl,
  ( combinacaoAmizade(Signo, Crush) ->
    write('Voce e o crush sao moh brothers')
    ;
    write('Acha outro crush, miga :(')
  ),
  nl,
  nl,
  voltarMenu().

acharCombinacoes :- write('Voce deseja entrar com seu aniversario ou seu signo?'), nl,
  write('1. - Aniversario '), nl,
  write('2. - Signo '), nl,
  read(Alternativa),
  interpretaEscolhaCombinacoes(Alternativa).

interpretaEscolhaCombinacoes(1) :- write('Digite primeiro o dia e depois o mes do seu aniversario'), nl,
  read(Dia),
  read(Mes),
  signoAniversario(Dia, Mes, Signo),
  acharCrushes(Signo).

interpretaEscolhaCombinacoes(2) :- write('Digite seu signo (minusculo e sem acentos)'), nl,
  read(Signo),
  acharCrushes(Signo).

acharCrushes(Signo) :- write('Você deseja encontrar que tipo de combinacao?'), nl,
  write('1. - Amorzinho'), nl,
  write('2. - Pra copular'), nl,
  write('3. - Meter o loko'), nl,
  write('4. - Virar brother'), nl,
  read(Alternativa),
  interpretaCombinacoes(Alternativa, Signo).

interpretaCombinacoes(1, Signo) :- nl,
  combinacaoAmor(Signo, X),
  write(X),
  nl,
  nl,
  voltarMenu().

interpretaCombinacoes(2, Signo) :- nl,
  combinacaoSexo(Signo, X),
  write(X),
  nl,
  nl,
  voltarMenu().

interpretaCombinacoes(3, Signo) :- nl,
  combinacaoTrabalho(Signo, X),
  write(X),
  nl,
  nl,
  voltarMenu().

interpretaCombinacoes(4, Signo) :- nl,
  combinacaoAmizade(Signo, X),
  write(X),
  nl,
  nl,
  voltarMenu().

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

% entrarCombinacaoAmor :- read(Signo), read(Outro), combinacaoAmor(Signo, Outro).
% entrarCombinacaoSexo :- read(Signo), read(Outro), combinacaoSexo(Signo, Outro).
% entrarCombinacaoTrabalho :- read(Signo), read(Outro), combinacaoTrabalho(Signo, Outro).
% entrarCombinacaoAmizade :- read(Signo), read(Outro), combinacaoAmizade(Signo, Outro).
