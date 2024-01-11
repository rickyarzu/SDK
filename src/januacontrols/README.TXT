  QRCustomCheckBox   - FREEWARE, UNWARRANTED -
  QRCheckBox         - FREEWARE, UNWARRANTED -
  QRDBCheckBox       - FREEWARE, UNWARRANTED -
  *

  Files:
  README.TXT         - Notes
  QRCB.PAS           - Source
  QRCB.DCR           - 32 bit resource file (Delphi 2, 3, 4)
  QRCB.16            - 16 bit resource file (rename to QRCB.DCR
                       for Delphi 1
  *

  Paul Doland, 1-13-99
  pdoland@flash.net

  Andy Corteen, 5-Nov-1998
  andy@telecam.demon.co.uk.nospam

  I (Paul Doland) used some of Qusoft's sample code to write this.
  Andy Corteen improved it.  He tested it with Delphi 3/QR 2.  I tested
  it with Delphi 4/QR 3 and Delphi 1/QR 2.  I tested my original version 
  with Delphi 2/QR 2 but have not tested Andy's version with it, but I
  think it should work.  I don't believe anyone has tested with QR 1.
  *
  Andy's contribution was to remove the need to alter QuSoft's source code,
  by providing a database fields property editor and enabling the full
  use of the Frame properties in defining the look of the box, and to
  give the option of cross or tick as the logical true style.
  *
  Paul's Delphi 4 installation notes:
  Put QRCB.DCR and QRCB.PAS in a location of your choosing.
  Most of the QR stuff goes in DELPHI4\LIB directory, so this seems a
  reasonable place.

  Close all open projects/files.
  To install, use "Install Component" on Component menu.  I chose to
  install into existing package, "DCLUSR40.DPK"  To be perfectly honest,
  I don't know much about packages.  There doesn't seem to be a QR specific
  package, so this seemed to be a good place for it.  Compiled it and it
  seems to work.

  Andy's Delphi 3 installation notes:
  (I (Paul) suspect Andy means the same thing I said Delphi about 4
  installation, but I don't have Delphi 3 installed currently...)

  Close all open projects/files.
  To install, use "Install Component" on Component menu and select
  qrcb.pas (qrcb.pas and qrcb.dcr must remain together).

  Delphi 2 installation:
  I haven't tested it, but I think it should work.  Use Delphi 1 instructions
  except use the 32 bit resource file.

  Delphi 1 installation:
  Install QRCB.PAS and QRCB.DCR in a location of your choosing.  (Rename
  QRCB.16 to QRCB.DCR.)  I used the same directory as QuickReport. Use 
  Options/Install Components.  Then ADD, then Browse and find QRCB.PAS. 
  Hit okay and that should do it.
  *
