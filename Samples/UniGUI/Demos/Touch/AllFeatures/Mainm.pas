unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniTreeView, unimNestedList, uniGUIFrame, umain,
  uniButton, unimButton, uniMultiItem, unimSelect;

type
  TMainmForm = class(TUnimForm)
    NavList: TUnimNestedList;
    UniMainFrame: TUniMainFrame;
    procedure UnimFormCreate(Sender: TObject);
    procedure NavListLeafClick(Sender: TObject);
    procedure UnimFormDestroy(Sender: TObject);
    procedure NavListBackClick(Sender: TObject);
    procedure UnimFormTitleButtonClick(Sender: TUnimTitleButton);

  private
    { Private declarations }
    IsPhone: Boolean;
    FileNames : TStrings;
    FLastFrame : TUniFrame;
    FHomeUrl, FLastClassName : string;
    procedure ConstructNavigator;
    procedure ShowFrame;
    procedure ShowFrameForm(AClass: TUniFrameClass; const ACaption: string);
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, UniGUIJSUtils,
  uniStrUtils, uFrameForm;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.UnimFormCreate(Sender: TObject);
begin
  IsPhone := (upPhone in UniSession.UniPlatform) or (UniApplication.Parameters.Values['phone'] = '1');
  if IsPhone then
  begin
    NavList.Align := alClient;
    UniMainFrame.Visible := False;
  end;
  FileNames := TStringList.Create;

  FLastFrame := UniMainFrame;

  FHomeUrl := 'http://www.unigui.com';

  ConstructNavigator;
end;

procedure TMainmForm.UnimFormDestroy(Sender: TObject);
begin
  FileNames.Free;
end;

procedure TMainmForm.UnimFormTitleButtonClick(Sender: TUnimTitleButton);
begin
  if Sender.ButtonId = 0 then
    UniSession.UrlRedirect(FHomeUrl);
end;

procedure TMainmForm.NavListBackClick(Sender: TObject);
begin
  if not IsPhone then
  begin
    FLastFrame.Free;
    FLastFrame := TUniMainFrame.Create(Self);
    FLastClassName := '';
    ShowFrame;
  end;
end;

procedure TMainmForm.ShowFrameForm(AClass: TUniFrameClass; const ACaption: string);
var
  F : TUnimForm;
  FFrame : TUniFrame;
begin
  F := UnimFrameForm;
  FFrame := AClass.Create(F);
  FFrame.Align := alClient;
  FFrame.Parent:= F;
  F.Caption := ACaption;
  F.Show;
end;

procedure TMainmForm.ShowFrame;
begin
  FLastFrame.Align := alClient;
  FLastFrame.Parent := Self;
end;

procedure TMainmForm.NavListLeafClick(Sender: TObject);
var
  Nd : TUniTreeNode;
  FrC : TUniFrameClass;
  FClassName, Path : string;
begin
  Path := UniServerModule.StartPath + 'units\';
  Nd := NavList.Selected;

  FClassName := 'TUni' + FileNames.Values[Nd.Text];

  FrC := TUniFrameClass(FindClass(FClassName));

  if IsPhone then
  begin
    ShowFrameForm(FrC, Nd.Text);
  end
  else if FClassName<>FLastClassName then
  begin
    FLastFrame.Free;
    FLastClassName := FClassName;
    FLastFrame := FrC.Create(Self);
    ShowFrame;
  end;

end;

procedure TMainmForm.ConstructNavigator;
var
  RawS : RawByteString;
  S, S1, Path, SubS : string;
  sr: TSearchRec;
  Ls : TStringList;
  Txt : TextFile;
  I, iPos : Integer;
  Nd : TUniTreeNode;
  mainIconFile: string;
begin
  Path := UniServerModule.StartPath + 'units\';

  Ls := TStringList.Create;
  try
    if SysUtils.FindFirst(Path+'*.pas', faAnyFile, sr) = 0 then
    begin
      repeat
        if (sr.Attr and faDirectory) = 0 then
        begin
          AssignFile(Txt, Path + Sr.Name);
          Reset(Txt);
          ReadLn(Txt, RawS);
          CloseFile(Txt);

          S := DecodeCharSet(RawS, 'utf-8');

          S := Trim(StringReplace(S, '//', '', [rfReplaceAll]));
          iPos := Pos('=', S);

          if iPos>0 then
          begin
            S1 := Trim(Copy(S, 1, iPos-1));
            S := Trim(Copy(S, iPos+1, MaxInt));
            Ls.Add(S+'='+S1);
            FileNames.Values[S1] := ExtractFileNameNoExt(Sr.Name);
          end;
        end;
      until FindNext(sr) <> 0;
      FindClose(sr);
    end;

    Ls.Sorted := True;

    for I := 0 to Ls.Count -1  do
    begin
      S := Ls.Names[I];
      SubS := Trim(Ls.ValueFromIndex[I]);
      if S = '' then // Main
      begin
        Nd := NavList.Items.Add(nil, SubS);
        mainIconFile :=  Path + 'Icons\main.ico';
        NavList.Selected := Nd;
      end
      else
      begin
        Nd := NavList.Items.FindNodeByCaption(S);
        if Nd = nil then
        begin
          Nd := NavList.Items.Add(nil, S);
        end;
        NavList.Items.Add(Nd, SubS);
      end;

    end;
  finally
    Ls.Free;
  end;
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
