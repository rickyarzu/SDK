unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.UITypes, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls,Vcl.Menus, Vcl.ImgList, Vcl.Forms,
  Vcl.Themes, Vcl.Mask, Vcl.StdCtrls, ShellApi,
  scControls, scImageCollection, scAdvancedControls, scDrawUtils,
  scStyledForm, Vcl.Dialogs, Vcl.ComCtrls, scStyleManager, scHint, scDialogs;

type
  TMainForm = class(TForm)
    scPanel1: TscPanel;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    scButton1: TscButton;
    scButton2: TscButton;
    scButton3: TscButton;
    scButton4: TscButton;
    scImageCollection1: TscImageCollection;
    scLinkBar1: TscLinkBar;
    ImageList2: TImageList;
    ImageList3: TImageList;
    scBalloonHint1: TscBalloonHint;
    scPanel2: TscPanel;
    N1: TMenuItem;
    Menusalphablend1: TMenuItem;
    Usewallpapersforstyledmenus1: TMenuItem;
    Styles1: TMenuItem;
    HeaderssupportforStyledMenus1: TMenuItem;
    scStyledForm1: TscStyledForm;
    scStatusBar1: TscStatusBar;
    scProgressBar1: TscProgressBar;
    scButton5: TscButton;
    scStyleManager1: TscStyleManager;
    scHint1: TscHint;
    Scalestyledformborder1: TMenuItem;
    Scalestyleelements1: TMenuItem;
    scLabel1: TscLabel;
    Usemodernarrowsincontrols1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure scButton4Click(Sender: TObject);
    procedure scLinkBar1ItemClick(Sender: TObject);
    procedure scButton1Click(Sender: TObject);
    procedure scButton3Click(Sender: TObject);
    procedure Menusalphablend1Click(Sender: TObject);
    procedure Usewallpapersforstyledmenus1Click(Sender: TObject);
    procedure HeaderssupportforStyledMenus1Click(Sender: TObject);
    procedure scStyledForm1StyleChanged(Sender: TObject);
    procedure scStyledForm1Buttons1Click(Sender: TObject);
    procedure scStyledForm1TabChanged(Sender: TObject);
    procedure scStatusBar1DrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure scStyledForm1Buttons0Paint(AIndex: Integer; ACanvas: TCanvas;
      ARect: TRect; AMouseIn, ADown, ADroppedDown: Boolean);
    procedure scStyledForm1Buttons4Click(Sender: TObject);
    procedure scStyledForm1Buttons2Click(Sender: TObject);
    procedure Scalestyledformborder1Click(Sender: TObject);
    procedure Scalestyleelements1Click(Sender: TObject);
    procedure scStatusBar1Resize(Sender: TObject);
    procedure Usemodernarrowsincontrols1Click(Sender: TObject);
  private
    CurrentFrame: TFrame;
    FrameChanging: Boolean;
    { Private declarations }
  protected
    procedure MenuStyleClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

  uses
    StandardUnit1, StandardUnit2, StandardUnit3, StandardUnit4, StandardUnit5,
    StandardUnit6, StandardUnit7, StandardUnit8, StandardUnit9,
    AdvancedUnit1, AdvancedUnit2, AdvancedUnit3, AdvancedUnit4,
    AboutUnit;

{$R *.dfm}

type
  TFrameClass = class(TFrame);

procedure TMainForm.HeaderssupportforStyledMenus1Click(Sender: TObject);
begin
  HeaderssupportforStyledMenus1.Checked := not HeaderssupportforStyledMenus1.Checked;
  scStyleManager1.MenuHeadersSupport := HeaderssupportforStyledMenus1.Checked;
end;

procedure TMainForm.Menusalphablend1Click(Sender: TObject);
begin
  if not Menusalphablend1.Checked then
  begin
    scStyleManager1.MenuAlphaBlendValue := 235;
    Menusalphablend1.Checked := True;
  end
  else
  begin
    scStyleManager1.MenuAlphaBlendValue := 255;
    Menusalphablend1.Checked := False;
  end;
end;

procedure TMainForm.MenuStyleClick(Sender: TObject);
begin
  if Sender is TMenuItem then
  begin
    TStyleManager.SetStyle(TMenuItem(Sender).Caption);
    TMenuItem(Sender).Checked := True;
  end;
end;

procedure TMainForm.Scalestyledformborder1Click(Sender: TObject);
begin
  Scalestyledformborder1.Checked := not Scalestyledformborder1.Checked;
  scStyleManager1.ScaleFormBorder := Scalestyledformborder1.Checked;
  if (scStyledForm1.ScaleFactor > 1) and scDrawUtils.IsCustomStyle then
    Self.RecreateWnd;
end;

procedure TMainForm.Scalestyleelements1Click(Sender: TObject);
begin
  Scalestyleelements1.Checked := not Scalestyleelements1.Checked;
  scStyleManager1.ScaleStyles := Scalestyleelements1.Checked;
  if (scStyledForm1.ScaleFactor > 1) and scDrawUtils.IsCustomStyle then
    Self.RecreateWnd;
end;

procedure TMainForm.FormCreate(Sender: TObject);
var
  I: Integer;
  MI: TMenuItem;
