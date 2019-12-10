%%% CPSC 312 - 2019 - Project 2
% Brendan David Chung - 10580744
% Leann Santa Cruz - 24928525

% The dynamic declaration prevents undefined predicate errors.
:- dynamic start/0.
:- use_module(library(docstore)).

start :-
% check if patient in database
write("Please enter your name (in ''): "),
read(Patient), nl,
try(Patient).

% checks if patient is in database
try(N) :-
ds_open('p_database.pl'), check(N),
write_list(['Welcome ', N, '!']),
ds_close.

try(N) :-
write_list(['Welcome ', N, '!']), write("Let's check your symptoms first."), nl, diagnose,
ds_close.

check(N) :-
ds_find(patient, name=N, List),
is_empty(List),
write_list(['No Prior records found for Patient ', N, '.']),
nl, nl,
write("Please add a new entry to the database."), nl,
write("Insert data as query in format: ds_insert(patient{name: 'Patient_name', age: Patient_age, gender: 'F', medical_history: [], treatment: []}).").

is_empty(List):- not(member(_,List)).

diagnose :-
% check if patient is in database
nl,
    symptom(_, coughing, [], S1),
    symptom(_, sneezing, S1, S2),
    symptom(_, headache, S2, S3),
    symptom(_, vomiting, S3, S4),
    symptom(_, runny_nose, S4, S5),
    symptom(_, chest_pains, S5, S6),
    symptom(_, rapid_heartbeat, S6, S7),
    symptom(_, abdominal_pain, S7, S8),
    symptom(_, congestion, S8, S9),
    symptom(_, sore_throat, S9, S10),
    symptom(_, watery_eyes, S10, S11),
    symptom(_, breathing_difficulties, S11, S12),
    symptom(_, shortness_of_breath, S12, S13),
    symptom(_, fatigue, S13, S14),
    symptom(_, rash, S14, S15),
    symptom(_, swelling, S15, S16),
    symptom(_, sweats, S16, S17),
    symptom(_, bloating, S17, S18),
    symptom(_, constipation, S18, S19),
    symptom(_, diarrhea, S19, S20),
    symptom(_, nausea, S20, S21),
    symptom(_, heartburn, S21, S22),
    symptom(_, muscle_pain, S22, S23),
    symptom(_, joint_pain, S23, S24),
    symptom(_, loss_of_appetite, S24, S25),
    symptom(_, fever, S25, S26),
    symptom(_, disorientation, S26, S27),
    symptom(_, phlegm, S27, S28),
    symptom(_, flatulence, S28, S29),
    symptom(_, insomnia, S29, S30),
    symptom(_, jaundice, S30, S31),
    symptom(_, conjunctivitis, S31, S32),
    symptom(_, chills, S32, S33),
    symptom(_, dizziness, S33, S34),
    symptom(_, itchiness, S34, S35),
    symptom(_, dehydration, S35, S36),

    diagnosis(S36, common_cold, (common_cold, L1)),
    diagnosis(S36, allergies, (allergies, L2)),
    diagnosis(S36, asthma, (asthma, L3)),
    diagnosis(S36, cirrhosis, (cirrhosis, L4)),
    diagnosis(S36, coeliac, (coeliac, L5)),
    diagnosis(S36, bronchitis, (bronchitis, L6)),
    diagnosis(S36, pneumonia, (pneumonia, L7)),
    diagnosis(S36, flu, (flu, L8)),
    diagnosis(S36, gastroenteritis, (gastroenteritis, L9)),
    diagnosis(S36, food_poisoning, (food_poisoning, L10)),
    diagnosis(S36, indigestion, (indigestion, L11)),
    diagnosis(S36, stress, (stress, L12)),
    diagnosis(S36, irritable_bowel_syndrome, (irritable_bowel_syndrome, L13)),
    diagnosis(S36, diverticulitis, (diverticulitis, L14)),
    diagnosis(S36, ulcer, (ulcer, L15)),
    diagnosis(S36, measles, (measles, L16)),

    find_best_diagnosis([(common_cold, L1), (allergies, L2), (asthma, L3), (cirrhosis, L4), (coeliac, L5), (bronchitis, L6), (pneumonia, L7), (flu, L8), (gastroenteritis, L9), (food_poisoning, L10), (indigestion, L11), (stress, L12), (irritable_bowel_syndrome, L13), (diverticulitis, L14), (ulcer, L15), (measles, L16)], (D, L)),
    treatment(D, T),

    nl, write_list(['You have ', L, ' symptoms.']),
    nl, write_list(['Patient probably has ', D, '.']), nl, nl,
    write_list([T]), nl, nl,
    write("Update database for information.").



