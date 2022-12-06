%option nounput noinput noyywrap

%{
    #include <stdio.h>
%}

%%

%{
    printf("Please enter a sentence.\n");
    int count = 0;
%}

[^[A-Za-z \n]]* {printf("error\n");}
[A-Za-z]+[ ]* {count++;}
"\n" {
    printf("%d\n", count);
    count = 0;
}
. {}

%%

int main() {
    while (yylex());
    return 0;
}
