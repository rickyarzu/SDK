unit UGetMail;

interface

function getMailWithGUIDString(const AGUIDStr: string): string;

implementation

uses system.SysUtils;

function getMailWithGUIDString(const AGUIDStr: string): string;
begin
  result := Format('Mi hai chiamato con Stringa %s', [AGUIDStr]);
end;

end.