%%% Symptoms

symptom(_, coughing, S1, S2) :-
    write('Are you coughing? (y/n)'),
    response(Reply),
    Reply='y',
    append([coughing], S1, S2),
    !.
symptom(_, coughing, S1, S1).

symptom(_, sneezing, S1, S2) :-
    write('Are you sneezing? (y/n)'),
    response(Reply),
    Reply='y',
    append([sneezing], S1, S2),
    !.
symptom(_, sneezing, S1, S1).

symptom(_, headache, S1, S2) :-
    write('Do you have a headache? (y/n)'),
    response(Reply),
    Reply='y',
    append([headache], S1, S2),
    !.
symptom(_, headache, S1, S1).

symptom(_, vomiting, S1, S2) :-
    write('Are you experiencing any vomiting? (y/n)'),
    response(Reply),
    Reply='y',
    append([vomiting], S1, S2),
    !.
symptom(_, vomiting, S1, S1).

symptom(_, runny_nose, S1, S2) :-
    write('Do you have a runny nose? (y/n)'),
    response(Reply),
    Reply='y',
    append([runny_nose], S1, S2),
    !.
symptom(_, runny_nose, S1, S1).

symptom(_, chest_pains, S1, S2) :-
    write('Do you have any chest pains? (y/n)'),
    response(Reply),
    Reply='y',
    append([chest_pains], S1, S2),
    !.
symptom(_, chest_pains, S1, S1).

symptom(_, rapid_heartbeat, S1, S2) :-
    write('Do you have a rapid heartbeat? (y/n)'),
    response(Reply),
    Reply='y',
    append([rapid_heartbeat], S1, S2),
    !.
symptom(_, rapid_heartbeat, S1, S1).

symptom(_, abdominal_pain, S1, S2) :-
    write('Do you have any abdominal pain? (y/n)'),
    response(Reply),
    Reply='y',
    append([abdominal_pain], S1, S2),
    !.
symptom(_, abdominal_pain, S1, S1).

symptom(_, congestion, S1, S2) :-
    write('Do you have any nasal congestion? (y/n)'),
    response(Reply),
    Reply='y',
    append([congestion], S1, S2),
    !.
symptom(_, congestion, S1, S1).

symptom(_, sore_throat, S1, S2) :-
    write('Do you have a sore throat? (y/n)'),
    response(Reply),
    Reply='y',
    append([sore_throat], S1, S2),
    !.
symptom(_, sore_throat, S1, S1).

symptom(_, watery_eyes, S1, S2) :-
    write('Do you have watery eyes? (y/n)'),
    response(Reply),
    Reply='y',
    append([watery_eyes], S1, S2),
    !.
symptom(_, watery_eyes, S1, S1).

symptom(_, breathing_difficulties, S1, S2) :-
    write('Are you experiencing any breathing difficulties? (y/n)'),
    response(Reply),
    Reply='y',
    append([breathing_difficulties], S1, S2),
    !.
symptom(_, breathing_difficulties, S1, S1).

symptom(_, shortness_of_breath, S1, S2) :-
    write('Are you experiencing any shortness of breath? (y/n)'),
    response(Reply),
    Reply='y',
    append([shortness_of_breath], S1, S2),
    !.
symptom(_, shortness_of_breath, S1, S1).

symptom(_, fatigue, S1, S2) :-
    write('Are you experiencing fatigue? (y/n)'),
    response(Reply),
    Reply='y',
    append([fatigue], S1, S2),
    !.
symptom(_, fatigue, S1, S1).

symptom(_, rash, S1, S2) :-
    write('Do you have a rash? (y/n)'),
    response(Reply),
    Reply='y',
    append([rash], S1, S2),
    !.
symptom(_, rash, S1, S1).

symptom(_, swelling, S1, S2) :-
    write('Do you have any swelling in the body? (y/n)'),
    response(Reply),
    Reply='y',
    append([swelling], S1, S2),
    !.
symptom(_, swelling, S1, S1).

