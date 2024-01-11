unit udmTmsMainApplication;

interface

uses
  System.SysUtils, System.Classes, udmVCLMainApplication, Data.DB, System.Actions, Vcl.ActnList, Vcl.DBActns,
  System.ImageList, Vcl.ImgList, SVGIconImageList, Vcl.Dialogs;

type
  TdmTmsMainApplication = class(TdmVCLMainApplication)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmTmsMainApplication: TdmTmsMainApplication;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
