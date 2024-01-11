unit udmLogisticMain;

interface

uses
  System.SysUtils, System.Classes, udmTmsMainApplication, Data.DB, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.Dialogs;

type
  TdmLogisticMain = class(TdmTmsMainApplication)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLogisticMain: TdmLogisticMain;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
