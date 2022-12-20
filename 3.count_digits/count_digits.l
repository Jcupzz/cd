%{
int c=0;
%}
digit [0-9]
%%
{digit} c++;
. ;
%%
int main()
{
yyin=fopen("a.c","r");
yylex();
printf("count is %d\n",c);
}
int yywrap()
{
return 1;
}