begin
  CurrentFrame := nil;
  scLinkBar1.ItemIndex := 1;
  for I := Low(TStyleManager.StyleNames) to High(TStyleManager.StyleNames) do
  begin
    MI := TMenuItem.Create(Self);
    MI.Caption := TStyleManager.StyleNames[I];
    MI.RadioItem := True;
    MI.GroupIndex := 1;
    MI.OnClick := MenuStyleClick;
    if TStyleManager.ActiveStyle.Name = MI.Caption then
      MI.Checked := True;
    PopupMenu1.Items.Add(MI);
  end;
end;

procedure TMainForm.scButton1Click(Sender: TObject);
begin
  if scPanel1.CustomImageIndex = -1 then
    scPanel1.CustomImageIndex := 17
  else
  if scPanel1.CustomImageIndex = 17 then
    scPanel1.CustomImageIndex := 28
  else
    scPanel1.CustomImageIndex := -1;
end;

type
  TMyBalloonHint = class(TscBalloonHint);

procedure TMainForm.scButton3Click(Sender: TObject);
begin
  if scPanel1.WallpaperIndex = 0 then
    scPanel1.WallpaperIndex := 27
  else
  if scPanel1.WallpaperIndex = 27 then
    scPanel1.WallpaperIndex := -1
  else
  if scPanel1.WallpaperIndex = -1 then
    scPanel1.WallpaperIndex := 0;
end;

procedure TMainForm.scButton4Click(Sender: TObject);
begin
  ShellExecute(0, 'open', 'http://www.almdev.com', nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.scLinkBar1ItemClick(Sender: TObject);

procedure HideCurrentFrame;
begin
  CurrentFrame.Hide;
  CurrentFrame.Free;
  CurrentFrame := nil;
end;

var
  FShow: Boolean;
begin
  if FrameChanging then Exit;

  FrameChanging := True;

  FShow := False;
  case scLinkBar1.ItemIndex of
    1:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame1) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame1.Create(Self);
        if IsWindowsXP then
          TStandardFrame1(CurrentFrame).scCheckBox3.Visible := False;
        FShow := True;
      end;
    end;
    2:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame7) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame7.Create(Self);
        if IsWindowsXP then
          TStandardFrame1(CurrentFrame).scCheckBox1.Visible := False;
        FShow := True;
      end;
    end;
    3:
     begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame8) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame8.Create(Self);
        FShow := True;
      end;
    end;
    4:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame2) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame2.Create(Self);
        FShow := True;
      end;
    end;
    5:
     begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame3) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame3.Create(Self);
        FShow := True;
      end;
    end;
    6:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame4) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame4.Create(Self);
        TStandardFrame4(CurrentFrame).scComboBoxEx1.ItemIndex := 0;
        FShow := True;
      end;
    end;
    7:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame5) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame5.Create(Self);
        FShow := True;
      end;
    end;
    8:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame6) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame6.Create(Self);
        FShow := True;
      end;
    end;
    9:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TStandardFrame9) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TStandardFrame9.Create(Self);
        TStandardFrame9(CurrentFrame).InitGrid;
        FShow := True;
      end;
    end;
    11:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TAdvancedFrame1) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TAdvancedFrame1.Create(Self);
        if IsWindowsXP then
          TAdvancedFrame1(CurrentFrame).scCheckBox6.Visible := False;
        FShow := True;
      end;
    end;
    12:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TAdvancedFrame2) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TAdvancedFrame2.Create(Self);
        if IsWindowsXP then
          TAdvancedFrame2(CurrentFrame).scCheckBox4.Visible := False;
        FShow := True;
      end;
    end;
    13:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TAdvancedFrame3) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TAdvancedFrame3.Create(Self);
        FShow := True;
      end;
    end;
    14:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TAdvancedFrame4) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TAdvancedFrame4.Create(Self);
        TAdvancedFrame4(CurrentFrame).scFrameBar1.ActiveFrameIndex := 0;
        FShow := True;
      end;
    end;
    16:
    begin
      if (CurrentFrame <> nil) and not (CurrentFrame is TAboutFrame) then
        HideCurrentFrame;
      if CurrentFrame = nil then
      begin
        CurrentFrame := TAboutFrame.Create(Self);
        FShow := True;
      end;
    end;
  end;

  if FShow and (CurrentFrame <> nil) then
  begin
    CurrentFrame.Visible := False;
    {$IF CompilerVersion < 31}
    if (Self.PixelsPerInch <> 96) and Self.Scaled then
      CurrentFrame.ScaleBy(Self.PixelsPerInch, 96)
    else
    if (Screen.PixelsPerInch <> 96) and Self.Scaled then
      CurrentFrame.ScaleBy(Screen.PixelsPerInch, 96);
    {$ENDIF}
    CurrentFrame.Parent := Self;
    CurrentFrame.SetBounds(scLinkBar1.Width + 2,
      scPanel1.Height,
      ClientWidth - scLinkBar1.Width - 2,
      ClientHeight - scPanel1.Height - scStatusBar1.Height);
    CurrentFrame.Align := alClient;
    CurrentFrame.Visible := True;
  end;

  FrameChanging := False;
