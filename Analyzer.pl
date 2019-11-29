%%% CPSC 312 - 2019 - Project 2
% Brendan David Chung - 10580744
% Leann Santa Cruz - 24928525

% The dynamic declaration prevents undefined predicate errors.
:- dynamic symptom/1.

start :-
    write('Enter the patient''s name? '),
    read(Patient),
    % checkPatient(Patient),
    analysis(Patient, Diagnosis),
    write_list([Patient, 'probably has ', Diagnosis, '.']), nl,
    write('Do you have anymore symptoms? (y/n)'),
    response(Reply),
    Reply='n'.


start :-
    write('Unable to get a diagnosis.'),nl.

% checkPatient(Patient) :-
    % listed(Patient).
% checkPatient(Patient) :-
    % write_list([Patient, ' is not listed.']),
    % nl,
    % write_list(['Enter ', Patient, '''s information.']).
    % get patient info gets the name, address, medical history of the patient.
    % implement patient info


symptom(Patient, fever) :-
    write('Do you have a fever (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, nausea) :-
    write('Do you have any nausea (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, coughing) :-
    write('Are you coughing (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, sneezing) :-
    write('Are you sneezing (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, headache) :-
    write('Do you have a headache (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, chest_pains) :-
    write('Do you have any chest pains (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, abdominal_pain) :-
    write('Do you have any abdominal pain (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, runny_nose) :-
    write('Do you have a runny nose (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, nasal_congestion) :-
    write('Do you have any nasal congestion (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, fatigue) :-
    write('Are you experiencing fatigue (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, shortness_of_breath) :-
    write('Do you have any shortness of breath (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, sweats) :-
    write('Are you experiencing sweats ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, bloating) :-
    write('Are you bloated (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, sore_throat) :-
    write('Do you have a sore throat (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, rash) :-
    write('Do you have a rash (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, vomiting) :-
    write('Are you experiencing any vomiting (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, breathing_difficulties) :-
    write('Are you experiencing any breathing difficulties (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, constipation) :-
    write('Are you experiencing constipation (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, diarrhea) :-
    write('Are you having diarrhea (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, heartburn) :-
    write('Are you experiencing heartburn (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, chills) :-
    write('Do you have chills (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, dizziness) :-
    write('Do you feel any dizziness (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, swelling) :-
    write('Do you have any swelling in the body (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, watery_eyes) :-
    write('Do you have watery eyes (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, conjunctivitis) :-
    write('Do you have pink eye (y/n)'),
    response(Reply),
    Reply='y'.

symptom(Patient, muscle_pain) :-
    write('Do you have muscle pain (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, joint_pain) :-
    write('Do you have any joint pain (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, loss_of_appetite) :-
    write('Are you experiencing a loss of appetite (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, disorientation) :-
    write('Are you feeling disoriented (y/n) ?'),
    response(Reply),
    Reply='y'.

symptom(Patient, phlegm) :-
    write('Does your cough have phlegm (y/n) ?'),
    response(Reply),
    Reply='y'.


%%% Diagnosis


% Common Cold
analysis(Patient,common_cold) :-
    symptom(Patient,coughing),
    symptom(Patient,headache),
    symptom(Patient,runny_nose).
analysis(Patient,common_cold) :-
    symptom(Patient,coughing),
    symptom(Patient,sneezing),
    symptom(Patient,runny_nose).
analysis(Patient,common_cold) :-
    symptom(Patient,coughing),
    symptom(Patient,sneezing),
    symptom(Patient,headache),
    symptom(Patient,runny_nose).
analysis(Patient,common_cold) :-
    symptom(Patient,coughing),
    symptom(Patient,sneezing),
    symptom(Patient, nasal_congestion),
    symptom(Patient,runny_nose).


analysis(Patient,flu) :-
    symptom(Patient,fever),
    symptom(Patient,headache),
    symptom(Patient,muscle_pain),
    symptom(Patient,conjunctivitis),
    symptom(Patient,chills),
    symptom(Patient,sore_throat),
    symptom(Patient,runny_nose),
    symptom(Patient,coughing).


analysis(Patient,common_cold) :-
    symptom(Patient,headache),
    symptom(Patient,sneezing),
    symptom(Patient,sore_throat),
    symptom(Patient,runny_nose),
    symptom(Patient,chills).

analysis(Patient,mumps) :-
    symptom(Patient,fever),

analysis(Patient,chicken_pox) :-
    symptom(Patient,fever),
    symptom(Patient,chills),
    symptom(Patient,muscle_pain),
    symptom(Patient,rash).

analysis(Patient,measles) :-
    symptom(Patient,coughing),
    symptom(Patient,sneezing),
    symptom(Patient,runny_nose).

analysis(Patient,measles) :-
    symptom(Patient,fever),
    symptom(Patient,coughing),
    symptom(Patient,conjunctivitis),
    symptom(Patient,runny_nose),
    symptom(Patient,rash).

write_list([]).
write_list([Term| Terms]) :-
    write(Term),
    write_list(Terms).

response(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code).
