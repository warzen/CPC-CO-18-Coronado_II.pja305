// Script du briefing de la mission 

// Notes 
player createDiaryRecord ["Diary", ["Crédits", "Mission: Warzen<br/><br/>
Template : Sparfell<br/><br/>
Script unité: T8<br/>
Note: le slot HC ne sert à rien, à part faire en sorte qu'il ne prenne pas la place d'un joueur si tout le monde se connecte.<br/><br/>
v1:<br/>
- script T8 Units - en test<br/>
"]];

player createDiaryRecord ["Diary", ["Equipement", "Equipement standard:<br/>
- Fusillier: M16<br/>
- Grenadier: M16 et un M79 dans le sac à dos<br/>
- MG: M60<br/>
- Sergent: lampe-torche et arme de poing en bonus<br/>
- médecin: nécessaire médical classique<br/>
- RTO: radio 117<br/><br/>
Attention: seuls les RTO ont des radios.
"]];

player createDiaryRecord ["Diary", ["Renseignements", "<font color='#5ACE00'>Horaire:</font color> à l'aube.<br/><br/>
<font color='#5ACE00'>Météo:</font color> temps nuageux, luminosité correcte.<br/><br/>
<font color='#5ACE00'>Civil:</font color> A priori, il n'y a plus de civils sur zone.<br/><br/>
<font color='#5ACE00'>Forces en présence:</font color> L'effectif Vietcong est estimé entre 50 et 100 hommes mais leurs capactités de renfort sont 
méconnues. Elles sont certainement assez faibles, de l'ordre d'une vingtaine de personnes.<br/>
La présence de poste fixe type MG est à craindre.<br/><br/>
<font color='#5ACE00'>Support aérien:</font color> Deux gunships UH-1N sont appelables via la 117 canal 5. Chaque hélicoptère a un plan de vol différent, l'un 
pour attaquer la position au sud, l'autre au nord.<br/><br/>
<font color='#5ACE00'>Insertion:</font color> la mission commence alors que vous vous apprêtez à donner l'assaut sur les deux villages.<br/><br/>
<font color='#5ACE00'>Fin de mission:</font color> Abaissez les deux drapeaux Vietcong et signaler par radio sur la 117 canal 5 la réussite de la mission.
<br/><br/>
<font color='#5ACE00'>Abandon de mission:</font color> 0-0-9 pour abandonner.
"]];

player createDiaryRecord ["Diary", ["Mission", "Messieurs, votre mission est d'attaquer et prendre deux petits villages Vietcong à l'ouest de votre position.
<br/><br/>
Si vous voyez leur drapeau, n'hésitez pas à abaisser leur pavillon afin de leur montrer qui domine ici !<br/><br/>
Je vous rappelle que vous avez à votre disposition 2 gunship, chacun prêt à intervenir sur chacune des positions. Contactez les par radio pour les faire intervenir 
et prenez en compte le fait qu'ils viendront de l'aéroport au sud. Cela peut prendre un certain temps.<br/><br/>
La zone rouge sur la carte indique l'emplacement des deux villages à attaquer.<br/><br/>
Un dernier conseil: soyez prudent, nous rencontrons de plus en plus de pièges Vietcong pendant nos opérations. Ils peuvent être n'importe où [et la plupart ne ferons que vous 
blesser légèrement].
"]];

player createDiaryRecord ["Diary", ["Background", "L'opération Coronado est une série de 11 opérations conduites par l'American Mobile Riverine Force
en conjonction avec l'armée de la république du Vietnam (Vietnam sud) dans le Delta du Mekong afin de démanteler et détruire l'infrastructure des 
Vietcong dans cette zone. Ces opérations ont été menées de Juin 1967 à Juillet 1968.
"]];

// Briefing et objectifs

//objTemplate = player createSimpleTask["D�truire v�hicule"];
//objTemplate setSimpleTaskDescription["D�truisez le v�hicule sur le point <font color='#6699FF'><marker name='marker_obj_template'>Objectif</marker></font color>.","D�truire v�hicule","D�truire v�hicule"];
//objTemplate setSimpleTaskDestination (getMarkerPos "marker_obj_template");

