program ykhis_clinic_doctor;

uses
  Forms,
  UfrmMain in 'UfrmMain.pas' {frmMain},
  UDM in 'UDM.pas' {DM: TDataModule},
  UfrmLogin in 'UfrmLogin.pas' {frmLogin},
  UfrmModifyPwd in 'UfrmModifyPwd.pas' {frmModifyPwd},
  UfrmModifyAge in 'UfrmModifyAge.pas' {frmModifyAge},
  UfrmDgnsBigTemp in 'UfrmDgnsBigTemp.pas' {frmDgnsBigTemp},
  UfrmCommQuery in 'UfrmCommQuery.pas' {frmCommQuery},
  UfrmSaveAsTemp in 'UfrmSaveAsTemp.pas' {frmSaveAsTemp},
  softMeter_globalVar in 'softMeter_globalVar.pas',
  UfrmPrintTreatFlow in 'UfrmPrintTreatFlow.pas' {frmPrintTreatFlow},
  superobject in 'superobject.pas',
  superdate in 'superdate.pas',
  supertypes in 'supertypes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
