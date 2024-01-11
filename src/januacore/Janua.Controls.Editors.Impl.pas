unit Janua.Controls.Editors.Impl;

interface

uses
  System.Classes;

Type
  TJanuaCustomRTFEditor = Class(TInterfacedObject)
  private
    FOnExit: TNotifyEvent;
    FOnChange: TNotifyEvent;
    FOnEnter: TNotifyEvent;
    FRTFDefaultFontSize: integer;
    FRTFDefaultFontName: string;
  strict protected
    function GetOnExit: TNotifyEvent;
    function GetOnChange: TNotifyEvent;
    function GetOnEnter: TNotifyEvent;
    procedure SetOnChange(const Value: TNotifyEvent);
    procedure SetOnEnter(const Value: TNotifyEvent);
    procedure SetOnExit(const Value: TNotifyEvent);
    function GetRTFDefaultFontSize: integer;
    function GetRTFDefaultFontName: string;
    procedure SetRTFDefaultFontName(const Value: string);
    procedure SetRTFDefaultFontSize(const Value: integer);
  protected
    procedure DoEnter(Sender: TObject);
    procedure DoExit(Sender: TObject);
    procedure DoChange(Sender: TObject);
  end;

implementation

procedure TJanuaCustomRTFEditor.DoChange(Sender: TObject);
begin
  if Assigned(self.FOnChange) then
    self.FOnChange(Sender);
end;

procedure TJanuaCustomRTFEditor.DoEnter(Sender: TObject);
begin
  if Assigned(self.FOnEnter) then
    self.FOnEnter(Sender);
end;

procedure TJanuaCustomRTFEditor.DoExit(Sender: TObject);
begin
  if Assigned(self.FOnExit) then
    self.FOnExit(Sender);
end;

function TJanuaCustomRTFEditor.GetOnChange: TNotifyEvent;
begin
  Result := self.FOnChange
end;

function TJanuaCustomRTFEditor.GetOnEnter: TNotifyEvent;
begin
  Result := self.FOnEnter
end;

function TJanuaCustomRTFEditor.GetOnExit: TNotifyEvent;
begin
  Result := self.FOnExit
end;

function TJanuaCustomRTFEditor.GetRTFDefaultFontName: string;
begin
  Result := self.FRTFDefaultFontName
end;

function TJanuaCustomRTFEditor.GetRTFDefaultFontSize: integer;
begin
  Result := self.FRTFDefaultFontSize
end;

procedure TJanuaCustomRTFEditor.SetOnChange(const Value: TNotifyEvent);
begin
  FOnChange := Value;
end;

procedure TJanuaCustomRTFEditor.SetOnEnter(const Value: TNotifyEvent);
begin
  FOnEnter := Value;
end;

procedure TJanuaCustomRTFEditor.SetOnExit(const Value: TNotifyEvent);
begin
  FOnExit := Value;
end;

procedure TJanuaCustomRTFEditor.SetRTFDefaultFontName(const Value: string);
begin
  FRTFDefaultFontName := Value;
end;

procedure TJanuaCustomRTFEditor.SetRTFDefaultFontSize(const Value: integer);
begin
  FRTFDefaultFontSize := Value;
end;

end.