symptom(_, sweats, S1, S2) :-
    write('Are you waking up in cold sweats? (y/n)'),
    response(Reply),
    Reply='y',
    append([sweats], S1, S2),
    !.
symptom(_, sweats, S1, S1).

symptom(_, bloating, S1, S2) :-
    write('Are you bloated? (y/n)'),
    response(Reply),
    Reply='y',
    append([bloating], S1, S2),
    !.
symptom(_, bloating, S1, S1).

symptom(_, constipation, S1, S2) :-
    write('Are you experiencing constipation? (y/n)'),
    response(Reply),
    Reply='y',
    append([constipation], S1, S2),
    !.
symptom(_, constipation, S1, S1).

symptom(_, diarrhea, S1, S2) :-
    write('Do you have diarrhea? (y/n)'),
    response(Reply),
    Reply='y',
    append([diarrhea], S1, S2),
    !.
symptom(_, diarrhea, S1, S1).

symptom(_, nausea, S1, S2) :-
    write('Do you have any nausea? (y/n)'),
    response(Reply),
    Reply='y',
    append([nausea], S1, S2),
    !.
symptom(_, nausea, S1, S1).

symptom(_, heartburn, S1, S2) :-
    write('Are you experiencing heartburn? (y/n)'),
    response(Reply),
    Reply='y',
    append([heartburn], S1, S2),
    !.
symptom(_, heartburn, S1, S1).

symptom(_, muscle_pain, S1, S2) :-
    write('Do you have muscle pain? (y/n)'),
    response(Reply),
    Reply='y',
    append([muscle_pain], S1, S2),
    !.
symptom(_, muscle_pain, S1, S1).

symptom(_, joint_pain, S1, S2) :-
    write('Do you have any joint pain? (y/n)'),
    response(Reply),
    Reply='y',
    append([joint_pain], S1, S2),
    !.
symptom(_, joint_pain, S1, S1).

symptom(_, loss_of_appetite, S1, S2) :-
    write('Are you experiencing a loss of appetite? (y/n)'),
    response(Reply),
    Reply='y',
    append([loss_of_appetite], S1, S2),
    !.
symptom(_, loss_of_appetite, S1, S1).

symptom(_, fever, S1, S2) :-
    write('Do you have a fever? (y/n)'),
    response(Reply),
    Reply='y',
    append([fever], S1, S2),
    !.
symptom(_, fever, S1, S1).

symptom(_, disorientation, S1, S2) :-
    write('Are you feeling disoriented? (y/n)'),
    response(Reply),
    Reply='y',
    append([disorientation], S1, S2),
    !.
symptom(_, disorientation, S1, S1).

symptom(_, phlegm, S1, S2) :-
    write('Do you have phlegm? (y/n)'),
    response(Reply),
    Reply='y',
    append([phlegm], S1, S2),
    !.
symptom(_, phlegm, S1, S1).

symptom(_, flatulence, S1, S2) :-
    write('Are you farting a lot? (y/n)'),
    response(Reply),
    Reply='y',
    append([flatulence], S1, S2),
    !.
symptom(_, flatulence, S1, S1).

symptom(_, insomnia, S1, S2) :-
    write('Do you have trouble sleeping? (y/n)'),
    response(Reply),
    Reply='y',
    append([insomnia], S1, S2),
    !.
symptom(_, insomnia, S1, S1).

symptom(_, jaundice, S1, S2) :-
    write('Is your skin yellowish? (y/n)'),
    response(Reply),
    Reply='y',
    append([jaundice], S1, S2),
    !.
symptom(_, jaundice, S1, S1).

symptom(_, conjunctivitis, S1, S2) :-
    write('Do you have pink eye? (y/n)'),
    response(Reply),
    Reply='y',
    append([conjunctivitis], S1, S2),
    !.
symptom(_, conjunctivitis, S1, S1).

symptom(_, chills, S1, S2) :-
    write('Do you have chills? (y/n)'),
    response(Reply),
    Reply='y',
    append([chills], S1, S2),
    !.
symptom(_, chills, S1, S1).

symptom(_, dizziness, S1, S2) :-
    write('Do you feel any dizziness? (y/n)'),
    response(Reply),
    Reply='y',
    append([dizziness], S1, S2),
    !.
symptom(_, dizziness, S1, S1).

symptom(_, itchiness, S1, S2) :-
    write('Are you experiencing any itchiness? (y/n)'),
    response(Reply),
    Reply='y',
    append([itchiness], S1, S2),
    !.
