SELECT upper("Goodboy") as "upper()",
lower("Goodboy") as "lower()",
char_length("Goodboy") as "char_length()",
concat("Goodboy","Beast") as "concat()",
concat_ws(" - ","Goodboy","Beast") as "concat_ws()";

select ltrim("   Goodboy   ") as "ltrim()",
rtrim("   Goodboy   ") as "rtrim()",
trim("   Goodboy   ") as "trim()",
position("b" in "Goodboy") as "position()",
locate("o","Goodboy",4) as "locate()";
