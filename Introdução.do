*------------------*
* COMANDOS BÁSICOS *
*------------------*

// criando diretório de trabalho
cd "C:\Stata"

// abrir configuracoes
set 

// define a vírgula como separador decimal
set dp comma

// retornar ao padrão (separador decimal ponto)
set dp period

// desativar a pausa automática ao exibir longas listas de resultados na tela
set more off 

// abrir doedit
doedit 

// gerar nova variavel
generate 

// resumir variaveis
summarize ou sum

// descrever variáveis
describe 

// criar tabelas de frequência
tab

// usar para limpar a base anterior e carregar uma nova
clear

// visualizar base
view 

// limpar aba de resultados
cls

// re-classificar variávies
recode
recode idade (0/17 = 1 "Jovem") (18/64 = 2 "Adulto") (65/max = 3 "Idoso")

// substituir variáveis
replace
replace idade = 25 if sexo == 1

// organizar de forma crescente
bysort

// pedir ajuda
help

*-----------------------------------------------*
* OPERADORES ARITMÉTICOS, RELACIONAIS E LÓGICOS *
*-----------------------------------------------*

// OPERAÇÕES ARITMÉTICAS
1) soma -> +
2) substracao -> -
3) multiplicacao -> *
4) divisao -> /
5) potencia -> ^

// Exemplos:
display 4+7
display 9-7
display 6*5
display 16/4
display 2^4
display 3*(10-8)
display (-9)^2/3

// OPERAÇÕES RELACIONAIS E LÓGICAS
1) igualdade -> ==
2) maior que -> > or =>
3) menor que -> < or <=
4) diferenca -> ~
5) e -> & (duas condicoes precisam ser satisfeitas ao mesmo tempo)
6) ou -> | (uma condicoes ou outra precisa ser satisfeita)
7) atribuindo valor -> = 

*---------------------*
* MANIPULAR VARIÁVEIS *
*---------------------*

// excluir variáveis
drop 

// excluir informações
drop if missing(x) //informações faltantes//
drop if ==X //informações expecíficas//
keep //manter apenas variáveis específicas//

// manter a variável com modificações
keep if  V8005>=18 & V8005<=24 /*(manter apenas individuos jovens)*/

// renomear variáveis de interesse
rename x y

// mudar descrição da variável
label variable ano "V0101-ANO DE REFERÊNCIA"

// alterando rótulos das dados das variáveis
label define x 1 "y" 2 "w", replace //especificando mudancas //
label values x x //aplicando as mudancas//
