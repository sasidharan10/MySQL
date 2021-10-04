update staff set AGE = (
CASE id
	when 1 then 26
	when 2 then 23
	when 3 then 25
	when 4 then 22
	when 5 then 24
end
);