end;

procedure TMainForm.scStatusBar1DrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
var
  IX, IY: Integer;
begin
  if Panel.Index = 2 then
  begin
    IX := Rect.Left + Rect.Width div 2 - ImageList2.Width div 2;
    IY := Rect.Top + Rect.Height div 2 - ImageList2.Height div 2;
    if IX < 0 then IX := 0;
    if IY < 0 then IY := 0;
    ImageList2.Draw(scStatusBar1.Canvas, IX, IY, 5);
  end;
end;

procedure TMainForm.scStatusBar1Resize(Sender: TObject);
begin
  scButton5.SetBounds(scButton5.Left, 2, scButton5.Width, scStatusBar1.Height - 3);
  scProgressBar1.Height := scStatusBar1.Height - scProgressBar1.Top * 2 + 1;
end;

procedure TMainForm.scStyledForm1Buttons0Paint(AIndex: Integer;
  ACanvas: TCanvas; ARect: TRect; AMouseIn, ADown, ADroppedDown: Boolean);
var
  R: TRect;
  ButtonItem: TscNCButtonItem;
begin
  ButtonItem := scStyledForm1.Buttons[AIndex];
  if ADown then
    scImageCollection1.Draw(ACanvas, ARect, 31)
  else
  if AMouseIn then
    scImageCollection1.Draw(ACanvas, ARect, 30)
  else
    scImageCollection1.Draw(ACanvas, ARect, 29);
  R := ARect;
  Dec(R.Right, Round(17 * scStyledForm1.BorderScaleFactor));
  ACanvas.Font := scStyledForm1.ButtonFont;
  ACanvas.Font.Height := Round(scStyledForm1.ButtonFont.Height * scStyledForm1.BorderScaleFactor);
  ACanvas.Font.Color := clWhite;
  SetBkMode(ACanvas.Handle, TRANSPARENT);
  scDrawUtils.DrawImageAndTextLeft(ACanvas, R, ButtonItem.Margin, ButtonItem.Spacing,
    ButtonItem.Caption, ButtonItem.ImageIndex, scStyledForm1.ButtonImages,
    ButtonItem.Enabled, BiDiMode = bdRightToLeft, True);
  R.Left := R.Right;
  R.Right := ARect.Right - 5;
  scDrawUtils.DrawButtonArrowImage(ACanvas, R, clWhite, scStyledForm1.BorderScaleFactor);
end;

procedure TMainForm.scStyledForm1Buttons1Click(Sender: TObject);
begin
  scMessageDlg('Use TscStyledForm component' + #13 +
   'to add buttons and tabs in caption of styled form!',
    mtInformation, [mbOk], 0);
end;

procedure TMainForm.scStyledForm1Buttons2Click(Sender: TObject);
begin
  scStyledForm1.BeginUpdateItems;
  scStyledForm1.Buttons[0].Visible := not scStyledForm1.Buttons[0].Visible;
  scStyledForm1.Buttons[1].Visible := not scStyledForm1.Buttons[1].Visible;
  scStyledForm1.EndUpdateItems(True);
end;

procedure TMainForm.scStyledForm1Buttons4Click(Sender: TObject);
begin
 if scStyledForm1.TabsPosition = sctpLeft then
    scStyledForm1.TabsPosition := sctpRight
  else
    scStyledForm1.TabsPosition := sctpLeft;
end;

procedure TMainForm.scStyledForm1StyleChanged(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to PopupMenu1.Items.Count - 1 do
    if (TStyleManager.ActiveStyle.Name = PopupMenu1.Items[I].Caption) and
       not PopupMenu1.Items[I].Checked
    then
      PopupMenu1.Items[I].Checked := True;
end;

procedure TMainForm.scStyledForm1TabChanged(Sender: TObject);
begin
  case scStyledForm1.TabIndex of
    0: scPanel1.WallpaperIndex := 27;
    1: scPanel1.WallpaperIndex := 0;
    2: scPanel1.WallpaperIndex := -1;
  end;
end;

procedure TMainForm.Usemodernarrowsincontrols1Click(Sender: TObject);
begin
  if not Usemodernarrowsincontrols1.Checked then
  begin
    scStyleManager1.ArrowsType := scsatModern;
    Usemodernarrowsincontrols1.Checked := True;
  end
  else
  begin
    scStyleManager1.ArrowsType := scsatDefault;
    Usemodernarrowsincontrols1.Checked := False;
  end;
  RedrawWindow(Handle, nil, 0, RDW_FRAME + RDW_INVALIDATE + RDW_ALLCHILDREN + RDW_UPDATENOW);
end;

procedure TMainForm.Usewallpapersforstyledmenus1Click(Sender: TObject);
begin
  if not Usewallpapersforstyledmenus1.Checked then
  begin
    scStyleManager1.MenuBackgroundOverContentIndex := 27;
    Usewallpapersforstyledmenus1.Checked := True;
  end
  else
  begin
    scStyleManager1.MenuBackgroundOverContentIndex := -1;
    Usewallpapersforstyledmenus1.Checked := False;
  end;
end;

end.
