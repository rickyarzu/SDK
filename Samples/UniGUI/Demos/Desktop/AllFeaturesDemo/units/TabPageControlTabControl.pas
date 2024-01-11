//Tab Control = Tab - PageControl
unit TabPageControlTabControl;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniTabControl, uniGUIBaseClasses, uniPanel,
  uniLabel;

type
  TUniTabPageControlTabControl = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniTabControl1: TUniTabControl;
    UniLabel1: TUniLabel;
    procedure UniFrameCreate(Sender: TObject);
    procedure UniTabControl1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniTabPageControlTabControl.UniFrameCreate(Sender: TObject);
begin
  UniLabel1.Caption := UniTabControl1.Tabs.Strings[UniTabControl1.TabIndex]+' is active';
end;

procedure TUniTabPageControlTabControl.UniTabControl1Change(Sender: TObject);
begin
   UniLabel1.Caption := UniTabControl1.Tabs.Strings[UniTabControl1.TabIndex]+' is active';
end;

initialization
  RegisterClass(TUniTabPageControlTabControl);

end.
