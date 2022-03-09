//////////////////////////////////////////////////////////////
///
///     unit softMeter_globalVar.pas
///     Example unit to offer a global object of softMeter
///
///     Version of file: 2.6
///     URL of repo:
///     https://github.com/starmessage/libSoftMeter
///     Copyright, StarMessage software
///     https://www.starmessagesoftware.com/libSoftMeter
///
//////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////
///
///     ����㹦�ܵײ�ʹ��Google Analytics,��GA
///     ������analytics.google.com
///     �ʺţ�liuying1129@163.com
///     ���룺liu771129
///
///     Account Name:liuying
///     Property name:liuyingGA44
///
//////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////
///
///  Լ��������
///  1���򱾵�Ԫ������LYFunction.dll(��̬���ú���GetVersionLY),
///     ��Ӧ�ó���Ŀ¼������ڸ�DLL                       
///
//////////////////////////////////////////////////////////////


unit softMeter_globalVar;

interface

uses
  dll_loaderAppTelemetry;
  
var
  dllSoftMeter: TDllAppTelemetry;

implementation

uses
  dialogs, ShellApi{ShellExecute}, SysUtils{ChangeFileExt}, Forms{Application}, Windows{DWORD};

TYPE
  TDLL_GetVersionLY=function(const AFileName:Pchar):Pchar;stdcall;

const
  //Google Analytics property ID
  GooglePropertyID = 'UA-207373569-1';

  //GA��Sourceֵ:Ӧ������+AppVersion+AppEdition                    
  AppEdition = 'Enterprise Edition';
  AppLicense = 'Free';//GA��Mediumֵ
  //if you have a SoftMeter PRO subscription
  //PROsubscription = 'subscriptionID=your-subscription-id' + CHR(10) + 'subscriptionType=2';

  //libSoftMeter64.dllֻ�ܱ�64λwindows��64λӦ�ó������
  //Delphi7����ĳ���Ϊ32λӦ��,��������ֻ����õ�libSoftMeter.dll
  {$IFDEF WIN32}
      DLLfilename = 'libSoftMeter.dll';
  {$ENDIF}
  {$IFDEF WIN64}
      DLLfilename = 'libSoftMeter64.dll';
  {$ENDIF}

var
  startResult: boolean;
  logFilename: string;
  AppVersion: PChar;
  
  H_LYFunction_LIB:THANDLE;
  DLL_GetVersionLY:TDLL_GetVersionLY;

initialization

  //��̬����LYFunction.dll,��ִ�к���GetVersionLY begin
  H_LYFunction_LIB:=LOADLIBRARY('LYFunction.dll');
  IF H_LYFunction_LIB=0 THEN BEGIN raise Exception.Create('��̬���ӿ�LYFunction.dll������!');EXIT; END;
  DLL_GetVersionLY:=TDLL_GetVersionLY(GETPROCADDRESS(H_LYFunction_LIB,'GetVersionLY'));
  IF @DLL_GetVersionLY=NIL THEN BEGIN FREELIBRARY(H_LYFunction_LIB);raise Exception.Create('����GetVersionLY������!');EXIT; END;
  AppVersion:=DLL_GetVersionLY(PChar(Application.ExeName));
  FREELIBRARY(H_LYFunction_LIB);
  //��̬����LYFunction.dll,��ִ�к���GetVersionLY end

  try
    dllSoftMeter := TDllAppTelemetry.Create(DLLfilename);
  Except
    MessageDlg('Error loading '+ DLLfilename,mtError,[mbOK],0);
  end;

  dllSoftMeter.enableLogfile('Delphi demo');
  logFilename := dllSoftMeter.getLogFilename;

  if Length(GooglePropertyID)<10 then
  begin
    MessageDlg('You are running this demo with the propertyID: ' + GooglePropertyID + CHR(10)+CHR(13) +
                'Are you sure this is YOUR Google propertyID?' + CHR(10)+CHR(13) +
                'Go to softMeter_globalVar.pas to review it.' + CHR(10)+CHR(13) +
                'Will not enable telemetry now.',mtWarning,[mbOK],0);
    exit;
  end;

  // set your SoftMeter PRO subscription here, before calling start()
  // dllSoftMeter.setOptions(PChar(PROsubscription));

  startResult:=false;  
  try
    startResult := dllSoftMeter.start(PChar(ChangeFileExt(ExtractFileName(Application.ExeName),'')), AppVersion, AppLicense, AppEdition, GooglePropertyID, true );
  Except
    MessageDlg('Exception while calling dllSoftMeter.start',mtError,[mbOK],0);
  end;
  if not startResult then MessageDlg('dllSoftMeter.start returned false',mtError,[mbOK],0);

  if dllSoftMeter.errorsExist then MessageDlg('Errors in dllSoftMeter:' + dllSoftMeter.getErrorText,mtError,[mbOK],0);

finalization

  try
    dllSoftMeter.stop;
  Except
    MessageDlg('Error calling dllSoftMeter.stop',mtError,[mbOK],0);
  end;

  //ע��.����Ӧ���˳�ʱ��softMeter��־�ļ�
  //ShellExecute( 0 , nil, PChar('notepad'), PChar(logFilename) , nil, 1{SW_SHOWNORMAL} ) ;

end.
