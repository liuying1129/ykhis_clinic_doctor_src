program ykhis_clinic_doctor;

uses
  Forms,
  UfrmMain in 'UfrmMain.pas' {frmMain},
  UDM in 'UDM.pas' {DM: TDataModule},
  UfrmLogin in 'UfrmLogin.pas' {frmLogin},
  UfrmModifyPwd in 'UfrmModifyPwd.pas' {frmModifyPwd},
  UfrmSelPatient in 'UfrmSelPatient.pas' {frmSelPatient},
  UfrmModifyAge in 'UfrmModifyAge.pas' {frmModifyAge},
  UfrmDgnsBigTemp in 'UfrmDgnsBigTemp.pas' {frmDgnsBigTemp},
  UfrmCommQuery in 'UfrmCommQuery.pas' {frmCommQuery},
  UfrmSaveAsTemp in 'UfrmSaveAsTemp.pas' {frmSaveAsTemp},
  softMeter_globalVar in 'softMeter_globalVar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
