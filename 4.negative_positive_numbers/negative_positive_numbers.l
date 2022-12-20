%{
int c=0,d=0;
%}
pdigit [0-9]
ndigit [-][0-9]
%%
{pdigit} c++;
{ndigit} d++;
. ;
%%
int main()
{
yyin=fopen("d.txt","r");
yylex();
printf("Positive count is %d\nNegative count is %d\n",c,d);
}
int yywrap()
{
return 1;
}
