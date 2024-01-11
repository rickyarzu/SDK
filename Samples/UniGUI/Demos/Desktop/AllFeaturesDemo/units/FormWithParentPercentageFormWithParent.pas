// Percentage Form With Parent = Form With Parent
unit FormWithParentPercentageFormWithParent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, Menus,
  uniMainMenu, uniStatusBar, UnitPer1,  UnitPer2, UnitPer3, UnitPer4, UnitPer5;

type
  TUniFormWithParentPercentageFormWithParent = class(TUniFrame)
    UniPanel1: TUniContainerPanel;
    UniPanel2: TUniContainerPanel;
    UniPanel3: TUniContainerPanel;
    UniPanel4: TUniContainerPanel;
    UniPanel5: TUniContainerPanel;
    UniPanel6: TUniContainerPanel;
    UniStatusBar1: TUniStatusBar;
    UniMainMenu1: TUniMainMenu;
    ChangeColor1: TUniMenuItem;
    UniForm11: TUniMenuItem;
    UniForm21: TUniMenuItem;
    UniForm31: TUniMenuItem;
    UniForm41: TUniMenuItem;
    UniForm51: TUniMenuItem;
    procedure UniForm51Click(Sender: TObject);
    procedure UniForm11Click(Sender: TObject);
    procedure UniForm21Click(Sender: TObject);
    procedure UniForm31Click(Sender: TObject);
    procedure UniForm41Click(Sender: TObject);
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormWithParentPercentageFormWithParent.UniForm11Click(Sender: TObject);
begin
  UniPerForm1.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniPerForm1.Name + '''s color is '+ ColorToString(UniPerForm1.Color);
end;

procedure TUniFormWithParentPercentageFormWithParent.UniForm21Click(Sender: TObject);
begin
  UniPerForm2.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniPerForm2.Name + '''s color is '+ ColorToString(UniPerForm2.Color);
end;

procedure TUniFormWithParentPercentageFormWithParent.UniForm31Click(Sender: TObject);
begin
  UniPerForm3.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniPerForm3.Name + '''s color is '+ ColorToString(UniPerForm3.Color);
end;

procedure TUniFormWithParentPercentageFormWithParent.UniForm41Click(Sender: TObject);
begin
  UniPerForm4.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniPerForm4.Name + '''s color is '+ ColorToString(UniPerForm4.Color);
end;

procedure TUniFormWithParentPercentageFormWithParent.UniForm51Click(Sender: TObject);
begin
  UniPerForm5.Color := RGB(Random(255), Random(255), Random(255));
  UniStatusBar1.Panels.Items[0].Text := UniPerForm5.Name + '''s color is '+ ColorToString(UniPerForm5.Color);
end;

procedure TUniFormWithParentPercentageFormWithParent.UniFrameCreate(Sender: TObject);
begin
  UniPerForm1.Parent := UniPanel1;
  UniPerForm1.Show();

  UniPerForm2.Parent := UniPanel4;
  UniPerForm2.Show();

  UniPerForm3.Parent := UniPanel5;
  UniPerForm3.Show();

  UniPerForm4.Parent := UniPanel6;
  UniPerForm4.Show();

  UniPerForm5.Parent := UniPanel3;
  UniPerForm5.Show();
end;

initialization
  RegisterClass(TUniFormWithParentPercentageFormWithParent);

end.
