unit Janua.Test.DMVC.ClientTests;

interface

uses System.SysUtils, Janua.Core.Types, Janua.Http.Types, Janua.Core.Classes,
  // Janua DMVC
  Janua.REST.Client;

type
  TRecordDMVCClientTest = record
  private
  public
    procedure ExecuteAllTests;
  end;

var
  MVCClientTest: TRecordDMVCClientTest;

const
  sl = sLineBreak;

implementation

uses RESTRequest4D, Janua.Core.Functions, Janua.Application.Framework;

{ TRecordDMVCClientTest }

procedure TRecordDMVCClientTest.ExecuteAllTests;
begin

end;

end.
