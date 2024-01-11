unit udmWinMainApplication;

interface

uses
  System.SysUtils, System.Classes, udmMainApplication, Data.DB;

type
  TdmWinMainApplication = class(TdmMainApplication)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmWinMainApplication: TdmWinMainApplication;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
