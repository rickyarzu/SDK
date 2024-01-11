//List   = Form Controls
unit FormControlsList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniGUImJSForm, uniLabel,
  unimLabel, uniMultiItem, unimList, SortedList,
  StripedList, uniButton, unimButton, unimScrollBox;

type
  TUniFormControlsList = class(TUniFrame)
    UnimContainerPanel1: TUnimContainerPanel;
    UnimButton1: TUnimButton;
    UnimButton2: TUnimButton;
    UnimButton3: TUnimButton;
    UnimButton4: TUnimButton;
    procedure UnimButton1Click(Sender: TObject);
    procedure UnimButton2Click(Sender: TObject);
    procedure UnimButton3Click(Sender: TObject);
    procedure UnimButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

uses DisclosureIcon, GroupedList;

procedure TUniFormControlsList.UnimButton1Click(Sender: TObject);
begin
  DisclosureIconForm.Show();
end;

procedure TUniFormControlsList.UnimButton2Click(Sender: TObject);
begin
 GroupedForm.Show();
end;

procedure TUniFormControlsList.UnimButton3Click(Sender: TObject);
begin
  SortedForm.Show();
end;

procedure TUniFormControlsList.UnimButton4Click(Sender: TObject);
begin
   StripedForm.Show();
end;

initialization
  RegisterClass(TUniFormControlsList);

end.
