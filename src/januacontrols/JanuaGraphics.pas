unit JanuaGraphics;

interface

uses Graphics, Forms,  Windows;

implementation



function Screenshot(destination: string): boolean;
var
  DCDesk: HDC; // hDC of Desktop
  bmp: Graphics.TBitmap;
begin

  try
        {Create a bitmap}
        bmp := Graphics.TBitmap.Create;

        {Set a bitmap sizes}
        bmp.Height := Screen.Height;
        bmp.Width := Screen.Width;

        {Get a desktop DC handle - handle of a display device context}
        DCDesk := GetWindowDC(GetDesktopWindow);

        {Copy to any canvas, here canvas of an image}
        BitBlt(bmp.Canvas.Handle, 0, 0, Screen.Width, Screen.Height,
         DCDesk, 0, 0, SRCCOPY);

        {Save the bitmap}
        bmp.SaveToFile(destination);

        {Release desktop DC handle}
        ReleaseDC(GetDesktopWindow, DCDesk);

        {Release a bitmap}
        bmp.Free;

        Result := True;
  except
        bmp.Free;
        Result := False;
  end;
end;



end.
