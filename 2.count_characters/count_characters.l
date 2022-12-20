%{
int c=0;
%}
%%
[A-Za-z] c++;
. ;
%%
int main()
{
yyin=fopen("b.c","r");
yylex();
printf("count is %d\n",c);
}
int yywrap()
{
return 1;
}