symptom(_, itchiness, S1, S1).

symptom(_, dehydration, S1, S2) :-
    write('Are you dehydrated? (y/n)'),
    response(Reply),
    Reply='y',
    append([dehydration], S1, S2),
    !.
symptom(_, dehydration, S1, S1).



%%% Diagnosis

% Common Cold
diagnosis(S, common_cold, (common_cold, Length)) :-
    intersection(S, [coughing,sneezing,headache,runny_nose], I),
    len(I, Length).

% Allergies
diagnosis(S, allergies, (allergies, Length)) :-
    intersection(S, [sneezing,runny_nose,congestion,sore_throat,itchiness,watery_eyes,breathing_difficulties,rash,swelling], I),
    len(I, Length).

% Asthma
diagnosis(S, asthma, (asthma, Length)) :-
    intersection(S, [coughing,breathing_difficulties], I),
    len(I, Length).

% Cirrhosis
diagnosis(S, cirrhosis, (cirrhosis, Length)) :-
    intersection(S, [fatigue,loss_of_appetite,nausea,swelling,itchiness,jaundice,disorientation], I),
    len(I, Length).

% Coeliac
diagnosis(S, coeliac, (coeliac, Length)) :-
    intersection(S, [diarrhea,bloating,flatulence,fatigue,loss_of_appetite,constipation,itchiness], I),
    len(I, Length).

% Bronchitis
diagnosis(S, bronchitis, (bronchitis, Length)) :-
    intersection(S, [coughing,congestion,shortness_of_breath,fatigue,fever,phlegm], I),
    len(I, Length).

% Pneumonia
diagnosis(S, pneumonia, (pneumonia, Length)) :-
    intersection(S, [coughing,chest_pains,shortness_of_breath,fatigue,fever,disorientation,phlegm,nausea,vomiting,diarrhea], I),
    len(I, Length).

% Flu
diagnosis(S, flu, (flu, Length)) :-
    intersection(S, [fever,headache,muscle_pain,conjunctivitis,chills,sore_throat,runny_nose,coughing], I),
    len(I, Length).

% Gastroenteritis
diagnosis(S, gastroenteritis, (gastroenteritis, Length)) :-
    intersection(S, [diarrhea,nausea,vomiting,fever,dehydration], I),
    len(I, Length).

% Food Poisoning
diagnosis(S, food_poisoning, (food_poisoning, Length)) :-
    intersection(S, [nausea,vomiting,diarrhea,abdominal_pain,fever], I),
    len(I, Length).

% Indigestion
diagnosis(S, indigestion, (indigestion, Length)) :-
    intersection(S, [abdominal_pain,heartburn,bloating,flatulence,nausea,constipation,diarrhea], I),
    len(I, Length).

% Stress
diagnosis(S, stress, (stress, Length)) :-
    intersection(S, [fatigue,headache,diarrhea,constipation,nausea,muscle_pain,joint_pain,chest_pains,rapid_heartbeat,insomnia], I),
    len(I, Length).

% Irritable Bowel Syndrome
diagnosis(S, irritable_bowel_syndrome, (irritable_bowel_syndrome, Length)) :-
    intersection(S, [abdominal_pain,diarrhea,constipation,flatulence,bloating,fatigue,insomnia], I),
    len(I, Length).

% Diverticulitis
diagnosis(S, diverticulitis, (diverticulitis, Length)) :-
    intersection(S, [abdominal_pain,nausea,vomiting,fever,constipation], I),
    len(I, Length).

% Ulcer
diagnosis(S, ulcer, (ulcer, Length)) :-
    intersection(S, [abdominal,loss_of_appetite,nausea,vomiting,bloating,heartburn], I),
    len(I, Length).

% Measles
diagnosis(S, measles, (measles, Length)) :-
    intersection(S, [fever,coughing,conjunctivitis,runny_nose,rash], I),
    len(I, Length).



