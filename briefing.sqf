// Script du briefing de la mission 

// Notes 
player createDiaryRecord ["Diary", ["Crédits", "Mission: Warzen<br/><br/>
Template : Sparfell<br/><br/>
Note: le slot HC ne sert à rien, à part faire en sorte qu'il ne prenne pas la place d'un joueur si tout le monde se connecte.<br/><br/>
v3 à 6:<br/>
- corrections suite au passage au CPC NAM 0.3<br/>
- correction suite à bug BiS<br/>
v2:<br/>
- intégration du module Spectator - en test<br/>
"]];

player createDiaryRecord ["Diary", ["Equipement", "Equipement standard:<br/>
- Fusillier: M16<br/>
- MG: M60<br/>
- Génie: charges explosives et dispositif de mise à feu<br/>
- Sergent: lampe-torche et arme de poing en bonus<br/>
- médecin: nécessaire médical classique<br/>
- RTO: radio 117<br/><br/>
Attention: seuls les RTO ont des radios.
"]];

player createDiaryRecord ["Diary", ["Renseignements", "<font color='#5ACE00'>Horaire:</font color> à l'aube.<br/><br/>
<font color='#5ACE00'>Météo:</font color> temps clair, bonne luminosité.<br/><br/>
<font color='#5ACE00'>Civil:</font color> A priori, il n'y a plus de civils sur zone.<br/><br/>
<font color='#5ACE00'>Forces en présence:</font color> L'effectif Vietcong est estimé entre 20 et 50 hommes mais leurs capactités de renfort sont 
méconnues. Peut-être autant, voire le double.<br/><br/>
<font color='#5ACE00'>Insertion:</font color> la mission commence alors que vous venez d'être déposés pour pouvoir patrouiller dans une petite zone 
de terre.<br/><br/>
<font color='#5ACE00'>Fin de mission:</font color> mettez fin à la la mission sur le drapeau US au point de récupération. La réussite ou l'échec est à l'appréciation
du plus haut gradé encore en vie. N'oubliez pas que 50% de perte devrait être considéré comme un échec.<br/><br/>
<font color='#5ACE00'>Abandon de mission:</font color> 0-0-9 pour abandonner.
"]];

player createDiaryRecord ["Diary", ["Mission", "Messieurs, votre mission sera de patrouiller rapidement une petite zone de terre afin d'y trouver et 
détruire l'éventuel matériel Vietcong que vous pourriez trouver sur place.<br/>
Je vous demande de faire cela rapidement pour deux raisons:<br/>
1. nous avons un long trajet à faire le long des bras du Mekong et nous n'avons pas de temps à perdre.<br/>
2. nous ne connaissons pas en détail les renforts que peut recevoir l'ennemi et le but est de détruire leur infrastructure, pas de prendre le contrôle de la zone.<br/><br/>
Les zones rouges sur la carte indiquent les lieux à fouiller. Vous pouvez le faire dans l'ordre que vous voulez et même étendre vos recherches à d'autres zones.<br/>
Lorsque vous aurez atteint le point de récupération, signalez-vous [afin de terminer la mission].<br/><br/>
Sergent, je vous rappelle que la vie de vos hommes vaut plus que l'explosion d'une caisse de grenades. A 50% de perte ou plus, considérez cette mission comme un échec.
"]];

player createDiaryRecord ["Diary", ["Background", "L'opération Coronado est une série de 11 opérations conduites par l'American Mobile Riverine Force
en conjonction avec l'armée de la république du Vietnam (Vietnam sud) dans le Delta du Mekong afin de démanteler et détruire l'infrastructure des 
Vietcong dans cette zone. Ces opérations ont été menées de Juin 1967 à Juillet 1968.
"]];

// Briefing et objectifs

//objTemplate = player createSimpleTask["D�truire v�hicule"];
//objTemplate setSimpleTaskDescription["D�truisez le v�hicule sur le point <font color='#6699FF'><marker name='marker_obj_template'>Objectif</marker></font color>.","D�truire v�hicule","D�truire v�hicule"];
//objTemplate setSimpleTaskDestination (getMarkerPos "marker_obj_template");

