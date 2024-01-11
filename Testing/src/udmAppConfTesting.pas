unit udmAppConfTesting;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, udmAppConf, Janua.Core.Classes, Janua.Core.Conf;

type
  TdmAppConfTesting = class(TdmAppConf)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmAppConfTesting: TdmAppConfTesting;

implementation

{$R *.dfm}

end.
