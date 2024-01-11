unit Janua.Apps.Championship;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes, Janua.Core.System, ufrmMDCFootball,
  Vcl.Forms, Janua.VCL.Application;

type
  TJanuaVCLAppChampionships = class(TJanuaVCLApplication)
  private
    FFootballForm: ufrmMDCFootball.TfrmMdcFootballChampionship;
    { Private declarations }
  protected
    { Protected declarations }
    procedure SetActive(const Value: boolean); override;
  public
    { Public declarations }
    function Activate: boolean; override;
    property FootballForm: TfrmMdcFootballChampionship read FFootballForm;
  published
    { Published declarations }

  end;


implementation



// RegisterComponents('Janua Applications', [TJanuaVCLAppChampionships]);

{ TJanuaVCLAppChampionships }

function TJanuaVCLAppChampionships.Activate: boolean;
begin
  try
    if not Assigned(self.FJanuaSystem) then
      self.RaiseException('TJanuaVCLAppChampionships: Janua Sytem not Set')
    else
    begin
      if not Assigned(FFootballForm) then
      begin
        FFootballForm := TfrmMdcFootballChampionship.Create(self);
        FFootballForm.Name := 'frmFootballChampionship';
        FFootballForm.FormStyle := TFormStyle.fsMDIChild;
        FFootballForm.WindowState := wsMaximized;
        FFootballForm.JanuaCoreOS := nil;
        FFootballForm.JanuaTmsStyleManager := self.FJanuaTMSStyleManager;
        FFootballForm.JanuaCoreLogger := self.FJanuaLogger;
        FFootballForm.AdvFormStyler1.AppStyle := self.AppStyler;
        FFootballForm.Show;
      end;
    end;

    self.FActive := True;
    Result := self.FActive;

  except
    on e: exception do
    begin
      self.WriteError('TJanuaVCLAppChampionships.Activate', e);
      self.FActive := False;
      Result := False;
    end;
  end;
end;

procedure TJanuaVCLAppChampionships.SetActive(const Value: boolean);
begin
  inherited;
  if Value and not self.FActive then
    self.FActive := self.Activate;

end;




end.
