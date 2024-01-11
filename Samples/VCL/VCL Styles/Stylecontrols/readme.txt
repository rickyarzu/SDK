Fluent UI supoort works since RAD Studio XE3 version!

* Steps to add Fluent UI background on the form *

1. Put TscStyledForm component on the form.
2. Set TscStyledForm.DWMClientShadow to True
3. Set TscStyledForm.DWMClientShadowHitTest if you need to resize form with shadow.
4. Set TscStyledForm.FluentBackground to scfuibBlur or scfuibAcrylic (we recommend to use scfuibAcrylic).
5. Set TscStyledForm.FluentUIAcrylicColor (acrylic color, which merged with bluring background)
6. Set TscStyledForm.FluentUIAcrylicColorAlpha (opacity of acrylic color)
7. Set TscStyledForm.FluentUIBorder = True (system border + shadow)

Run application and you get a empty transparent form with bluring background effect.

* Steps to adjust controls in application *

1. Use only TscGP... (controls with GDI+ graphics) controls with DrawTextMode = scdtmGDIPlus on transparent background.
If you set TscGPPanel.FillColor = clBlack and TscGPPanel.FillColorAlpha = 255 then this area will be transparent.  

2. Note, that default GDI drawing (fill rects, lines, text) will be transparent in form as result.
This mean that controls, like TEdit, TListView and other with GDI text will looks incorrent on this transparent background.
To get opacity area for these and any third-party controls you can use TscPanel or TscGPPanel with FluentUIOpaque = True.
Put controls on it.
Also some other controls from StyleControls VCL has a FluentUIOpaque property (TscEdit, TscGPEdit, ...). 
Note, set FluentUIOpaque of parent control only (do not set it for other child controls).

* Steps to adjust Application to use on Windows 10 and other Windows versions *

1. Use TscStyledForm.IsFluentUIAvailable method to detect Fluent UI in the system.
You can adjust TscGP.. controls using this method on OnCreate event of the main form.

2. Use scControls.SC_SetDrawTextModeInControl(AControl: TControl; ADrawTextMode: TscDrawTextMode) method
to quickly adjust DrawTextMode in TscGP... controls on the control or form.
You can disable GDI+ text drawing if Fluent UI is not available.

procedure TForm1.FormCreate(Sender: TObject);
begin
  if not scStyledForm1.IsFluentUIAvailable or (scStyledForm1.FluentUIBackground = scfuibNone) then
  begin
    scControls.SC_SetDrawTextModeInControl(Self, scdtmGDI);
    BorderPanel.FrameWidth := 1;
    BorderPanel.FillColor := clBtnFace;
    scGPPanel1.TransparentBackground := False;
    ...
  end;
end;

3. Set FluentUIOpaque property to True / False in controls if you on / off Fluent UI under Windows 10.


See our FluentUI_... demo pack, which shows how to adjust application and controls!
