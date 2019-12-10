begin.
assertz(col(patient,'d1f9c856-e5c6-4e3f-abc3-6e5a33aa5632')).
assertz(eav('d1f9c856-e5c6-4e3f-abc3-6e5a33aa5632',age,1)).
assertz(eav('d1f9c856-e5c6-4e3f-abc3-6e5a33aa5632',gender,'F')).
assertz(eav('d1f9c856-e5c6-4e3f-abc3-6e5a33aa5632',medical_history,.(allergies,.(common_cold,[])))).
assertz(eav('d1f9c856-e5c6-4e3f-abc3-6e5a33aa5632',name,'Helen Mary')).
assertz(eav('d1f9c856-e5c6-4e3f-abc3-6e5a33aa5632',treatment,.(nothing,[]))).
end.
begin.
assertz(col(patient,'0822fccd-7405-46f0-aaff-34692c10e8ef')).
assertz(eav('0822fccd-7405-46f0-aaff-34692c10e8ef',age,1)).
assertz(eav('0822fccd-7405-46f0-aaff-34692c10e8ef',gender,'F')).
assertz(eav('0822fccd-7405-46f0-aaff-34692c10e8ef',medical_history,.(allergies,.(common_cold,[])))).
assertz(eav('0822fccd-7405-46f0-aaff-34692c10e8ef',name,'Helen Mary')).
assertz(eav('0822fccd-7405-46f0-aaff-34692c10e8ef',treatment,.(nothing,[]))).
end.
begin.
assertz(col(patient,'95cd1744-9b25-47fa-aeec-5fac0f7e30f9')).
assertz(eav('95cd1744-9b25-47fa-aeec-5fac0f7e30f9',age,67)).
assertz(eav('95cd1744-9b25-47fa-aeec-5fac0f7e30f9',gender,'M')).
assertz(eav('95cd1744-9b25-47fa-aeec-5fac0f7e30f9',medical_history,.(pneumonia,.(ulcer,.(measles,.(common_cold,.(allergies,[]))))))).
assertz(eav('95cd1744-9b25-47fa-aeec-5fac0f7e30f9',name,'Jude Law')).
assertz(eav('95cd1744-9b25-47fa-aeec-5fac0f7e30f9',treatment,.(ulcer,[]))).
end.
begin.
assertz(col(patient,'4956c840-9c95-4097-ac88-d531cb3b7c81')).
assertz(eav('4956c840-9c95-4097-ac88-d531cb3b7c81',age,34)).
assertz(eav('4956c840-9c95-4097-ac88-d531cb3b7c81',gender,'M')).
assertz(eav('4956c840-9c95-4097-ac88-d531cb3b7c81',medical_history,[])).
assertz(eav('4956c840-9c95-4097-ac88-d531cb3b7c81',name,'Hello World')).
assertz(eav('4956c840-9c95-4097-ac88-d531cb3b7c81',treatment,.(nothing,[]))).
end.