%%% Treatment
treatment(nothing, 'You are fine!').
treatment(common_cold, 'Treatment: Antibiotics are of no use against cold viruses and should not be used. Stay hydrated and rest.').
treatment(allergies, 'Treatment: Many mild to moderate allergic reactions can be treated at home or with OTC medications. Antihistamines can be used for minor allergies.').
treatment(asthma, 'Treatment: Long-term asthma control medications include Inhaled corticosteroids, Leukotriene modifiers, Long-acting beta agonists. Quick-relief medications include Short-acting beta agonists and Ipratropium (Atrovent).').
treatment(cirrhosis, 'Treatment: A low-sodium diet and medication to prevent fluid buildup in the body may help control ascites and swelling. People with cirrhosis caused by excessive alcohol use should try to stop drinking.').
treatment(coeliac, 'Treatment: The only treatment for celiac disease is to follow a gluten-free diet—that is, to avoid all foods that contain gluten.').
treatment(bronchitis, 'Treatment: Adults may take aspirin, acetaminophen, or ibuprofen to reduce fever and general feelings of illness, but children should take only acetaminophen or ibuprofen, not aspirin, because children taking aspirin are at higher risk for Reye syndrome.').
treatment(pneumonia, 'Treatment: Hospital treatment may include: intravenous antibiotics injected into a vein respiratory therapy, which involves delivering specific medications directly into the lungs or teaching you to perform breathing exercises to maximize your oxygenation oxygen therapy to maintain oxygen levels in your bloodstream (received through a nasal tube, face mask, or ventilator, depending on severity).').
treatment(flu, 'Treatment: Usually, you will need nothing more than bed rest and plenty of fluids to treat the flu. But if you have severe infection or are at higher risk for complications, your doctor may prescribe an antiviral medication, such as oseltamivir (Tamiflu), zanamivir (Relenza), peramivir (Rapivab) or baloxavir (Xofluza).').
treatment(gastroenteritis, 'Treatment: Treatment depends on the cause, but may include: plenty of fluids oral rehydration drinks, available from your pharmacist admission to hospital and intravenous fluid replacement, in severe cases').
treatment(food_poisoning, 'Treatment: For most people, the illness resolves without treatment within a few days, though some types of food poisoning may last longer. If it persists, use antiobotics and replace lost fluids').
treatment(indigestion, 'Treatment: Eat less or slower. Avoid drinking alcohol and smoking.').
treatment(stress, 'Treatment: https://students.ubc.ca/health/counselling-services').
treatment(irritable_bowel_syndrome, 'Treatment: Mild signs and symptoms can often be controlled by managing stress and by making changes in your diet and lifestyle. If serious, consider taking Alosetron (Lotronex), Eluxadoline (Viberzi), Eluxadoline (Viberzi), and Lubiprostone (Amitiza).').
treatment(diverticulitis, 'Treatment: Once you develop diverticula, they are there to stay unless you have them surgically removed, which is not usually done.').
treatment(ulcer, 'Treatment: Treatment for peptic ulcers depends on the cause. Usually treatment will involve killing the H. pylori bacterium, if present, eliminating or reducing use of NSAIDs, if possible, and helping your ulcer to heal with medication.').
treatment(measles, 'Treatment: Acetaminophen (Tylenol) or ibuprofen (Advil) to reduce fever, rest to help boost your immune system, plenty of fluids, a humidifier to ease a cough and sore throat, vitamin A supplements').



%%% Helper Functions

write_list([]).
write_list([Term | Terms]) :-
    write(Term),
    write_list(Terms).

response(Reply) :-
    get_single_char(Code),
    put_code(Code), nl,
    char_code(Reply, Code).

len([],0).
len([_|Tail], N) :-
    len(Tail, N1),
    N is N1 + 1.

intersection([], _, []).
intersection([H1|T1], L2, [H1|Res]) :-
    member(H1, L2),
    intersection(T1, L2, Res).
intersection([_|T1], L2, Res) :-
    intersection(T1, L2, Res).

find_best_diagnosis([(D1, L1), (_, L2)|R], (D, L)) :-
    L1 =\= 0,
    L1 >= L2,
    find_best_diagnosis([(D1, L1)|R], (D, L)).
find_best_diagnosis([(_, L1), (D2, L2)|R], (D, L)) :-
    L2 =\= 0,
    L2 >= L1,
    find_best_diagnosis([(D2, L2)|R], (D, L)).
find_best_diagnosis([(_, 0), (_, 0)|R], (D, L)) :- find_best_diagnosis(R, (D, L)).
find_best_diagnosis([(D, L)], (D, L)) :- L =\= 0.
find_best_diagnosis([(_, 0)], (nothing, 0)).
