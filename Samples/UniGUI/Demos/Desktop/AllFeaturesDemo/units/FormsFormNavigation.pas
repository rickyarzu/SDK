// Form Navigation = Forms
unit FormsFormNavigation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel, NavigationUnit1,
  NavigationUnit2, NavigationUnit3;

type
  TUniFormsFormNavigation = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniButton3: TUniButton;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
    procedure UniButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFormsFormNavigation.UniButton1Click(Sender: TObject);
begin
  UniNavigationUnit1Form.Show();
end;

procedure TUniFormsFormNavigation.UniButton2Click(Sender: TObject);
begin
  UniNavigationUnit2Form.Show();
end;

procedure TUniFormsFormNavigation.UniButton3Click(Sender: TObject);
begin
  UniNavigationUnit3Form.Show();
end;

initialization
  RegisterClass(TUniFormsFormNavigation);

end.
