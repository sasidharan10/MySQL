SELECT substr("Goodboy",2,6) as "substr()",
substring_index("Goodboy","d",1) as "substring_index()",
left("Goodboy",4) as "left()",
right("Goodboy",3) as "right()",
rpad("Goodboy",10,"-") as "rpad()",
lpad("Goodboy",10,"-") as "lpad()",
space(10) as "space()";

select reverse("Goodboy") as "reverse()",
replace("Goodboy","good","bad") as "replace()",
strcmp("Goodboy","goodboy") as "strcmp()",
field("a","b","a","d") as "field()",
find_in_set("u","b,a,d,g,u,y") as "find_in_set()",
format(236.45632,2) as "format()",
hex("goodboy") as "hex()";