// Table = Layout Management
unit LayoutManagementTable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniGUIBaseClasses, uniPanel, uniButton;

type
  TUniLayoutManagementTable = class(TUniFrame)
    UniSimplePanel1: TUniSimplePanel;
    UniButton1: TUniButton;
    UniContainerPanel1: TUniContainerPanel;
    UniPanel1: TUniPanel;
    procedure UniButton1Click(Sender: TObject);
  private
    PanelNumber : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniLayoutManagementTable.UniButton1Click(Sender: TObject);
begin

 PanelNumber := PanelNumber +1;
 with TUniPanel.Create(Self) do
    begin
      Parent:=UniContainerPanel1;
      Caption:= 'UniPanel-'+IntToStr(PanelNumber);
      Name := 'UniPanelTable'+IntToStr(PanelNumber);
      Height := 35;
      LayoutConfig.Width := '100%';
    end;
end;

 initialization
  RegisterClass(TUniLayoutManagementTable);
end.
