{$J-}    //Writeable typed constants off
{$H+}    //Long strings used
{$P+}    //Open String Parameters used
{$T-}    //Generate untyped pointer
{$X+}    //Extended syntax on
{$B-}    //Boolean short-circuit evaluation
{$O+}    //Optimization on
{$A8}    //Align fields on 8 (faster, but memory size) need think!
{$Z1}    //Minimum enumeration size = 256 (store as byte)
{$R-}    //Range checking off

{$IFDEF DEBUG}

  {$W+}  //Stack frames on
  {$C+}  //Assert on
  {$I+}  //Input/output checking on
  {$D+}  //Debug information include
  {$L+}  //Local symbol information include
  {$Y+}  //Symbol declaration and cross-reference information include
  {$Q+}  //Overflow checking on 

{$ELSE}

  {$D-}  //Debug information exclude
  {$L-}  //Local symbol information exclude
  {$Y-}  //Symbol declaration and cross-reference information exclude
  {$Q-}  //Overflow checking off
  {$W-}  //Stack frames off
  {$C-}  //Assert off
  {$I-}  //Input/output checking off

{$ENDIF}

{$DEFINE RICHVIEW}