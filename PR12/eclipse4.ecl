:- lib(ic).

susedia(N,Z,P,F,C):-  
    N = [Brit,Sved,Dan,Nor,Nemec],  		N :: 1..5,  	    alldifferent(N),  
    Z = [Pes,Vtak,Macka,Kon,Rybicky],  		Z :: 1..5,      	alldifferent(Z),  
    P = [Caj,Kava,Mlieko,Pivo,Vodu],      	P :: 1..5,      	alldifferent(P),  
    F = [Pallmall,Dunhill,Blend,Bluemaster,Prince],   F :: 1..5,      alldifferent(F),  
    C = [Cerveny,Biely,Zeleny,Zlty,Modry],  C :: 1..5,      	alldifferent(C),  
  
    Brit #= Cerveny,  	% Brit b�va v cervenom dome.
    Sved #= Pes,  		% �v�d chov� psa.
    Dan #= Caj,  		% D�n pije caj.
    Biely #= Zeleny+1,  % Zelen� dom stoj� hned nalavo od bieleho.
    Zeleny #= Kava,  	% Majitel zelen�ho domu pije k�vu.
    Pallmall #= Vtak,   % Ten, kto fajc� PallMall, chov� vt�ka.
    Zlty #= Dunhill,  	% Majitel �lt�ho domu fajc� Dunhill.
    Mlieko #= 3,  		% Clovek z prostredn�ho domu pije mlieko.
    Nor #= 1,  			% N�r b�va v prvom dome.
    abs(Blend-Macka) #= 1,  % Ten, kto fajc� Blend, b�va vedla toho, kto chov� macku.
    abs(Kon-Dunhill) #= 1,  % Ten, kto chov� kone, b�va vedla toho, kto fajc� Dunhill.
    Bluemaster #= Pivo, % Ten, kto fajc� Blue Master, pije pivo.
    Nemec #= Prince,  	% Nemec fajc� Prince.
    abs(Nor-Modry) #= 1,% N�r b�va vedla modr�ho domu.
    abs(Blend-Vodu) #=1,  % Ten, kto fajc� Blend, m� suseda, ktor� pije vodu.
  
    labeling(N),  	labeling(C),	labeling(Z),     labeling(P),	labeling(F).
