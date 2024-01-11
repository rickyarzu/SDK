unit januacrypt;

interface

uses SysUtils, db, DBClient, Midaslib, Dialogs, Forms,  Math, 
     Graphics, Types, Classes, EnhDBGrid, EnhCRDBGrid,  DBCtrls, AdvGlowButton,
     Windows, Messages, Controls, Buttons, StdCtrls, Mask, ExtCtrls,
     Grids, DBGrids, dbcgrids, DBTables,  DBAccess, Ora,  ComCtrls ,
     MemDS, Menus,  libeay32, CryptoUtils;

function CifraCF(CFtxt: string): string;
procedure JanuaInitSSL(vsslKey: string);

implementation

var
  Localkey: pEVP_PKEY;

procedure JanuaInitSSL(vsslKey: string);
begin
    InitOpenSSL;
    Localkey := GetPublicKey(CreateFileInputBio(vsslKey), FORMAT_X509);
end;



function CifraCF(CFtxt: string): string;
{
	Ricordate di invocare InitOpenSSL; prima di usare
	qualsiasi funzione di openssl. Per liberare le risorse, si può invocare
	FreeOpenSSL;
	
	Per caricare la chiave pubblica da un certificato X509:
	  key := GetPublicKey(CreateFileInputBio(nomefile), FORMAT_X509);
	per caricarla da un file PEM:
	  key := GetPublicKey(CreateFileInputBio(nomefile), FORMAT_PEM);
	per caricare la chiave privata da un file PEM cifrato
	  key := GetPrivateKey(CreateFileInputBio(nomefile), FORMAT_PEM, password);
}
var
  cleartext, crypted: pBIO;
  b64: pBIO;
begin
   try
     cleartext := CreateStringInputBio(CFtxt);
     crypted := CreateMemoryOutputBio();

     // Base 64 encoding
     b64 := BIO_new(BIO_f_base64());
     RSAEncrypt(Localkey, cleartext, BIO_push(b64, crypted), RSA_PKCS1_PADDING); // concat B64 encoding
     BIO_flush(b64);
  
     result := GetStringFromBio(crypted);
   finally
     BIO_free(cleartext);
     BIO_free_all(crypted);
   end;
end;





end.
