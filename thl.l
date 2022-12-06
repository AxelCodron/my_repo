%option nounput noinput noyywrap

%{
    #include <stdio.h>
%}

BLANK [ \t]

%%

%{
    printf("Looking for a pattern...\n");
%}

"2" {printf("two");}
"4" {printf("four");}
"42" {printf("twenty-four");}
"+" {printf("\"+\"");}
"-" {printf("\"-\"");} 
[0-9]+ {printf(yytext);}
[ ]+ {printf(" ");}
. {printf(".");}

%%


int main() {
    while (yylex());
    return 0;
}
