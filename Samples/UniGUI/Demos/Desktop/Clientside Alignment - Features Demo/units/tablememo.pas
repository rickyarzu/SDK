// Interesting Fact Table = Layout Demos
unit tablememo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniMemo,
  uniMultiItem, uniListBox, uniLabel;

type
  TUniTableMemo = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniMemo1: TUniMemo;
    UniMemo2: TUniMemo;
    UniMemo3: TUniMemo;
    UniMemo4: TUniMemo;
    UniMemo5: TUniMemo;
    UniListBox1: TUniListBox;
    procedure UniListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniTableMemo.UniListBox1Click(Sender: TObject);
begin
  if UniListBox1.ItemIndex = 0 then
   begin
     UniMemo1.Text := 'An octopus (/ˈɒktəpʊs/ or /ˈɒktəpəs/; plural: octopuses, octopi, or octopodes; see below) is a cephalopod mollusc'+
     'of the order Octopoda. It has two eyes and four pairs of arms and, like other cephalopods, it is bilaterally symmetric.'+
     'An octopus has a hard beak, with its mouth at the center point of the arms. An octopus has no internal or external skeleton'+
     '(although some species have a vestigial remnant of a shell inside their mantles, allowing it to squeeze through'+
     'tight places. Octopuses are among the most intelligent and behaviorally flexible of all invertebrates.'+
     'Octopuses inhabit diverse regions of the ocean, including coral reefs, pelagic waters, and the ocean floor.'+
     'They have numerous strategies for defending themselves against predators, including the expulsion of ink, '+
     'the use of camouflage and deimatic displays, their ability to jet quickly through the water, '+
     'and their ability to hide. An octopus trails its eight arms behind it as it swims. All octopuses are venomous, '+
     'but only one group, the blue-ringed octopus, is known to be deadly to humans.'+
     'Around 300 species are recognized, which is over one-third of the total number of known cephalopod species.'+
     'The term "octopus" may also be used to refer specifically to the genus Octopus.';

     UniMemo2.Text := 'The environment and lifestyle of cephalopods means that they need to be capable of complex and flexible behaviour.';
     UniMemo3.Text := 'As active predators they need to explore, understand and remember their environment and the behaviour of other animals. ';
     UniMemo4.Text := 'Studies have shown that octopuses learn easily, including learning by observation of another octopus. ';
     UniMemo5.Text := 'They can solve problems, as when they remove a plug or unscrew a lid to get prey from a container. ';
   end
   else if UniListBox1.ItemIndex = 1 then
   begin
     UniMemo1.Text := 'The domestic cat (Felis catus or Felis silvestris catus) is a small, usually furry, domesticated, '+
     'and carnivorous mammal. They are often called housecats when kept as indoor pets or simply cats when there is no need'+
     'to distinguish them from other felids and felines. Cats are often valued by humans for companionship and their ability'+
     'to hunt vermin. Cats are similar in anatomy to the other felids, with strong, flexible bodies, quick reflexes, sharp retractable'+
     'claws, and teeth adapted to killing small prey. Cat senses fit a crepuscular and predatory ecological niche.'+
     'Cats can hear sounds too faint or too high in frequency for human ears, such as those made by mice and other small animals.'+
     'They can see in near darkness. Like most other mammals, cats have poorer color vision and a better sense of smell than humans.';

     UniMemo2.Text := 'Unlike dogs, cats do not have a sweet tooth. Scientists believe this is due to a mutation in a key taste receptor.';
     UniMemo3.Text := 'Female cats tend to be right pawed, while male cats are more often left pawed. Interestingly, while 90% of humans are right handed, the remaining 10% of lefties also tend to be male. ';
     UniMemo4.Text := 'A cat’s brain is biologically more similar to a human brain than it is to a dog’s. Both humans and cats have identical regions in their brains that are responsible for emotions.';
     UniMemo5.Text := 'A cat can’t climb head first down a tree because every claw on a cat’s paw points the same way. To get down from a tree, a cat must back down.';
   end
   else if UniListBox1.ItemIndex = 2 then
   begin
     UniMemo1.Text := 'Crocodiles (subfamily Crocodylinae) or true crocodiles are large aquatic reptiles that live throughout'+
     'the tropics in Africa, Asia, the Americas and Australia. Crocodylinae, all of whose members are considered true crocodiles,'+
     'is classified as a biological subfamily. A broader sense of the term crocodile, Crocodylidae that includes Tomistoma,'+
     'is not used in this article. The term crocodile here applies only to the species within the subfamily of Crocodylinae.'+
     'The term is sometimes used even more loosely to include all extant members of the order Crocodilia, which includes Tomistoma,'+
     'the alligators and caimans (family Alligatoridae), the gharials (family Gavialidae), and all other living and fossil'+
     'Crocodylomorpha.';

     UniMemo2.Text := 'Crocodiles live on the Earth 240 million years. They appeared at the same time when dinosaurs appeared. ';
     UniMemo3.Text := 'Crocodiles don''t chew their food. They tear apart flesh and swallow large chunks of meat. They sometimes swallow stones to ensure faster grinding of the food in their stomach. ';
     UniMemo4.Text := 'Expression "cry crocodile tears" is based on the true fact - crocodiles produce tears when they eat. They don''t cry'+
     'because they feel sorry for the prey, but because they swallow too much air, which gets in touch with lachrymal glands (glands that produce tears) and forces tears to flow. ';
     UniMemo5.Text := 'Crocodiles can be often seen with their jaws wide open. They open their jaws to cool themselves because they don''t have sweat glands.' ;
   end;
end;

initialization
  RegisterClass(TUniTableMemo);

end.
