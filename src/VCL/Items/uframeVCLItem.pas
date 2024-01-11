unit uframeVCLItem;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, MoneyEdit,
  // Januaproject
  Janua.Orm.Intf, JOrm.Items.Intf;

type
  TframeVCLItem = class(TFrame)
    edItemModel: TEdit;
    lbItemModel: TLabel;
    edSKUItemCode: TEdit;
    SKU: TLabel;
    MoneyEdit1: TMoneyEdit;
    lbPrice: TLabel;
  private
    FItemRecord: IItemDefinition;
    procedure SetItemRecord(const Value: IItemDefinition);
    { Private declarations }

  public
     property ItemRecord: IItemDefinition read FItemRecord write SetItemRecord;
  end;

implementation

{$R *.dfm}

{ TframeVCLItem }

procedure TframeVCLItem.SetItemRecord(const Value: IItemDefinition);
begin
  FItemRecord := Value;
end;

end.
