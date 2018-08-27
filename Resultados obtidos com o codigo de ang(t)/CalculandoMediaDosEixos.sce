/*00ms:
	C = <485,308>
	P = <524,1271>	
	theta = 1.530320
106ms:
	C = <490,312>
	P = <317,1254>	
	theta = 1.752424
305ms:
	C = <545,315>
	P = <169,1194>
	theta = 1.975001
644ms:
	C = <611,335>
	P = <582,1302>
	theta = 1.600777
745ms:
	C = <606,351>
	P = <758,1299>
	theta = 1.411812
815ms:
	C = <596,352>
	P = <867,1274>
	theta = 1.284921
1020ms:
	C = <567,343>
	P = <1004,1178>
	theta = 1.088641
1393ms:
	C = <546,344>
	P = <515,1276>
theta = 1.604046
*/

//inicio do codigo.

    cx(1) = 485;
    cx(2) = 490;
    cx(3) = 545;
    cx(4) = 611;
    cx(5) = 606;
    cx(6) = 596;
    cx(7) = 567;
    cx(8) = 546;
    
    mediaCX = 0;
    
    for i = 1:1:8
        mediaCX = mediaCX + cx(i);
    end    
    
    mediaCX = mediaCX/8;
    
    cy(1) = 308;
    cy(2) = 312;
    cy(3) = 315;
    cy(4) = 335;
    cy(5) = 351;
    cy(6) = 352;
    cy(7) = 343;
    cy(8) = 344;
    
     mediaCY = 0;
    
    for i = 1:1:8
        mediaCY = mediaCY + cy(i);
    end    
    
    mediaCY = mediaCY/8;
 
 
 
 
