// esse codigo mede o arco pro trabalho de CN.
// Por Mateus de Assis, 23 de agosto de 2018.

#include<stdio.h>
#include<math.h>

int main(){
    float c[10][2] = {{485,308},{490,312},{493,314},{545,315},{611,335},{606,351},{596,352},{567,343},{553,342},{546,344}};
    // c é a matriz com todos os centros, cada linha é um centro de movimento pendular
    float p[10][2] = {{524,1271},{317,1254},{273,1249},{169,1194},{582,1302},{758,1299},{867,1274},{1004,1178},{782,1249},{515,1276}};
    // p é a matriz do movimento pendular.
    int ms[10] = {00,106,138,305,644,745,815,1020,1257,1393};
    // ms é o array de milissegundos
    int i, j ; // necessários para se andar na matriz
    float hip, xt,yt; // a hipotenusa do triângulo que queremos
                    // o x do triangulo e o y do triangulo
    float theta; // a angulação desejada

    for(i = 0; i < 10 ; i++){
        xt = p[i][0] - c[i][0];
        yt = p[i][1] - c[i][1];
        hip = sqrt (pow(xt,2) + pow(yt,2));
        theta = acos(xt / hip);
        printf("Para o ms = %d , o arco vale %f rad \n", ms[i], theta);
     }

    return 0;

}
