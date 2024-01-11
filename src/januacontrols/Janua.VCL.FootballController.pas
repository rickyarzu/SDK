unit Janua.VCL.FootballController;

interface

uses
  System.SysUtils, System.Classes, Janua.Core.Classes;

type
  TJanuaFootballRankingController = class(TJanuaCoreComponent)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Januaproject VCL Controllers', [TJanuaFootballRankingController]);
end;

end.
