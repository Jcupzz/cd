%{
#include<stdio.h>
#include<stdlib.h>
%}
%token DIGIT LETTER
%start S
%%
S : variable { printf("Valid Variable\n"); }
;
variable : LETTER alphanumeric
;
alphanumeric :LETTER alphanumeric
|DIGIT alphanumeric
|LETTER
|DIGIT
;
%%
int main ()
{
do
{printf("Enter the expression\n");
yyparse();
}while(1);
return 1;
}
int yyerror (char *msg)
{
printf("Invalid Expression\n");
}
yywrap()
{
return(1);
}
