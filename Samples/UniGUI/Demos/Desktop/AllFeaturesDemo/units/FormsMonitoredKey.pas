//Monitored Key = Forms
unit FormsMonitoredKey;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniButton, uniGUIBaseClasses, uniPanel, MonitoredKeyUnit;

type
  TUniFormsMonitoredKey = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    procedure UniButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}


procedure TUniFormsMonitoredKey.UniButton1Click(Sender: TObject);
begin
  UniForm2.ShowModal;
end;

initialization
  RegisterClass(TUniFormsMonitoredKey);
end.
