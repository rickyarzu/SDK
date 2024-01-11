// Dynamic Client = Client Events
unit ClientEventsDynamicClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniEdit, uniButton, uniGUIBaseClasses, uniPanel;

type
  TUniClientEventsDynamicClient = class(TUniFrame)
    UniContainerPanel1: TUniContainerPanel;
    UniButton1: TUniButton;
    UniEdit1: TUniEdit;
    UniEdit2: TUniEdit;
    procedure UniFrameCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniClientEventsDynamicClient.UniFrameCreate(Sender: TObject);
begin
  UniButton1.ClientEvents.ExtEvents.Values['click']:='function(sender){alert("Click")}';

  UniEdit1.ClientEvents.ExtEvents.Values['change']:='function(sender, newValue){UniClientEventsDynamicClient.UniEdit2.setValue(newValue)}';

  UniContainerPanel1.ClientEvents.ExtEvents.Values['click']:='function(sender){UniClientEventsDynamicClient.UniEdit2.setValue("demoPanel.click")}';

  UniContainerPanel1.ClientEvents.ExtEvents.Values['move']:='function(sender){UniClientEventsDynamicClient.UniEdit2.setValue("window.move")}';
end;

initialization
  RegisterClass(TUniClientEventsDynamicClient);
end.
