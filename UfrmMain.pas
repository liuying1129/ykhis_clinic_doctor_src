unit UfrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls,StrUtils, Menus, StdCtrls,IniFiles, ExtCtrls, ToolWin,
  Buttons, Grids, DBGrids, DB, MemDS, DBAccess, MyAccess, CheckLst, DosMove,
  ADOLYGetcode,Math, FR_Class, frxClass, frxDBSet, LYAboutBox;
  
//==Ϊ��ͨ��������Ϣ����������״̬��������==//
const
  WM_UPDATETEXTSTATUS=WM_USER+1;
TYPE
  TWMUpdateTextStatus=TWMSetText;
//=========================================//

type
  TfrmMain = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    TimerIdleTracker: TTimer;
    CoolBar1: TCoolBar;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DataSource2: TDataSource;
    MyQuery2: TMyQuery;
    GroupBox2: TGroupBox;
    DBGrid2: TDBGrid;
    TabSheet4: TTabSheet;
    DBGrid1: TDBGrid;
    MyQuery1: TMyQuery;
    DataSource1: TDataSource;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    Panel4: TPanel;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    Label1: TLabel;
    ComboBox2: TComboBox;
    Label2: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    DosMove1: TDosMove;
    BitBtn1: TBitBtn;
    DataSource3: TDataSource;
    MyQuery3: TMyQuery;
    PopupMenu3: TPopupMenu;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    Panel5: TPanel;
    ToolButton1: TToolButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolButton2: TToolButton;
    ComboBox5: TComboBox;
    Label3: TLabel;
    PopupMenu2: TPopupMenu;
    N15: TMenuItem;
    DataSource4: TDataSource;
    MyQuery4: TMyQuery;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel12: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    BitBtn4: TBitBtn;
    DBGrid4: TDBGrid;
    Panel28: TPanel;
    Label10: TLabel;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    LabeledEdit16: TLabeledEdit;
    LabeledEdit17: TLabeledEdit;
    LabeledEdit18: TLabeledEdit;
    LabeledEdit20: TLabeledEdit;
    ComboBox9: TComboBox;
    ComboBox10: TComboBox;
    BitBtn6: TBitBtn;
    Panel29: TPanel;
    DBGrid5: TDBGrid;
    Label9: TLabel;
    ComboBox8: TComboBox;
    DataSource5: TDataSource;
    MyQuery5: TMyQuery;
    PopupMenu5: TPopupMenu;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    Panel30: TPanel;
    Label12: TLabel;
    LabeledEdit15: TLabeledEdit;
    LabeledEdit19: TLabeledEdit;
    LabeledEdit22: TLabeledEdit;
    LabeledEdit23: TLabeledEdit;
    LabeledEdit24: TLabeledEdit;
    ComboBox12: TComboBox;
    BitBtn7: TBitBtn;
    Panel31: TPanel;
    ComboBox13: TComboBox;
    DBGrid6: TDBGrid;
    DataSource6: TDataSource;
    MyQuery6: TMyQuery;
    PopupMenu6: TPopupMenu;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    Panel32: TPanel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    LabeledEdit21: TLabeledEdit;
    LabeledEdit25: TLabeledEdit;
    LabeledEdit26: TLabeledEdit;
    LabeledEdit28: TLabeledEdit;
    LabeledEdit29: TLabeledEdit;
    LabeledEdit31: TLabeledEdit;
    ComboBox11: TComboBox;
    ComboBox14: TComboBox;
    ComboBox15: TComboBox;
    ComboBox16: TComboBox;
    BitBtn8: TBitBtn;
    Panel33: TPanel;
    ComboBox17: TComboBox;
    DBGrid7: TDBGrid;
    DataSource7: TDataSource;
    PopupMenu7: TPopupMenu;
    MyQuery7: TMyQuery;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    ToolButton4: TToolButton;
    SpeedButton5: TSpeedButton;
    DBGrid8: TDBGrid;
    DataSource8: TDataSource;
    MyQuery8: TMyQuery;
    Panel34: TPanel;
    LabeledEdit27: TLabeledEdit;
    LabeledEdit30: TLabeledEdit;
    LabeledEdit32: TLabeledEdit;
    LabeledEdit33: TLabeledEdit;
    LabeledEdit34: TLabeledEdit;
    ComboBox18: TComboBox;
    BitBtn10: TBitBtn;
    Panel35: TPanel;
    DBGrid9: TDBGrid;
    DataSource9: TDataSource;
    MyQuery9: TMyQuery;
    PopupMenu9: TPopupMenu;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    LabeledEdit35: TLabeledEdit;
    Label16: TLabel;
    Label17: TLabel;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    ToolButton3: TToolButton;
    SpeedButton6: TSpeedButton;
    mq_slave: TMyQuery;
    frxReport1: TfrxReport;
    mq_master: TMyQuery;
    masterDBfrx: TfrxDBDataset;
    slaveDBfrx: TfrxDBDataset;
    PopupMenu4: TPopupMenu;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    Panel38: TPanel;
    SpeedButton7: TSpeedButton;
    ToolButton5: TToolButton;
    N35: TMenuItem;
    N36: TMenuItem;
    Edit1: TEdit;
    Edit2: TEdit;
    Panel25: TPanel;
    Panel6: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    Panel22: TPanel;
    Panel23: TPanel;
    Memo1: TMemo;
    Panel8: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Memo2: TMemo;
    Panel7: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Memo3: TMemo;
    Panel9: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Memo4: TMemo;
    Panel10: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Memo5: TMemo;
    Panel11: TPanel;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    PopupMenu1: TPopupMenu;
    N37: TMenuItem;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    CheckBox1: TCheckBox;
    RadioGroup1: TRadioGroup;
    DBGrid3: TDBGrid;
    RadioGroup2: TRadioGroup;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    ToolButton6: TToolButton;
    SpeedButton8: TSpeedButton;
    LYAboutBox1: TLYAboutBox;
    procedure FormShow(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure TimerIdleTrackerTimer(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MyQuery1AfterOpen(DataSet: TDataSet);
    procedure MyQuery2AfterOpen(DataSet: TDataSet);
    procedure MyQuery2AfterScroll(DataSet: TDataSet);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure MyQuery3AfterOpen(DataSet: TDataSet);
    procedure N14Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure Panel5DblClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    //procedure BitBtn2Click(Sender: TObject);
    procedure MyQuery4AfterOpen(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure MyQuery5AfterOpen(DataSet: TDataSet);
    procedure Panel29DblClick(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure LabeledEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel31DblClick(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure LabeledEdit15KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn7Click(Sender: TObject);
    procedure MyQuery6AfterOpen(DataSet: TDataSet);
    procedure Panel33DblClick(Sender: TObject);
    procedure MyQuery7AfterOpen(DataSet: TDataSet);
    procedure LabeledEdit21KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn8Click(Sender: TObject);
    procedure N22Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure MyQuery1AfterScroll(DataSet: TDataSet);
    procedure MyQuery8AfterOpen(DataSet: TDataSet);
    procedure BitBtn10Click(Sender: TObject);
    procedure MyQuery9AfterOpen(DataSet: TDataSet);
    procedure Panel35DblClick(Sender: TObject);
    procedure LabeledEdit27KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N25Click(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure ComboBox9Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure LabeledEdit3Change(Sender: TObject);
    procedure ComboBox15Change(Sender: TObject);
    procedure LabeledEdit26Change(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure LabeledEdit4Exit(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure Panel38DblClick(Sender: TObject);
    procedure ComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox17KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox16KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox10KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox18KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox12KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox11KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox8KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure N36Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LabeledEdit25KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N37Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure N45Click(Sender: TObject);
    procedure N48Click(Sender: TObject);
    procedure N47Click(Sender: TObject);
    procedure N46Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
    //==Ϊ��ͨ��������Ϣ����������״̬��������==//
    procedure WMUpdateTextStatus(var message:twmupdatetextstatus);  {WM_UPDATETEXTSTATUS��Ϣ������}
                                              message WM_UPDATETEXTSTATUS;
    procedure updatestatusBar(const text:string);//TextΪ�ø�ʽ#$2+'0:abc'+#$2+'1:def'��ʾ״̬����0����ʾabc,��1����ʾdef,��������
    //==========================================//
    procedure ReadIni;
    procedure ReadConfig;
    procedure UpdateMyQuery1;
    procedure UpdateMyQuery2(const AUnid:integer);
    procedure UpdateMyQuery3(const APrescription_No:integer);
    procedure ClearXiyaoEdit;
    function Check_audit_doctor: boolean;
    procedure UpdateMyQuery4;
    procedure UpdateMyQuery5;
    procedure ClearZhiLiaoEdit;
    procedure UpdateMyQuery6;
    procedure ClearJianChaEdit;
    procedure UpdateMyQuery7(const APrescription_No:integer);
    procedure ClearZhongYaoEdit;
    procedure UpdateMyQuery8(const AifCompleted:integer);
    procedure UpdateMyQuery9;
    procedure ClearJianYanEdit;
    function CalcZhiLiaoNum(const drug_freq,drug_days:string):integer;
    function CalcXiYaoNum(const dosage,drug_freq,drug_days:string):single;
    function UnitsConverterMethod(const ADrug_Unid,AUnit_Dosage,AUnit_Fee:String):integer;
    procedure ShowTreatSlave;
    procedure DeletePrescriptionDetail(Sender: TObject;const APrescriptionType:Integer);//ɾ��������ϸ
    procedure DeleteSheetPrescription(Sender: TObject;const APrescriptionType:Integer);//ɾ�����Ŵ���
  public
    { Public declarations }
    procedure SaveMedicalRecord(Sender: TObject);//���没��
  end;

var
  frmMain: TfrmMain;

implementation

uses UfrmLogin, UDM, UfrmModifyPwd, UfrmSelPatient, UfrmModifyAge,
  UfrmDgnsBigTemp, UfrmCommQuery, UfrmSaveAsTemp, softMeter_globalVar,
  UfrmPrintTreatFlow;
var
  g_group_num:integer;//��ҩ���
  g_zhiliao_group_num:integer;//�������
  g_jiancha_group_num:integer;//������
  g_jianyan_group_num:integer;//�������

  Copy_Type:String;//��������.����,����,����+����
  Copy_Unid:String;//����treat_master.unid
  Copy_ifCompleted:integer;
  Copy_Creat_Date_Time:String;
  Copy_Patient_Name:String;

{$R *.dfm}

procedure TfrmMain.FormShow(Sender: TObject);
begin
  if ifRegister then bRegister:=true else bRegister:=false;

  frmLogin.ShowModal;

  ReadConfig;
  UpdateStatusBar(#$2+'0:'+SYSNAME);
  UpdateStatusBar(#$2+'6:'+SCSYDW);
  UpdateStatusBar(#$2+'8:'+g_Server);
  UpdateStatusBar(#$2+'10:'+g_Database);

  TimerIdleTracker.Enabled:=true;//TimerIdleTrackerTimer�¼������õ������ļ�����LoginTime

  PageControl1.ActivePageIndex:=0;//�����ڡ�UpdateMyQuery2��֮ǰ

  UpdateMyQuery2(-1);

  LoadGroupName(ComboBox2,'select name from commcode where typename=''��ҩƵ��'' ');
  LoadGroupName(ComboBox3,'select name from commcode where typename=''���õ�λ'' ');
  LoadGroupName(ComboBox4,'select name from commcode where typename=''���õ�λ'' ');
  LoadGroupName(ComboBox5,'select name from commcode where typename=''�÷�'' ');
  LoadGroupName(ComboBox6,'select name from commcode where typename=''������ϱ���'' ');
  LoadGroupName(ComboBox7,'select name from commcode where typename=''��Ͻ���'' ');
  LoadGroupName(ComboBox8,'select name from commcode where typename=''���岿λ'' ');
  LoadGroupName(ComboBox9,'select name from commcode where typename=''��ҩƵ��'' ');
  LoadGroupName(ComboBox14,'select name from commcode where typename=''��ҩƵ��'' ');
  LoadGroupName(ComboBox18,'select name from commcode where typename=''���õ�λ'' ');
  LoadGroupName(ComboBox12,'select name from commcode where typename=''���õ�λ'' ');
  LoadGroupName(ComboBox13,'select name from commcode where typename=''���岿λ'' ');
  LoadGroupName(ComboBox10,'select name from commcode where typename=''���õ�λ'' ');
  LoadGroupName(ComboBox16,'select name from commcode where typename=''���õ�λ'' ');
  LoadGroupName(ComboBox15,'select name from commcode where typename=''���õ�λ'' ');
  LoadGroupName(ComboBox17,'select name from commcode where typename=''�÷�'' ');
  LoadGroupName(ComboBox11,'select name from commcode where typename=''�巨'' ');

  SendMessage(ComboBox15.handle,CB_SETDROPPEDWIDTH,48,0);
  SendMessage(ComboBox3.handle,CB_SETDROPPEDWIDTH,48,0);

  // send a pageView hit on Form Show
  dllSoftMeter.sendPageview(PChar(UTF8Encode(SCSYDW)+'/'+UTF8Encode(operator_id)),'frmMain Show Event');
end;

procedure TfrmMain.updatestatusBar(const text: string);
//TextΪ�ø�ʽ#$2+'0:abc'+#$2+'1:def'��ʾ״̬����0����ʾabc,��1����ʾdef,��������
var
  i,J2Pos,J2Len,TextLen,j:integer;
  tmpText:string;
begin
  TextLen:=length(text);
  for i :=0 to StatusBar1.Panels.Count-1 do
  begin
    J2Pos:=pos(#$2+inttostr(i)+':',text);
    J2Len:=length(#$2+inttostr(i)+':');
    if J2Pos<>0 then
    begin
      tmpText:=text;
      tmpText:=copy(tmpText,J2Pos+J2Len,TextLen-J2Pos-J2Len+1);
      j:=pos(#$2,tmpText);
      if j<>0 then tmpText:=leftstr(tmpText,j-1);
      StatusBar1.Panels[i].Text:=tmpText;
    end;
  end;
end;

procedure TfrmMain.WMUpdateTextStatus(var message: twmupdatetextstatus);
begin
  UpdateStatusBar(pchar(message.Text));
  message.Result:=-1;
end;

procedure TfrmMain.N3Click(Sender: TObject);
var
  ss:string;
begin
  ss:='RegisterNum'+#2+'Edit'+#2+#2+'0'+#2+'���ô���������ϵ��ַ�������������,�Ի�ȡע����'+#2;
  if bRegister then exit;
  //�������ص�Pchar���ͻ�����ֱ�Ӹ�ֵ��string!!!
  if ShowOptionForm(Pchar('ע��:'+GetHDSn('C:\')+'-'+GetHDSn('D:\')),'Register',Pchar(ss),Pchar(ChangeFileExt(Application.ExeName,'.ini')))then
    if ifRegister then bRegister:=true else bRegister:=false;
end;

procedure TfrmMain.N5Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  close;
end;

procedure TfrmMain.N6Click(Sender: TObject);
begin
  frmLogin.ShowModal;
end;

procedure TfrmMain.N8Click(Sender: TObject);
begin
  frmModifyPwd.ShowModal;
end;

procedure TfrmMain.ReadIni;
var
  configini:tinifile;

  pInStr,pDeStr:Pchar;
  i:integer;
begin
  //��ϵͳ����
  SCSYDW:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select Name from commcode where TypeName=''ϵͳ����'' and ReMark=''��Ȩʹ�õ�λ'' ');
  if SCSYDW='' then SCSYDW:='2F3A054F64394BBBE3D81033FDE12313';//'δ��Ȩ��λ'���ܺ���ַ���
  //======����SCSYDW
  pInStr:=pchar(SCSYDW);
  pDeStr:=DeCryptStr(pInStr,Pchar(CryptStr));
  setlength(SCSYDW,length(pDeStr));
  for i :=1  to length(pDeStr) do SCSYDW[i]:=pDeStr[i-1];
  //==========

  CONFIGINI:=TINIFILE.Create(ChangeFileExt(Application.ExeName,'.ini'));

  ifAutoCheck:=configini.ReadBool('ѡ��','��ӡ����ʱ�Զ����',false);
  LoginTime:=configini.ReadInteger('ѡ��','������¼���ڵ�ʱ��',30);

  configini.Free;
end;

procedure TfrmMain.N11Click(Sender: TObject);
var                                                                           
  ss:string;
begin
  if not ifhaspower(sender,operator_id) then exit;

  ss:=
      '��ӡ����ʱ�Զ����'+#2+'CheckListBox'+#2+#2+'1'+#2+#2+#3+
      '������¼���ڵ�ʱ��'+#2+'Edit'+#2+#2+'1'+#2+'ע:��ʾ�೤ʱ�����޲���,���Զ�������¼����(��λ:��)'+#2+#3;
  if ShowOptionForm('ѡ��','����'+#2+'ѡ��'+#2+'��ӡģ��',Pchar(ss),Pchar(ChangeFileExt(Application.ExeName,'.ini'))) then
	  ReadIni;
end;

procedure TfrmMain.ReadConfig;
begin
  ReadIni();
end;

procedure TfrmMain.TimerIdleTrackerTimer(Sender: TObject);
begin
  //�Զ�������¼����
  if (StopTime>LoginTime) and (FindWindow(PCHAR('TfrmLogin'),PCHAR('��¼'))=0) then
    frmLogin.ShowModal;
end;

procedure TfrmMain.SpeedButton1Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  frmSelPatient.ShowModal;
end;

procedure TfrmMain.UpdateMyQuery1;
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  MyQuery1.Close;
  MyQuery1.SQL.Clear;
  MyQuery1.SQL.Text:='select * from ('+
                     'select creat_date_time as ��������,patient_name as ����,patient_sex as �Ա�,patient_age AS ����,audit_doctor as �����,'+
                     'certificate_type as ֤������,certificate_num as ֤������,'+
                     'clinic_card_num as ���ƿ���,health_care_num as ҽ������,address as סַ,work_company as ������λ,work_address as ������ַ,'+
                     'if_marry as ���,native_place as ����,telephone as ��ϵ�绰,remark as ��ע,audit_date as ���ʱ��,patient_unid,unid, '+
                     ' 0 AS ifCompleted '+
                     'from treat_master '+
                     ' where patient_unid='+MyQuery2.fieldbyname('patient_unid').AsString+
                     ' union all '+
                     'select creat_date_time as ��������,patient_name as ����,patient_sex as �Ա�,patient_age AS ����,audit_doctor as �����,'+
                     'certificate_type as ֤������,certificate_num as ֤������,'+
                     'clinic_card_num as ���ƿ���,health_care_num as ҽ������,address as סַ,work_company as ������λ,work_address as ������ַ,'+
                     'if_marry as ���,native_place as ����,telephone as ��ϵ�绰,remark as ��ע,audit_date as ���ʱ��,patient_unid,unid, '+
                     ' 1 AS ifCompleted '+
                     'from treat_master_bak '+
                     ' where patient_unid='+MyQuery2.fieldbyname('patient_unid').AsString+
                     ') temp_t1 order by unid desc';
  MyQuery1.Open;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  MyQuery1.Connection:=DM.MyConnection1;//��ǰ������ʷ�����¼treat_master
  MyQuery2.Connection:=DM.MyConnection1;//treat_master
  MyQuery3.Connection:=DM.MyConnection1;//��ҩ
  MyQuery4.Connection:=DM.MyConnection1;//���
  MyQuery5.Connection:=DM.MyConnection1;//����
  MyQuery6.Connection:=DM.MyConnection1;//���
  MyQuery7.Connection:=DM.MyConnection1;//��ҩ
  MyQuery8.Connection:=DM.MyConnection1;//��ǰ������ʷ�����¼treat_slave
  MyQuery9.Connection:=DM.MyConnection1;//���
  mq_master.Connection:=DM.MyConnection1;//��ӡ����ͷ
  mq_slave.Connection:=DM.MyConnection1;//��ӡ������ϸ

  SetWindowLong(LabeledEdit2.Handle, GWL_STYLE, GetWindowLong(LabeledEdit2.Handle, GWL_STYLE) or ES_NUMBER);//���.ֻ����������
  SetWindowLong(LabeledEdit7.Handle, GWL_STYLE, GetWindowLong(LabeledEdit7.Handle, GWL_STYLE) or ES_NUMBER);//����.ֻ����������
  SetWindowLong(LabeledEdit10.Handle, GWL_STYLE, GetWindowLong(LabeledEdit10.Handle, GWL_STYLE) or ES_NUMBER);//Ժע����.ֻ����������
  SetWindowLong(LabeledEdit25.Handle, GWL_STYLE, GetWindowLong(LabeledEdit25.Handle, GWL_STYLE) or ES_NUMBER);//���.ֻ����������
  SetWindowLong(LabeledEdit14.Handle, GWL_STYLE, GetWindowLong(LabeledEdit14.Handle, GWL_STYLE) or ES_NUMBER);//����.ֻ����������
  SetWindowLong(LabeledEdit16.Handle, GWL_STYLE, GetWindowLong(LabeledEdit16.Handle, GWL_STYLE) or ES_NUMBER);//Ժע����.ֻ����������
  SetWindowLong(LabeledEdit19.Handle, GWL_STYLE, GetWindowLong(LabeledEdit19.Handle, GWL_STYLE) or ES_NUMBER);//���.ֻ����������
  SetWindowLong(LabeledEdit22.Handle, GWL_STYLE, GetWindowLong(LabeledEdit22.Handle, GWL_STYLE) or ES_NUMBER);//�������.ֻ����������
  SetWindowLong(LabeledEdit32.Handle, GWL_STYLE, GetWindowLong(LabeledEdit32.Handle, GWL_STYLE) or ES_NUMBER);//��������.ֻ����������
  SetWindowLong(LabeledEdit17.Handle, GWL_STYLE, GetWindowLong(LabeledEdit17.Handle, GWL_STYLE) or ES_NUMBER);//��������.ֻ����������
  SetWindowLong(LabeledEdit35.Handle, GWL_STYLE, GetWindowLong(LabeledEdit35.Handle, GWL_STYLE) or ES_NUMBER);//����.ֻ����������

  g_group_num:=0;
  g_zhiliao_group_num:=0;
  g_jiancha_group_num:=0;
  //g_zhongyao_group_num:=0;
  g_jianyan_group_num:=0;
end;

procedure TfrmMain.MyQuery1AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid1.Columns.Items[0].Width:=135;//��������
  dbgrid1.Columns.Items[1].Width:=42;//����
  dbgrid1.Columns.Items[2].Width:=30;//�Ա�
  dbgrid1.Columns.Items[3].Width:=30;//����
  dbgrid1.Columns.Items[4].Width:=55;//֤������
  dbgrid1.Columns.Items[5].Width:=130;//֤������
  dbgrid1.Columns.Items[6].Width:=120;//���ƿ���
  dbgrid1.Columns.Items[7].Width:=120;//
  dbgrid1.Columns.Items[8].Width:=120;//
  dbgrid1.Columns.Items[9].Width:=120;//
  dbgrid1.Columns.Items[10].Width:=40;//
  dbgrid1.Columns.Items[11].Width:=120;//
  dbgrid1.Columns.Items[12].Width:=120;//
  dbgrid1.Columns.Items[13].Width:=120;//
end;

procedure TfrmMain.UpdateMyQuery2(const AUnid:integer);
begin
  MyQuery2.Close;
  MyQuery2.SQL.Clear;
  MyQuery2.SQL.Text:='select creat_date_time as ��������,patient_name as ����,patient_sex as �Ա�,patient_age AS ����,'+
                     '(SELECT GROUP_CONCAT(ts.item_name SEPARATOR '';'') FROM treat_slave ts WHERE ts.item_type=''���'' and ts.tm_unid=treat_master.unid) as ���,'+
                     'audit_doctor as �����,'+
                     'certificate_type as ֤������,certificate_num as ֤������,'+
                     'clinic_card_num as ���ƿ���,health_care_num as ҽ������,address as סַ,work_company as ������λ,work_address as ������ַ,'+
                     'if_marry as ���,native_place as ����,telephone as ��ϵ�绰,remark as ��ע,audit_date as ���ʱ��,department as �Ʊ�,patient_unid,unid from treat_master '+
                     ' where operator='''+operator_name+''' order by unid desc';
  MyQuery2.Open;
  if AUnid>0 then MyQuery2.Locate('unid',AUnid,[loCaseInsensitive]);
end;

procedure TfrmMain.MyQuery2AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid2.Columns.Items[0].Width:=72;//��������135
  dbgrid2.Columns.Items[1].Width:=42;//����
  dbgrid2.Columns.Items[2].Width:=30;//�Ա�
  dbgrid2.Columns.Items[3].Width:=30;//����
  dbgrid2.Columns.Items[4].Width:=105;//���
  dbgrid2.Columns.Items[5].Width:=42;//�����
  dbgrid2.Columns.Items[6].Width:=55;//֤������
  dbgrid2.Columns.Items[7].Width:=130;//֤������
  dbgrid2.Columns.Items[8].Width:=130;//���ƿ���
  dbgrid2.Columns.Items[9].Width:=130;//ҽ������
  dbgrid2.Columns.Items[10].Width:=120;//סַ
  dbgrid2.Columns.Items[11].Width:=120;//������λ
  dbgrid2.Columns.Items[12].Width:=120;//������ַ
  dbgrid2.Columns.Items[13].Width:=42;//���
  dbgrid2.Columns.Items[14].Width:=55;//����
  dbgrid2.Columns.Items[15].Width:=80;//��ϵ�绰
  dbgrid2.Columns.Items[16].Width:=100;//��ע
  dbgrid2.Columns.Items[17].Width:=135;//���ʱ��
end;

procedure TfrmMain.MyQuery2AfterScroll(DataSet: TDataSet);
begin
  if not MyQuery2.Active then exit;

  Panel3.Caption:=MyQuery2.fieldbyname('����').AsString;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+ifThen(MyQuery2.fieldbyname('unid').AsString='','-1',MyQuery2.fieldbyname('unid').AsString));

  ShowTreatSlave;
end;

procedure TfrmMain.LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
//  f1:single;
//  i1:integer;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.ifAbetChineseChar:=true;
  tmpADOLYGetcode.OpenStr:='select gene_name as ͨ����,'+
  'chem_name as ��ѧ��,'+
  'specs as ���,'+
  'dosage_dft as Ĭ������,'+
  '(select pack_name from drug_pack dp where dp.drug_unid=drug_manage.unid and dp.unit_dosage_dft=1 LIMIT 1) as Ĭ��������λ,'+
  '(select pack_name from drug_pack dp where dp.drug_unid=drug_manage.unid and dp.unit_fee_dft=1 LIMIT 1) as �շѵ�λ,'+
  '(select unit_price from drug_pack dp where dp.drug_unid=drug_manage.unid and dp.unit_fee_dft=1 LIMIT 1) as ����,'+
  'use_method_dft as Ĭ���÷�,'+
  'drug_freq_dft as Ĭ��Ƶ��,'+
  'drug_days_dft as Ĭ������,unid from drug_manage where Type_Name=''��ҩ'' ';
  tmpADOLYGetcode.InField:='code,gene_name,gene_pinyin,gene_wbm,chem_name,chem_pinyin,chem_wbm,latin_name,english_name';
  tmpADOLYGetcode.InValue:=tLabeledEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+tLabeledEdit(SENDER).Left+tLabeledEdit(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+tLabeledEdit(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+tLabeledEdit(SENDER).Top+tLabeledEdit(SENDER).Parent.Top+tLabeledEdit(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    tLabeledEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
    Label16.Caption:=tmpADOLYGetcode.OutValue[10];//unid
    LabeledEdit3.Text:=tmpADOLYGetcode.OutValue[3];//����
    ComboBox4.Text:=tmpADOLYGetcode.OutValue[4];//������λ
    ComboBox5.Text:=tmpADOLYGetcode.OutValue[7];//�÷�
    ComboBox2.Text:=tmpADOLYGetcode.OutValue[8];//Ƶ��
    LabeledEdit7.Text:=tmpADOLYGetcode.OutValue[9];//����
    Edit2.Text:=tmpADOLYGetcode.OutValue[5];//�շѵ�λ
    LabeledEdit9.Text:=tmpADOLYGetcode.OutValue[6];//����
  end;
  tmpADOLYGetcode.Free;

//  f1:=CalcXiYaoNum(LabeledEdit3.Text,ComboBox2.Text,LabeledEdit7.Text);
//  i1:=UnitsConverterMethod(Label16.Caption,ComboBox4.Text,ComboBox3.Text);
//  if i1<0 then LabeledEdit8.Text:=inttostr(ceil(f1/abs(i1))) else LabeledEdit8.Text:=inttostr(ceil(f1*i1));
end;

procedure TfrmMain.BitBtn1Click(Sender: TObject);
var
  adotemp11,adotemp12:TMyQuery;
  sqlstr:string;
  iUnid,i_group_num,i_drug_days,i_hosp_inje_num,i_item_unid:integer;
  f_unit_price,f_dosage,f_drug_num:single;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if LabeledEdit1.Text='' then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;
  if not MyQuery3.Active then exit;

  if Panel5.Caption='�޸�' then
  begin
    iUnid:=MyQuery3.fieldbyname('unid').AsInteger;

    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;

    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:=' Update treat_slave  '+
    '  set item_name=:item_name,group_num=:group_num,dosage=:dosage,unit_dosage=:unit_dosage,use_method=:use_method,if_skin_test=:if_skin_test,'+
    ' drug_freq=:drug_freq,drug_days=:drug_days,drug_num=:drug_num,unit_drug=:unit_drug,unit_price=:unit_price,hosp_inje_num=:hosp_inje_num,item_advice=:item_advice,item_unid=:item_unid  '+
    '  Where    Unid=:Unid ';
    adotemp12.ParamByName('item_name').Value:=trim(LabeledEdit1.Text);
    if trystrtoint(LabeledEdit2.Text,i_group_num) then
      adotemp12.ParamByName('group_num').Value:=i_group_num
    else adotemp12.ParamByName('group_num').Value:=null;
    if trystrtofloat(LabeledEdit3.Text,f_dosage) then
      adotemp12.ParamByName('dosage').Value:=f_dosage
    else adotemp12.ParamByName('dosage').Value:=null;
    adotemp12.ParamByName('unit_dosage').Value:=trim(ComboBox4.Text);
    adotemp12.ParamByName('use_method').Value:=trim(ComboBox5.Text);
    adotemp12.ParamByName('if_skin_test').Value:=CheckBox1.Checked;
    adotemp12.ParamByName('drug_freq').Value:=trim(ComboBox2.Text);
    if trystrtoint(LabeledEdit7.Text,i_drug_days) then
      adotemp12.ParamByName('drug_days').Value:=i_drug_days
    else adotemp12.ParamByName('drug_days').Value:=null;
    if trystrtofloat(LabeledEdit8.Text,f_drug_num) then
      adotemp12.ParamByName('drug_num').Value:=f_drug_num
    else adotemp12.ParamByName('drug_num').Value:=null;
    adotemp12.ParamByName('unit_drug').Value:=trim(Edit2.Text);
    if trystrtofloat(LabeledEdit9.Text,f_unit_price) then
      adotemp12.ParamByName('unit_price').Value:=f_unit_price
    else adotemp12.ParamByName('unit_price').Value:=null;
    if trystrtoint(LabeledEdit10.Text,i_hosp_inje_num) then
      adotemp12.ParamByName('hosp_inje_num').Value:=i_hosp_inje_num
    else adotemp12.ParamByName('hosp_inje_num').Value:=null;
    adotemp12.ParamByName('item_advice').Value:=trim(LabeledEdit11.Text);
    if trystrtoint(Label16.Caption,i_item_unid) then
      adotemp12.ParamByName('item_unid').Value:=i_item_unid
    else adotemp12.ParamByName('item_unid').Value:=null;
    adotemp12.ParamByName('unid').Value:=iUnid;
    adotemp12.ExecSQL;
    adotemp12.Free;

    Panel5.Caption:='����';
  end else
  begin
    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=DM.MyConnection1;

    sqlstr:='Insert into treat_slave ('+
                        ' item_type,tm_unid,item_name,group_num,dosage,unit_dosage,use_method,if_skin_test,drug_freq,drug_days,drug_num,unit_drug,unit_price,hosp_inje_num,item_advice,item_unid,prescription_no) values ('+
                        ' :item_type,:tm_unid,:item_name,:group_num,:dosage,:unit_dosage,:use_method,:if_skin_test,:drug_freq,:drug_days,:drug_num,:unit_drug,:unit_price,:hosp_inje_num,:item_advice,:item_unid,:prescription_no) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    adotemp11.ParamByName('item_type').Value:='��ҩ';
    adotemp11.ParamByName('tm_unid').Value:=MyQuery2.fieldbyname('unid').AsInteger;
    adotemp11.ParamByName('item_name').Value:=trim(LabeledEdit1.Text);
    if trystrtoint(LabeledEdit2.Text,i_group_num) then
    begin
      adotemp11.ParamByName('group_num').Value:=i_group_num;
      g_group_num:=i_group_num;
    end else adotemp11.ParamByName('group_num').Value:=null;
    if trystrtofloat(LabeledEdit3.Text,f_dosage) then
      adotemp11.ParamByName('dosage').Value:=f_dosage
    else adotemp11.ParamByName('dosage').Value:=null;
    adotemp11.ParamByName('unit_dosage').Value:=trim(ComboBox4.Text);
    adotemp11.ParamByName('use_method').Value:=trim(ComboBox5.Text);
    adotemp11.ParamByName('if_skin_test').Value:=CheckBox1.Checked;
    adotemp11.ParamByName('drug_freq').Value:=trim(ComboBox2.Text);
    if trystrtoint(LabeledEdit7.Text,i_drug_days) then
      adotemp11.ParamByName('drug_days').Value:=i_drug_days
    else adotemp11.ParamByName('drug_days').Value:=null;
    if trystrtofloat(LabeledEdit8.Text,f_drug_num) then
      adotemp11.ParamByName('drug_num').Value:=f_drug_num
    else adotemp11.ParamByName('drug_num').Value:=null;
    adotemp11.ParamByName('unit_drug').Value:=trim(Edit2.Text);
    if trystrtofloat(LabeledEdit9.Text,f_unit_price) then
      adotemp11.ParamByName('unit_price').Value:=f_unit_price
    else adotemp11.ParamByName('unit_price').Value:=null;
    if trystrtoint(LabeledEdit10.Text,i_hosp_inje_num) then
      adotemp11.ParamByName('hosp_inje_num').Value:=i_hosp_inje_num
    else adotemp11.ParamByName('hosp_inje_num').Value:=null;
    adotemp11.ParamByName('item_advice').Value:=trim(LabeledEdit11.Text);
    if trystrtoint(Label16.Caption,i_item_unid) then
      adotemp11.ParamByName('item_unid').Value:=i_item_unid
    else adotemp11.ParamByName('item_unid').Value:=null;
    adotemp11.ParamByName('prescription_no').Value:=RadioGroup1.ItemIndex;
    try
      adotemp11.ExecSQL;
      iUnid:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
    except
      on E:Exception do
      begin
        adotemp11.Free;
        MESSAGEDLG('������ҩʧ��!'+E.Message,mtError,[mbOK],0);
        exit;
      end;
    end;
    adotemp11.Free;
  end;

  MyQuery3.Refresh;
  MyQuery3.Locate('Unid',iUnid,[loCaseInsensitive]);
  
  ClearXiyaoEdit;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString);
end;

procedure TfrmMain.UpdateMyQuery3(const APrescription_No:integer);
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  MyQuery3.Close;
  MyQuery3.SQL.Clear;
  MyQuery3.SQL.Text:='select item_name as ��Ŀ,group_num as ���,dosage as ����,unit_dosage as ������λ,'+
                     'use_method as �÷�,'+
                     '(case if_skin_test when 1 then ''��'' else null end) as Ƥ��,'+
                     'drug_freq as Ƶ��,drug_days as ����,'+
                     'drug_num as ����,unit_drug as ������λ,unit_price as ����,drug_num*unit_price as ���,'+
                     'hosp_inje_num as Ժע����,item_advice as ��Ŀ����,creat_date_time as ����ʱ��,if_skin_test,unid,tm_unid,item_unid '+
                     ' from treat_slave '+
                     ' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''��ҩ'' and prescription_no='+inttostr(APrescription_No)+' order by group_num';
  MyQuery3.Open;
end;

procedure TfrmMain.MyQuery3AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid3.Columns.Items[0].Width:=135;
  dbgrid3.Columns.Items[1].Width:=30;
  dbgrid3.Columns.Items[2].Width:=30;
  dbgrid3.Columns.Items[3].Width:=55;
  dbgrid3.Columns.Items[4].Width:=55;
  dbgrid3.Columns.Items[5].Width:=30;
  dbgrid3.Columns.Items[6].Width:=65;//Ƶ��
  dbgrid3.Columns.Items[7].Width:=30;
  dbgrid3.Columns.Items[8].Width:=30;//
  dbgrid3.Columns.Items[9].Width:=55;//
  dbgrid3.Columns.Items[10].Width:=52;//����
  dbgrid3.Columns.Items[11].Width:=52;//���
  dbgrid3.Columns.Items[12].Width:=55;//
  dbgrid3.Columns.Items[13].Width:=120;//
  dbgrid3.Columns.Items[14].Width:=135;//����ʱ��
end;

procedure TfrmMain.ClearXiyaoEdit;
begin
    LabeledEdit1.Clear;
    LabeledEdit2.Text:=inttostr(g_group_num+1);
    LabeledEdit3.Clear;
    ComboBox4.Text:='';
    ComboBox5.Text:='';
    CheckBox1.Checked:=false;
    ComboBox2.Text:='';
    LabeledEdit7.Clear;
    LabeledEdit8.Clear;
    Edit2.Clear;
    LabeledEdit9.Clear;
    LabeledEdit10.Clear;
    LabeledEdit11.Clear;
    Label16.Caption:='';

    if LabeledEdit1.CanFocus then LabeledEdit1.SetFocus;
end;

procedure TfrmMain.N14Click(Sender: TObject);
begin
  DeletePrescriptionDetail(Sender,3);
end;

procedure TfrmMain.N44Click(Sender: TObject);
begin
  DeleteSheetPrescription(Sender,3);
end;

procedure TfrmMain.N12Click(Sender: TObject);
begin
  if not MyQuery3.Active then exit;
  if MyQuery3.RecordCount=0 then exit;

  Panel5.Caption:='�޸�';

  Label16.Caption:=MyQuery3.fieldbyname('item_unid').AsString;
  LabeledEdit1.Text:=MyQuery3.fieldbyname('��Ŀ').AsString;
  LabeledEdit2.Text:=MyQuery3.fieldbyname('���').AsString;
  ComboBox5.Text:=MyQuery3.fieldbyname('�÷�').AsString;
  CheckBox1.Checked:=MyQuery3.fieldbyname('if_skin_test').AsBoolean;
  LabeledEdit10.Text:=MyQuery3.fieldbyname('Ժע����').AsString;
  LabeledEdit11.Text:=MyQuery3.fieldbyname('��Ŀ����').AsString;
  
  LabeledEdit3.Text:=MyQuery3.fieldbyname('����').AsString;
  ComboBox4.Text:=MyQuery3.fieldbyname('������λ').AsString;
  ComboBox2.Text:=MyQuery3.fieldbyname('Ƶ��').AsString;
  LabeledEdit7.Text:=MyQuery3.fieldbyname('����').AsString;
  Edit2.Text:=MyQuery3.fieldbyname('������λ').AsString;
  
  //���������ۻ�������ؼ�(������������λ��Ƶ�Ρ�������������λ)��change�¼�Ӱ��,�ʷ������
  LabeledEdit8.Text:=MyQuery3.fieldbyname('����').AsString;
  LabeledEdit9.Text:=MyQuery3.fieldbyname('����').AsString;
end;

procedure TfrmMain.Panel5DblClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption='�޸�' then
  begin
    (Sender as TPanel).Caption:='����';

    ClearXiyaoEdit;
  end;
end;

procedure TfrmMain.SpeedButton2Click(Sender: TObject);
var
  unid,RecNum:integer;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  unid:=MyQuery2.fieldbyname('unid').AsInteger;

  RecNum:=strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) as RecNum from treat_slave where tm_unid='+inttostr(unid)));
  if RecNum<=0 then
  begin
    MESSAGEDLG('δ¼�봦��,���������!',mtError,[mbOK],0);
    exit;
  end;

   if (trim(MyQuery2.FieldByName('�����').AsString)<>operator_name) and (trim(MyQuery2.FieldByName('�����').AsString)<>'') then
   begin
      if MessageDlg('�ѱ���˹������޸�����ߣ�', mtWarning	, [mbNo,mbYes], 0 ) = mrNo then  exit;
   end;

  ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_master set audit_doctor='''+operator_name+''',audit_date=NOW() where unid='+inttostr(unid));

  MyQuery2.Refresh;//ˢ�½���
end;

procedure TfrmMain.SpeedButton3Click(Sender: TObject);
var
  unid:integer;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if not MyQuery2.Active then exit;
  if not MyQuery2.RecordCount=0 then exit;
  if trim(DBGrid2.DataSource.DataSet.FieldByName('�����').AsString)='' then exit;//20080130

  unid:=MyQuery2.fieldbyname('unid').AsInteger;

  if not Check_audit_doctor then
  begin
    MESSAGEDLG('������ˣ���Ȩ�޸�!',MTINFORMATION,[MBOK],0);
    exit;
  end;

  ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_master set audit_doctor=null,audit_date=null where unid='+inttostr(unid));

  MyQuery2.Refresh; //ˢ�½���
end;

procedure TfrmMain.SpeedButton4Click(Sender: TObject);
var
  iUnid:integer;
begin
  if not MyQuery2.Active then exit;

  //MyQuery2.Refresh;//�л��û���¼ʱ,Refresh�����޷������µ��û�
  iUnid:=-1;
  if MyQuery2.RecordCount>0 then iUnid:=MyQuery2.fieldbyname('unid').AsInteger;
  UpdateMyQuery2(iUnid);
end;

function TfrmMain.Check_audit_doctor: boolean;
begin
  result:=false;
  if trim(DBGrid2.DataSource.DataSet.FieldByName('�����').AsString)='' then begin result:=true;exit; end;

  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from worker where code='''+operator_id+''' and ifSuperUser=1'))>=1 then
  begin result:=true;exit; end;
  
  if uppercase(trim(DBGrid2.DataSource.DataSet.FieldByName('�����').AsString))=uppercase(trim(operator_name)) then result:=true;
end;

procedure TfrmMain.N15Click(Sender: TObject);
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;

  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if not Check_audit_doctor then
  begin
    MESSAGEDLG('������ˣ���Ȩ�޸�!',MTINFORMATION,[MBOK],0);
    exit;
  end;

  frmModifyAge(MyQuery2.FieldByName('unid').AsString,MyQuery2.FieldByName('����').AsString).ShowModal;
end;

{//���没����ť�¼����Զ����棬��ע��
procedure TfrmMain.BitBtn2Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;

  //����
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����'' '))<=0 then
  begin
    if trim(LabeledEdit4.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''����'',''����'','''+LabeledEdit4.Text+''')');
    end;
  end else
  begin
    if trim(LabeledEdit4.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+LabeledEdit4.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end;
  end;

  //����ѹ
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����ѹ'' '))<=0 then
  begin
    if trim(LabeledEdit5.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''����ѹ'',''����ѹ'','''+LabeledEdit5.Text+''')');
    end;
  end else
  begin
    if trim(LabeledEdit5.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+LabeledEdit5.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����ѹ''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����ѹ''');
    end;
  end;

  //����ѹ
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����ѹ'' '))<=0 then
  begin
    if trim(LabeledEdit6.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''����ѹ'',''����ѹ'','''+LabeledEdit6.Text+''')');
    end;
  end else
  begin
    if trim(LabeledEdit6.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+LabeledEdit6.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����ѹ''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����ѹ''');
    end;
  end;
  
  //����
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����'' '))<=0 then
  begin
    if trim(LabeledEdit12.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''����'',''����'','''+LabeledEdit12.Text+''')');
    end;
  end else
  begin
    if trim(LabeledEdit12.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+LabeledEdit12.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end;
  end;
  
  //����
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����'' '))<=0 then
  begin
    if trim(Memo1.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''����'',''����'','''+Memo1.Text+''')');
    end;
  end else
  begin
    if trim(Memo1.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+Memo1.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end;
  end;
  
  //��Ҫ��ʷ
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''��Ҫ��ʷ'' '))<=0 then
  begin
    if trim(Memo2.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''��Ҫ��ʷ'',''��Ҫ��ʷ'','''+Memo2.Text+''')');
    end;
  end else
  begin
    if trim(Memo2.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+Memo2.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''��Ҫ��ʷ''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''��Ҫ��ʷ''');
    end;
  end;
  
  //���
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''���'' '))<=0 then
  begin
    if trim(Memo3.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''���'',''���'','''+Memo3.Text+''')');
    end;
  end else
  begin
    if trim(Memo3.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+Memo3.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''���''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''���''');
    end;
  end;
  
  //�������
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''�������'' '))<=0 then
  begin
    if trim(Memo4.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''�������'',''�������'','''+Memo4.Text+''')');
    end;
  end else
  begin
    if trim(Memo4.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+Memo4.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''�������''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''�������''');
    end;
  end;
  
  //����
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����'' '))<=0 then
  begin
    if trim(Memo5.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_name,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+',''����'',''����'','''+Memo5.Text+''')');
    end;
  end else
  begin
    if trim(Memo5.Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+Memo5.Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����''');
    end;
  end;
end;//}

procedure TfrmMain.UpdateMyQuery4;
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  MyQuery4.Close;
  MyQuery4.SQL.Clear;
  MyQuery4.SQL.Text:='select item_name as ���,item_value as ��Ͻ���,creat_date_time as ����ʱ��,unid,tm_unid '+
                     ' from treat_slave '+
                     ' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''���'' ';
  MyQuery4.Open;
end;

procedure TfrmMain.MyQuery4AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid4.Columns.Items[0].Width:=100;
  dbgrid4.Columns.Items[1].Width:=55;
  dbgrid4.Columns.Items[2].Width:=135;//����ʱ��
  dbgrid4.Columns.Items[3].Width:=40;
  dbgrid4.Columns.Items[4].Width:=40;
end;

procedure TfrmMain.BitBtn4Click(Sender: TObject);
var
  adotemp11:TMyQuery;
  sqlstr:string;
  Insert_Identity:integer;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if trim(ComboBox6.Text)='' then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;

  adotemp11:=TMyQuery.Create(nil);
  adotemp11.Connection:=DM.MyConnection1;
  
  if Panel38.Caption='�޸�' then
  begin
    IF (not MyQuery4.Active) or (MyQuery4.RecordCount<=0) THEN
    BEGIN
      adotemp11.Free;
      EXIT;
    END;

    Insert_Identity:=MyQuery4.fieldbyname('unid').AsInteger;
    
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Text:=' Update treat_slave  '+
    '  set item_name=:item_name,item_value=:item_value '+
    '  Where unid=:unid ';
    adotemp11.ParamByName('item_name').Value:=trim(ComboBox6.Text);
    adotemp11.ParamByName('item_value').Value:=trim(ComboBox7.Text);
    adotemp11.ParamByName('unid').Value:=Insert_Identity;
    adotemp11.ExecSQL;
    
    Panel38.Caption:='����';
  end else //�޸�
  begin
    sqlstr:='Insert into treat_slave ('+
                        ' tm_unid,item_Type,item_name,item_value) values ('+
                        ' :tm_unid,:item_Type,:item_name,:item_value) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    adotemp11.ParamByName('tm_unid').Value:=MyQuery2.fieldbyname('unid').AsInteger;
    adotemp11.ParamByName('item_Type').Value:='���';
    adotemp11.ParamByName('item_name').Value:=trim(ComboBox6.Text);
    adotemp11.ParamByName('item_value').Value:=trim(ComboBox7.Text);
    adotemp11.Open;
    Insert_Identity:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
  end;

  adotemp11.Free;

  MyQuery2.Refresh;
  //MyQuery4.Refresh;//�����MyQuery2ʱ���Զ�ˢ��MyQuery4
  MyQuery4.Locate('unid',Insert_Identity,[loCaseInsensitive]);

  ComboBox6.Text:='';
  ComboBox7.Text:='';
  if ComboBox6.CanFocus then ComboBox6.SetFocus;
end;

procedure TfrmMain.UpdateMyQuery5;
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  MyQuery5.Close;
  MyQuery5.SQL.Clear;
  MyQuery5.SQL.Text:='select item_name as ��Ŀ,group_num as ���,drug_freq as Ƶ��,drug_days as ����,'+
                     'drug_num as ����,unit_drug as ������λ,body_position as ��λ,unit_price as ����,drug_num*unit_price as ���,'+
                     'item_advice as ��Ŀ����,creat_date_time as ����ʱ��,unid,tm_unid,item_unid '+
                     ' from treat_slave '+
                     ' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����'' order by group_num';
  MyQuery5.Open;
end;

procedure TfrmMain.MyQuery5AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid5.Columns.Items[0].Width:=135;
  dbgrid5.Columns.Items[1].Width:=30;
  dbgrid5.Columns.Items[2].Width:=65;//Ƶ��
  dbgrid5.Columns.Items[3].Width:=30;//����
  dbgrid5.Columns.Items[4].Width:=30;//����
  dbgrid5.Columns.Items[5].Width:=55;//������λ
  dbgrid5.Columns.Items[6].Width:=52;//��λ
  dbgrid5.Columns.Items[7].Width:=52;//����
  dbgrid5.Columns.Items[8].Width:=52;//���
  dbgrid5.Columns.Items[9].Width:=120;//��Ŀ����
  dbgrid5.Columns.Items[10].Width:=135;//����ʱ��
end;

procedure TfrmMain.Panel29DblClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption='�޸�' then
  begin
    (Sender as TPanel).Caption:='����';

    ClearZhiLiaoEdit;
  end;
end;

procedure TfrmMain.ClearZhiLiaoEdit;
begin
    LabeledEdit13.Clear;
    LabeledEdit14.Text:=inttostr(g_zhiliao_group_num+1);
    ComboBox9.Text:='';
    LabeledEdit16.Clear;
    LabeledEdit17.Clear;
    ComboBox10.Text:='';
    LabeledEdit18.Clear;
    ComboBox8.Text:='';
    LabeledEdit20.Clear;

    if LabeledEdit13.CanFocus then LabeledEdit13.SetFocus;
end;

procedure TfrmMain.N16Click(Sender: TObject);
begin
  if not MyQuery5.Active then exit;
  if MyQuery5.RecordCount<=0 then exit;

  Panel29.Caption:='�޸�';

  LabeledEdit13.Text:=MyQuery5.fieldbyname('��Ŀ').AsString;
  LabeledEdit14.Text:=MyQuery5.fieldbyname('���').AsString;
  ComboBox10.Text:=MyQuery5.fieldbyname('������λ').AsString;
  LabeledEdit18.Text:=MyQuery5.fieldbyname('����').AsString;
  ComboBox8.Text:=MyQuery5.fieldbyname('��λ').AsString;
  LabeledEdit20.Text:=MyQuery5.fieldbyname('��Ŀ����').AsString;

  ComboBox9.Text:=MyQuery5.fieldbyname('Ƶ��').AsString;
  LabeledEdit16.Text:=MyQuery5.fieldbyname('����').AsString;
  
  //������������ؼ�(Ƶ�Ρ�����)��change�¼�Ӱ��,�ʷ������
  LabeledEdit17.Text:=MyQuery5.fieldbyname('����').AsString;
end;

procedure TfrmMain.N18Click(Sender: TObject);
begin
  DeletePrescriptionDetail(Sender,5);
end;

procedure TfrmMain.N46Click(Sender: TObject);
begin
  DeleteSheetPrescription(Sender,5);
end;

procedure TfrmMain.BitBtn6Click(Sender: TObject);
var
  adotemp11,adotemp12:TMyQuery;
  sqlstr:string;
  iUnid,i_zhiliao_group_num,i_drug_days:integer;
  f_unit_price,f_drug_num:single;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if LabeledEdit13.Text='' then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;
  if not MyQuery5.Active then exit;

  if Panel29.Caption='�޸�' then
  begin
    iUnid:=MyQuery5.fieldbyname('unid').AsInteger;

    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;

    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:=' Update treat_slave  '+
    '  set item_name=:item_name,group_num=:group_num,'+
    ' drug_freq=:drug_freq,drug_days=:drug_days,drug_num=:drug_num,unit_drug=:unit_drug,unit_price=:unit_price,body_position=:body_position,item_advice=:item_advice  '+
    '  Where    Unid=:Unid ';
    adotemp12.ParamByName('item_name').Value:=trim(LabeledEdit13.Text);
    if trystrtoint(LabeledEdit14.Text,i_zhiliao_group_num) then
      adotemp12.ParamByName('group_num').Value:=i_zhiliao_group_num
    else adotemp12.ParamByName('group_num').Value:=null;
    adotemp12.ParamByName('drug_freq').Value:=trim(ComboBox9.Text);
    if trystrtoint(LabeledEdit16.Text,i_drug_days) then
      adotemp12.ParamByName('drug_days').Value:=i_drug_days
    else adotemp12.ParamByName('drug_days').Value:=null;
    if trystrtofloat(LabeledEdit17.Text,f_drug_num) then
      adotemp12.ParamByName('drug_num').Value:=f_drug_num
    else adotemp12.ParamByName('drug_num').Value:=null;
    adotemp12.ParamByName('unit_drug').Value:=trim(ComboBox10.Text);
    if trystrtofloat(LabeledEdit18.Text,f_unit_price) then
      adotemp12.ParamByName('unit_price').Value:=f_unit_price
    else adotemp12.ParamByName('unit_price').Value:=null;
    adotemp12.ParamByName('body_position').Value:=trim(ComboBox8.Text);
    adotemp12.ParamByName('item_advice').Value:=trim(LabeledEdit20.Text);
    adotemp12.ParamByName('unid').Value:=iUnid;
    adotemp12.ExecSQL;
    adotemp12.Free;
    
    Panel29.Caption:='����';
  end else
  begin
    if not MyQuery2.Active then exit;
    if MyQuery2.RecordCount<=0 then exit;
    
    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=DM.MyConnection1;

    sqlstr:='Insert into treat_slave ('+
                        ' item_type,tm_unid,item_name,group_num,drug_freq,drug_days,drug_num,unit_drug,unit_price,body_position,item_advice) values ('+
                        ' :item_type,:tm_unid,:item_name,:group_num,:drug_freq,:drug_days,:drug_num,:unit_drug,:unit_price,:body_position,:item_advice) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    adotemp11.ParamByName('item_type').Value:='����';
    adotemp11.ParamByName('tm_unid').Value:=MyQuery2.fieldbyname('unid').AsInteger;
    adotemp11.ParamByName('item_name').Value:=trim(LabeledEdit13.Text);
    if trystrtoint(LabeledEdit14.Text,i_zhiliao_group_num) then
    begin
      adotemp11.ParamByName('group_num').Value:=i_zhiliao_group_num;
      g_zhiliao_group_num:=i_zhiliao_group_num;
    end else adotemp11.ParamByName('group_num').Value:=null;
    adotemp11.ParamByName('drug_freq').Value:=trim(ComboBox9.Text);
    if trystrtoint(LabeledEdit16.Text,i_drug_days) then
      adotemp11.ParamByName('drug_days').Value:=i_drug_days
    else adotemp11.ParamByName('drug_days').Value:=null;
    if trystrtofloat(LabeledEdit17.Text,f_drug_num) then
      adotemp11.ParamByName('drug_num').Value:=f_drug_num
    else adotemp11.ParamByName('drug_num').Value:=null;
    adotemp11.ParamByName('unit_drug').Value:=trim(ComboBox10.Text);
    if trystrtofloat(LabeledEdit18.Text,f_unit_price) then
      adotemp11.ParamByName('unit_price').Value:=f_unit_price
    else adotemp11.ParamByName('unit_price').Value:=null;
    adotemp11.ParamByName('body_position').Value:=trim(ComboBox8.Text);
    adotemp11.ParamByName('item_advice').Value:=trim(LabeledEdit20.Text);
    try
      adotemp11.ExecSQL;
      iUnid:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
    except
      on E:Exception do
      begin
        adotemp11.Free;
        MESSAGEDLG('��������ʧ��!'+E.Message,mtError,[mbOK],0);
        exit;
      end;
    end;
    adotemp11.Free;
  end;

  MyQuery5.Refresh;
  MyQuery5.Locate('Unid',iUnid,[loCaseInsensitive]);
  
  ClearZhiLiaoEdit;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString);
end;

procedure TfrmMain.LabeledEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.ifAbetChineseChar:=true;
  tmpADOLYGetcode.OpenStr:='select name as ����,'+
  'reserve as Ĭ��������λ,'+
  'reserve2 as Ĭ��Ƶ��,'+
  'reserve3 as Ĭ�ϲ�λ,'+
  'reserve5 as Ĭ������,'+
  'reserve7 as ���� '+
  ' from commcode where TypeName=''������Ŀ'' ';
  tmpADOLYGetcode.InField:='code,name,pinyin,wbm';
  tmpADOLYGetcode.InValue:=tLabeledEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+tLabeledEdit(SENDER).Left+tLabeledEdit(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+tLabeledEdit(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+tLabeledEdit(SENDER).Top+tLabeledEdit(SENDER).Parent.Top+tLabeledEdit(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    tLabeledEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
    ComboBox10.Text:=tmpADOLYGetcode.OutValue[1];//������λ
    ComboBox9.Text:=tmpADOLYGetcode.OutValue[2];//Ƶ��
    ComboBox8.Text:=tmpADOLYGetcode.OutValue[3];//��λ
    LabeledEdit16.Text:=tmpADOLYGetcode.OutValue[4];//����
    LabeledEdit18.Text:=tmpADOLYGetcode.OutValue[5];//����
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.UpdateMyQuery6;
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  MyQuery6.Close;
  MyQuery6.SQL.Clear;
  MyQuery6.SQL.Text:='select item_name as ��Ŀ,group_num as ���,'+
                     'drug_num as ����,unit_drug as ������λ,body_position as ��λ,unit_price as ����,drug_num*unit_price as ���,'+
                     'item_advice as ��Ŀ����,creat_date_time as ����ʱ��,unid,tm_unid,item_unid '+
                     ' from treat_slave '+
                     ' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''���'' order by group_num';
  MyQuery6.Open;
end;

procedure TfrmMain.ClearJianChaEdit;
begin
    LabeledEdit15.Clear;
    LabeledEdit19.Text:=inttostr(g_zhiliao_group_num+1);
    LabeledEdit22.Clear;
    ComboBox12.Text:='';
    LabeledEdit23.Clear;
    ComboBox13.Text:='';
    LabeledEdit24.Clear;

    if LabeledEdit15.CanFocus then LabeledEdit15.SetFocus;
end;

procedure TfrmMain.Panel31DblClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption='�޸�' then
  begin
    (Sender as TPanel).Caption:='����';

    ClearJianChaEdit;
  end;
end;

procedure TfrmMain.N19Click(Sender: TObject);
begin
  if not MyQuery6.Active then exit;
  if MyQuery6.RecordCount<=0 then exit;

  Panel31.Caption:='�޸�';

  LabeledEdit15.Text:=MyQuery6.fieldbyname('��Ŀ').AsString;
  LabeledEdit19.Text:=MyQuery6.fieldbyname('���').AsString;
  LabeledEdit22.Text:=MyQuery6.fieldbyname('����').AsString;
  ComboBox12.Text:=MyQuery6.fieldbyname('������λ').AsString;
  LabeledEdit23.Text:=MyQuery6.fieldbyname('����').AsString;
  ComboBox13.Text:=MyQuery6.fieldbyname('��λ').AsString;
  LabeledEdit24.Text:=MyQuery6.fieldbyname('��Ŀ����').AsString;
end;

procedure TfrmMain.N21Click(Sender: TObject);
begin
  DeletePrescriptionDetail(Sender,6);
end;

procedure TfrmMain.N48Click(Sender: TObject);
begin
  DeleteSheetPrescription(Sender,6);
end;

procedure TfrmMain.LabeledEdit15KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.ifAbetChineseChar:=true;
  tmpADOLYGetcode.OpenStr:='select name as ����,'+
  'reserve as Ĭ��������λ,'+
  'reserve3 as Ĭ�ϲ�λ,'+
  'reserve7 as ���� '+
  ' from commcode where TypeName=''�����Ŀ'' ';
  tmpADOLYGetcode.InField:='code,name,pinyin,wbm';
  tmpADOLYGetcode.InValue:=tLabeledEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+tLabeledEdit(SENDER).Left+tLabeledEdit(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+tLabeledEdit(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+tLabeledEdit(SENDER).Top+tLabeledEdit(SENDER).Parent.Top+tLabeledEdit(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    tLabeledEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
    ComboBox12.Text:=tmpADOLYGetcode.OutValue[1];//������λ
    ComboBox13.Text:=tmpADOLYGetcode.OutValue[2];//��λ
    LabeledEdit23.Text:=tmpADOLYGetcode.OutValue[3];//����
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.BitBtn7Click(Sender: TObject);
var
  adotemp11,adotemp12:TMyQuery;
  sqlstr:string;
  iUnid,i_jiancha_group_num,i_drug_num:integer;
  f_unit_price:single;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if LabeledEdit15.Text='' then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;
  if not MyQuery6.Active then exit;

  if Panel31.Caption='�޸�' then
  begin
    iUnid:=MyQuery6.fieldbyname('unid').AsInteger;

    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;

    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:=' Update treat_slave  '+
    '  set item_name=:item_name,group_num=:group_num,'+
    ' drug_num=:drug_num,unit_drug=:unit_drug,unit_price=:unit_price,body_position=:body_position,item_advice=:item_advice  '+
    '  Where    Unid=:Unid ';
    adotemp12.ParamByName('item_name').Value:=trim(LabeledEdit15.Text);
    if trystrtoint(LabeledEdit19.Text,i_jiancha_group_num) then
      adotemp12.ParamByName('group_num').Value:=i_jiancha_group_num
    else adotemp12.ParamByName('group_num').Value:=null;
    if trystrtoint(LabeledEdit22.Text,i_drug_num) then
      adotemp12.ParamByName('drug_num').Value:=i_drug_num
    else adotemp12.ParamByName('drug_num').Value:=null;
    adotemp12.ParamByName('unit_drug').Value:=trim(ComboBox12.Text);
    if trystrtofloat(LabeledEdit23.Text,f_unit_price) then
      adotemp12.ParamByName('unit_price').Value:=f_unit_price
    else adotemp12.ParamByName('unit_price').Value:=null;
    adotemp12.ParamByName('body_position').Value:=trim(ComboBox13.Text);
    adotemp12.ParamByName('item_advice').Value:=trim(LabeledEdit24.Text);
    adotemp12.ParamByName('unid').Value:=iUnid;
    adotemp12.ExecSQL;
    adotemp12.Free;
    
    Panel31.Caption:='����';
  end else
  begin
    if not MyQuery2.Active then exit;
    if MyQuery2.RecordCount<=0 then exit;
    
    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=DM.MyConnection1;

    sqlstr:='Insert into treat_slave ('+
                        ' item_type,tm_unid,item_name,group_num,drug_num,unit_drug,unit_price,body_position,item_advice) values ('+
                        ' :item_type,:tm_unid,:item_name,:group_num,:drug_num,:unit_drug,:unit_price,:body_position,:item_advice) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    adotemp11.ParamByName('item_type').Value:='���';
    adotemp11.ParamByName('tm_unid').Value:=MyQuery2.fieldbyname('unid').AsInteger;
    adotemp11.ParamByName('item_name').Value:=trim(LabeledEdit15.Text);
    if trystrtoint(LabeledEdit19.Text,i_jiancha_group_num) then
    begin
      adotemp11.ParamByName('group_num').Value:=i_jiancha_group_num;
      g_jiancha_group_num:=i_jiancha_group_num;
    end else adotemp11.ParamByName('group_num').Value:=null;
    if trystrtoint(LabeledEdit22.Text,i_drug_num) then
      adotemp11.ParamByName('drug_num').Value:=i_drug_num
    else adotemp11.ParamByName('drug_num').Value:=null;
    adotemp11.ParamByName('unit_drug').Value:=trim(ComboBox12.Text);
    if trystrtofloat(LabeledEdit23.Text,f_unit_price) then
      adotemp11.ParamByName('unit_price').Value:=f_unit_price
    else adotemp11.ParamByName('unit_price').Value:=null;
    adotemp11.ParamByName('body_position').Value:=trim(ComboBox13.Text);
    adotemp11.ParamByName('item_advice').Value:=trim(LabeledEdit24.Text);
    try
      adotemp11.ExecSQL;
      iUnid:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
    except
      on E:Exception do
      begin
        adotemp11.Free;
        MESSAGEDLG('��������ʧ��!'+E.Message,mtError,[mbOK],0);
        exit;
      end;
    end;
    adotemp11.Free;
  end;

  MyQuery6.Refresh;
  MyQuery6.Locate('Unid',iUnid,[loCaseInsensitive]);
  
  ClearJianChaEdit;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString);
end;

procedure TfrmMain.MyQuery6AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid6.Columns.Items[0].Width:=135;
  dbgrid6.Columns.Items[1].Width:=30;
  dbgrid6.Columns.Items[2].Width:=30;
  dbgrid6.Columns.Items[3].Width:=55;
  dbgrid6.Columns.Items[4].Width:=52;//��λ
  dbgrid6.Columns.Items[5].Width:=52;//����
  dbgrid6.Columns.Items[6].Width:=52;//���
  dbgrid6.Columns.Items[7].Width:=120;//��Ŀ����
  dbgrid6.Columns.Items[8].Width:=135;//����ʱ��
end;

procedure TfrmMain.Panel33DblClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption='�޸�' then
  begin
    (Sender as TPanel).Caption:='����';

    ClearZhongYaoEdit;
  end;
end;

procedure TfrmMain.ClearZhongYaoEdit;
begin
    LabeledEdit21.Clear;
    //LabeledEdit25.Text:=inttostr(g_zhongyao_group_num+1);//���
    LabeledEdit26.Clear;
    ComboBox16.Text:='';
    //ComboBox17.Text:='';//�÷�
    ComboBox11.Text:='';
    //ComboBox14.Text:='';//Ƶ��
    LabeledEdit28.Clear;
    Edit1.Clear;
    LabeledEdit29.Clear;
    LabeledEdit31.Clear;
    Label17.Caption:='';
    //LabeledEdit35.Clear;//����

    if LabeledEdit21.CanFocus then LabeledEdit21.SetFocus;
end;

procedure TfrmMain.UpdateMyQuery7(const APrescription_No:integer);
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  MyQuery7.Close;
  MyQuery7.SQL.Clear;
  MyQuery7.SQL.Text:='select item_name as ��Ŀ,group_num as ���,dosage as ����,unit_dosage as ������λ,'+
                     'use_method as �÷�,made_method as �巨,drug_freq as Ƶ��,'+
                     'drug_num as ����,unit_drug as ������λ,unit_price as ����,drug_num*unit_price as ���,'+
                     'item_advice as ��Ŀ����,creat_date_time as ����ʱ��,drug_days as ����,unid,tm_unid,item_unid '+
                     ' from treat_slave '+
                     ' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''��ҩ'' and prescription_no='+inttostr(APrescription_No)+' order by group_num';
  MyQuery7.Open;
end;

procedure TfrmMain.MyQuery7AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid7.Columns.Items[0].Width:=135;
  dbgrid7.Columns.Items[1].Width:=30;
  dbgrid7.Columns.Items[2].Width:=30;
  dbgrid7.Columns.Items[3].Width:=55;
  dbgrid7.Columns.Items[4].Width:=55;
  dbgrid7.Columns.Items[5].Width:=55;
  dbgrid7.Columns.Items[6].Width:=65;
  dbgrid7.Columns.Items[7].Width:=30;
  dbgrid7.Columns.Items[8].Width:=55;//
  dbgrid7.Columns.Items[9].Width:=52;//
  dbgrid7.Columns.Items[10].Width:=52;//
  dbgrid7.Columns.Items[11].Width:=80;//
  dbgrid7.Columns.Items[12].Width:=135;//����ʱ��
  dbgrid7.Columns.Items[13].Width:=30;//����
end;

procedure TfrmMain.LabeledEdit21KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.ifAbetChineseChar:=true;
  tmpADOLYGetcode.OpenStr:='select gene_name as ����,'+
  'dosage_dft as Ĭ������,'+
  '(select pack_name from drug_pack dp where dp.drug_unid=drug_manage.unid and dp.unit_dosage_dft=1 LIMIT 1) as Ĭ��������λ,'+
  '(select pack_name from drug_pack dp where dp.drug_unid=drug_manage.unid and dp.unit_fee_dft=1 LIMIT 1) as �շѵ�λ,'+
  '(select unit_price from drug_pack dp where dp.drug_unid=drug_manage.unid and dp.unit_fee_dft=1 LIMIT 1) as ����,'+
  'use_method_dft as Ĭ���÷�,'+
  'drug_freq_dft as Ĭ��Ƶ��,'+
  'made_method_dft as Ĭ�ϼ巨,unid from drug_manage where Type_Name=''��ҩ'' ';
  tmpADOLYGetcode.InField:='code,gene_name,gene_pinyin,gene_wbm,chem_name,chem_pinyin,chem_wbm,latin_name,english_name';
  tmpADOLYGetcode.InValue:=tLabeledEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+tLabeledEdit(SENDER).Left+tLabeledEdit(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+tLabeledEdit(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+tLabeledEdit(SENDER).Top+tLabeledEdit(SENDER).Parent.Top+tLabeledEdit(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    tLabeledEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
    Label17.Caption:=tmpADOLYGetcode.OutValue[8];//ҩƷΨһ���
    LabeledEdit26.Text:=tmpADOLYGetcode.OutValue[1];//����
    ComboBox16.Text:=tmpADOLYGetcode.OutValue[2];//������λ
    Edit1.Text:=tmpADOLYGetcode.OutValue[3];//�շѵ�λ
    ComboBox17.Text:=tmpADOLYGetcode.OutValue[5];//�÷�
    ComboBox11.Text:=tmpADOLYGetcode.OutValue[7];//�巨
    ComboBox14.Text:=tmpADOLYGetcode.OutValue[6];//Ƶ��
    LabeledEdit29.Text:=tmpADOLYGetcode.OutValue[4];//����
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.BitBtn8Click(Sender: TObject);
var
  adotemp11,adotemp12:TMyQuery;
  sqlstr:string;
  iUnid,i_zhongyao_group_num,i_item_unid,i_drug_days:integer;
  f_unit_price,f_dosage,f_drug_num:single;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if LabeledEdit21.Text='' then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;
  if not MyQuery7.Active then exit;

  if Panel33.Caption='�޸�' then
  begin
    if MyQuery7.RecordCount<=0 then exit;
    
    iUnid:=MyQuery7.fieldbyname('unid').AsInteger;

    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;

    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:=' Update treat_slave  '+
    '  set item_name=:item_name,group_num=:group_num,dosage=:dosage,unit_dosage=:unit_dosage,made_method=:made_method,use_method=:use_method,'+
    ' drug_freq=:drug_freq,drug_num=:drug_num,unit_drug=:unit_drug,unit_price=:unit_price,item_advice=:item_advice,item_unid=:item_unid,drug_days=:drug_days  '+
    '  Where    Unid=:Unid ';
    adotemp12.ParamByName('item_name').Value:=trim(LabeledEdit21.Text);
    if trystrtoint(LabeledEdit25.Text,i_zhongyao_group_num) then
      adotemp12.ParamByName('group_num').Value:=i_zhongyao_group_num
    else adotemp12.ParamByName('group_num').Value:=null;
    if trystrtofloat(LabeledEdit26.Text,f_dosage) then
      adotemp12.ParamByName('dosage').Value:=f_dosage
    else adotemp12.ParamByName('dosage').Value:=null;
    adotemp12.ParamByName('unit_dosage').Value:=trim(ComboBox16.Text);
    adotemp12.ParamByName('use_method').Value:=trim(ComboBox17.Text);
    adotemp12.ParamByName('made_method').Value:=trim(ComboBox11.Text);
    adotemp12.ParamByName('drug_freq').Value:=trim(ComboBox14.Text);
    if trystrtofloat(LabeledEdit28.Text,f_drug_num) then
      adotemp12.ParamByName('drug_num').Value:=f_drug_num
    else adotemp12.ParamByName('drug_num').Value:=null;
    adotemp12.ParamByName('unit_drug').Value:=trim(Edit1.Text);
    if trystrtofloat(LabeledEdit29.Text,f_unit_price) then
      adotemp12.ParamByName('unit_price').Value:=f_unit_price
    else adotemp12.ParamByName('unit_price').Value:=null;
    adotemp12.ParamByName('item_advice').Value:=trim(LabeledEdit31.Text);
    if trystrtoint(Label17.Caption,i_item_unid) then
      adotemp12.ParamByName('item_unid').Value:=i_item_unid
    else adotemp12.ParamByName('item_unid').Value:=null;
    if trystrtoint(LabeledEdit35.Text,i_drug_days) then
      adotemp12.ParamByName('drug_days').Value:=i_drug_days
    else adotemp12.ParamByName('drug_days').Value:=null;
    adotemp12.ParamByName('unid').Value:=iUnid;
    adotemp12.ExecSQL;
    adotemp12.Free;
    
    Panel33.Caption:='����';
  end else
  begin
    if not MyQuery2.Active then exit;
    if MyQuery2.RecordCount<=0 then exit;

    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=DM.MyConnection1;

    sqlstr:='Insert into treat_slave ('+
                        ' item_type,tm_unid,item_name,group_num,dosage,unit_dosage,use_method,made_method,drug_freq,drug_num,unit_drug,unit_price,item_advice,item_unid,drug_days,prescription_no) values ('+
                        ' :item_type,:tm_unid,:item_name,:group_num,:dosage,:unit_dosage,:use_method,:made_method,:drug_freq,:drug_num,:unit_drug,:unit_price,:item_advice,:item_unid,:drug_days,:prescription_no) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    adotemp11.ParamByName('item_type').Value:='��ҩ';
    adotemp11.ParamByName('tm_unid').Value:=MyQuery2.fieldbyname('unid').AsInteger;
    adotemp11.ParamByName('item_name').Value:=trim(LabeledEdit21.Text);
    if trystrtoint(LabeledEdit25.Text,i_zhongyao_group_num) then
    begin
      adotemp11.ParamByName('group_num').Value:=i_zhongyao_group_num;
      //g_zhongyao_group_num:=i_zhongyao_group_num;
    end else adotemp11.ParamByName('group_num').Value:=null;
    if trystrtofloat(LabeledEdit26.Text,f_dosage) then
      adotemp11.ParamByName('dosage').Value:=f_dosage
    else adotemp11.ParamByName('dosage').Value:=null;
    adotemp11.ParamByName('unit_dosage').Value:=trim(ComboBox16.Text);
    adotemp11.ParamByName('use_method').Value:=trim(ComboBox17.Text);
    adotemp11.ParamByName('made_method').Value:=trim(ComboBox11.Text);
    adotemp11.ParamByName('drug_freq').Value:=trim(ComboBox14.Text);
    if trystrtofloat(LabeledEdit28.Text,f_drug_num) then
      adotemp11.ParamByName('drug_num').Value:=f_drug_num
    else adotemp11.ParamByName('drug_num').Value:=null;
    adotemp11.ParamByName('unit_drug').Value:=trim(Edit1.Text);
    if trystrtofloat(LabeledEdit29.Text,f_unit_price) then
      adotemp11.ParamByName('unit_price').Value:=f_unit_price
    else adotemp11.ParamByName('unit_price').Value:=null;
    adotemp11.ParamByName('item_advice').Value:=trim(LabeledEdit31.Text);
    if trystrtoint(Label17.Caption,i_item_unid) then
      adotemp11.ParamByName('item_unid').Value:=i_item_unid
    else adotemp11.ParamByName('item_unid').Value:=null;
    if trystrtoint(LabeledEdit35.Text,i_drug_days) then
      adotemp11.ParamByName('drug_days').Value:=i_drug_days
    else adotemp11.ParamByName('drug_days').Value:=null;
    adotemp11.ParamByName('prescription_no').Value:=RadioGroup2.ItemIndex;
    try
      adotemp11.ExecSQL;
      iUnid:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
    except
      on E:Exception do
      begin
        adotemp11.Free;
        MESSAGEDLG('������ҩʧ��!'+E.Message,mtError,[mbOK],0);
        exit;
      end;
    end;
    adotemp11.Free;
  end;

  MyQuery7.Refresh;
  MyQuery7.Locate('Unid',iUnid,[loCaseInsensitive]);
  
  ClearZhongYaoEdit;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString);
end;

procedure TfrmMain.N22Click(Sender: TObject);
begin
  if not MyQuery7.Active then exit;
  if MyQuery7.RecordCount<=0 then exit;

  Panel33.Caption:='�޸�';

  Label17.Caption:=MyQuery7.fieldbyname('item_unid').AsString;
  LabeledEdit21.Text:=MyQuery7.fieldbyname('��Ŀ').AsString;
  LabeledEdit25.Text:=MyQuery7.fieldbyname('���').AsString;
  ComboBox17.Text:=MyQuery7.fieldbyname('�÷�').AsString;
  ComboBox11.Text:=MyQuery7.fieldbyname('�巨').AsString;
  LabeledEdit31.Text:=MyQuery7.fieldbyname('��Ŀ����').AsString;

  LabeledEdit26.Text:=MyQuery7.fieldbyname('����').AsString;
  ComboBox16.Text:=MyQuery7.fieldbyname('������λ').AsString;
  ComboBox14.Text:=MyQuery7.fieldbyname('Ƶ��').AsString;
  LabeledEdit35.Text:=MyQuery7.fieldbyname('����').AsString;
  Edit1.Text:=MyQuery7.fieldbyname('������λ').AsString;
  
  //���������ۻ�������ؼ�(������������λ��Ƶ�Ρ�������������λ)��change�¼�Ӱ��,�ʷ������
  LabeledEdit28.Text:=MyQuery7.fieldbyname('����').AsString;
  LabeledEdit29.Text:=MyQuery7.fieldbyname('����').AsString;
end;

procedure TfrmMain.N24Click(Sender: TObject);
begin
  DeletePrescriptionDetail(Sender,7);
end;

procedure TfrmMain.N45Click(Sender: TObject);
begin
  DeleteSheetPrescription(Sender,7);
end;

procedure TfrmMain.BitBtn9Click(Sender: TObject);
begin
  frmDgnsBigTemp.Show;
end;

procedure TfrmMain.SpeedButton5Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  if (MessageDlg('ȷʵҪɾ���þ����¼��',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;

  MyQuery2.Delete;
end;

procedure TfrmMain.UpdateMyQuery8(const AifCompleted:integer);
begin
  if not MyQuery1.Active then exit;
  if MyQuery1.RecordCount=0 then exit;

  MyQuery8.Close;
  MyQuery8.SQL.Clear;
  MyQuery8.SQL.Text:='select item_type as ��Ŀ����,prescription_no as �������,item_name as ��Ŀ����,group_num as ���,dosage as ����,unit_dosage as ������λ,'+
                     'made_method as �巨,use_method as �÷�,if_skin_test as Ƥ��,drug_freq as Ƶ��,'+
                     'drug_days as ����,drug_num as ����,unit_drug as ������λ,'+
                     'item_value as ���,'+
                     'unit_price as ����,drug_num*unit_price as ���,'+
                     'hosp_inje_num as Ժע����,item_advice as ��Ŀ����,body_position as ��λ,'+
                     'ts.remark as ��ע,ts.creat_date_time as ����ʱ��,ts.unid,tm_unid,item_unid '+
                     ' from '+
                     ifThen(AifCompleted=0,'treat_slave','treat_slave_bak')+
                     ' as ts '+
                     //Ҫ��ģ���������͡����������ƾ���Ψһ�ԣ������SQL����Ľ�����ظ�
                     ' left JOIN commcode cc on cc.TypeName=''ģ����������'' AND cc.name=item_type '+
                     ' where tm_unid='+MyQuery1.fieldbyname('unid').AsString+
                     ' order by cc.code,prescription_no,group_num';
  MyQuery8.Open;
end;

procedure TfrmMain.MyQuery1AfterScroll(DataSet: TDataSet);
begin
  UpdateMyQuery8(DataSet.fieldbyname('ifCompleted').AsInteger);
end;

procedure TfrmMain.MyQuery8AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid8.Columns.Items[0].Width:=55;//��Ŀ����
  dbgrid8.Columns.Items[1].Width:=55;//�������
  dbgrid8.Columns.Items[2].Width:=60;//��Ŀ����
  dbgrid8.Columns.Items[3].Width:=30;//���
  dbgrid8.Columns.Items[4].Width:=30;//����
  dbgrid8.Columns.Items[5].Width:=55;//������λ
  dbgrid8.Columns.Items[6].Width:=30;//�巨
  dbgrid8.Columns.Items[7].Width:=30;//�÷�
  dbgrid8.Columns.Items[8].Width:=30;//Ƥ��
  dbgrid8.Columns.Items[9].Width:=30;//Ƶ��
  dbgrid8.Columns.Items[10].Width:=30;//����
  dbgrid8.Columns.Items[11].Width:=30;//����
  dbgrid8.Columns.Items[12].Width:=55;//������λ
  dbgrid8.Columns.Items[13].Width:=100;//���
  dbgrid8.Columns.Items[14].Width:=30;//����
  dbgrid8.Columns.Items[15].Width:=50;//���
  dbgrid8.Columns.Items[16].Width:=55;//Ժע����
  dbgrid8.Columns.Items[17].Width:=55;//��Ŀ����
  dbgrid8.Columns.Items[18].Width:=30;//��λ
  dbgrid8.Columns.Items[19].Width:=30;//��ע
  dbgrid8.Columns.Items[20].Width:=135;//����ʱ��
end;

procedure TfrmMain.ClearJianYanEdit;
begin
    LabeledEdit27.Clear;
    LabeledEdit30.Text:=inttostr(g_jianyan_group_num+1);
    LabeledEdit32.Clear;
    ComboBox18.Text:='';
    LabeledEdit33.Clear;
    LabeledEdit34.Clear;

    if LabeledEdit27.CanFocus then LabeledEdit27.SetFocus;
end;

procedure TfrmMain.UpdateMyQuery9;
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount=0 then exit;

  MyQuery9.Close;
  MyQuery9.SQL.Clear;
  MyQuery9.SQL.Text:='select item_name as ��Ŀ,group_num as ���,'+
                     'drug_num as ����,unit_drug as ������λ,unit_price as ����,drug_num*unit_price as ���,'+
                     'item_advice as ��Ŀ����,creat_date_time as ����ʱ��,unid,tm_unid,item_unid '+
                     ' from treat_slave '+
                     ' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type=''����'' order by group_num';
  MyQuery9.Open;
end;

procedure TfrmMain.BitBtn10Click(Sender: TObject);
var
  adotemp11,adotemp12:TMyQuery;
  sqlstr:string;
  iUnid,i_jianyan_group_num,i_drug_num:integer;
  f_unit_price:single;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if LabeledEdit27.Text='' then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;
  if not MyQuery9.Active then exit;

  if Panel35.Caption='�޸�' then
  begin
    iUnid:=MyQuery9.fieldbyname('unid').AsInteger;

    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;

    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:=' Update treat_slave  '+
    '  set item_name=:item_name,group_num=:group_num,'+
    ' drug_num=:drug_num,unit_drug=:unit_drug,unit_price=:unit_price,item_advice=:item_advice  '+
    '  Where    Unid=:Unid ';
    adotemp12.ParamByName('item_name').Value:=trim(LabeledEdit27.Text);
    if trystrtoint(LabeledEdit30.Text,i_jianyan_group_num) then
      adotemp12.ParamByName('group_num').Value:=i_jianyan_group_num
    else adotemp12.ParamByName('group_num').Value:=null;
    if trystrtoint(LabeledEdit32.Text,i_drug_num) then
      adotemp12.ParamByName('drug_num').Value:=i_drug_num
    else adotemp12.ParamByName('drug_num').Value:=null;
    adotemp12.ParamByName('unit_drug').Value:=trim(ComboBox18.Text);
    if trystrtofloat(LabeledEdit33.Text,f_unit_price) then
      adotemp12.ParamByName('unit_price').Value:=f_unit_price
    else adotemp12.ParamByName('unit_price').Value:=null;
    adotemp12.ParamByName('item_advice').Value:=trim(LabeledEdit34.Text);
    adotemp12.ParamByName('unid').Value:=iUnid;
    adotemp12.ExecSQL;
    adotemp12.Free;
    
    Panel35.Caption:='����';
  end else
  begin
    if not MyQuery2.Active then exit;
    if MyQuery2.RecordCount<=0 then exit;
    
    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=DM.MyConnection1;

    sqlstr:='Insert into treat_slave ('+
                        ' item_type,tm_unid,item_name,group_num,drug_num,unit_drug,unit_price,item_advice) values ('+
                        ' :item_type,:tm_unid,:item_name,:group_num,:drug_num,:unit_drug,:unit_price,:item_advice) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    adotemp11.ParamByName('item_type').Value:='����';
    adotemp11.ParamByName('tm_unid').Value:=MyQuery2.fieldbyname('unid').AsInteger;
    adotemp11.ParamByName('item_name').Value:=trim(LabeledEdit27.Text);
    if trystrtoint(LabeledEdit30.Text,i_jianyan_group_num) then
    begin
      adotemp11.ParamByName('group_num').Value:=i_jianyan_group_num;
      g_jiancha_group_num:=i_jianyan_group_num;
    end else adotemp11.ParamByName('group_num').Value:=null;
    if trystrtoint(LabeledEdit32.Text,i_drug_num) then
      adotemp11.ParamByName('drug_num').Value:=i_drug_num
    else adotemp11.ParamByName('drug_num').Value:=null;
    adotemp11.ParamByName('unit_drug').Value:=trim(ComboBox18.Text);
    if trystrtofloat(LabeledEdit33.Text,f_unit_price) then
      adotemp11.ParamByName('unit_price').Value:=f_unit_price
    else adotemp11.ParamByName('unit_price').Value:=null;
    adotemp11.ParamByName('item_advice').Value:=trim(LabeledEdit34.Text);
    try
      adotemp11.ExecSQL;
      iUnid:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
    except
      on E:Exception do
      begin
        adotemp11.Free;
        MESSAGEDLG('��������ʧ��!'+E.Message,mtError,[mbOK],0);
        exit;
      end;
    end;
    adotemp11.Free;
  end;

  MyQuery9.Refresh;
  MyQuery9.Locate('Unid',iUnid,[loCaseInsensitive]);
  
  ClearJianYanEdit;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString);
end;

procedure TfrmMain.MyQuery9AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid9.Columns.Items[0].Width:=135;
  dbgrid9.Columns.Items[1].Width:=30;
  dbgrid9.Columns.Items[2].Width:=30;
  dbgrid9.Columns.Items[3].Width:=55;
  dbgrid9.Columns.Items[4].Width:=52;//����
  dbgrid9.Columns.Items[5].Width:=52;//���
  dbgrid9.Columns.Items[6].Width:=120;//��Ŀ����
  dbgrid9.Columns.Items[7].Width:=135;//����ʱ��
end;

procedure TfrmMain.Panel35DblClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption='�޸�' then
  begin
    (Sender as TPanel).Caption:='����';

    ClearJianYanEdit;
  end;
end;

procedure TfrmMain.LabeledEdit27KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.ifAbetChineseChar:=true;
  tmpADOLYGetcode.OpenStr:='select name as ����,'+
  'reserve as Ĭ��������λ,'+
  'reserve7 as ���� '+
  ' from commcode where TypeName=''������Ŀ'' ';
  tmpADOLYGetcode.InField:='code,name,pinyin,wbm';
  tmpADOLYGetcode.InValue:=tLabeledEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+tLabeledEdit(SENDER).Left+tLabeledEdit(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+tLabeledEdit(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+tLabeledEdit(SENDER).Top+tLabeledEdit(SENDER).Parent.Top+tLabeledEdit(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    tLabeledEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
    ComboBox18.Text:=tmpADOLYGetcode.OutValue[1];//������λ
    LabeledEdit33.Text:=tmpADOLYGetcode.OutValue[2];//����
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.N25Click(Sender: TObject);
begin
  if not MyQuery9.Active then exit;
  if MyQuery9.RecordCount<=0 then exit;

  Panel35.Caption:='�޸�';

  LabeledEdit27.Text:=MyQuery9.fieldbyname('��Ŀ').AsString;
  LabeledEdit30.Text:=MyQuery9.fieldbyname('���').AsString;
  LabeledEdit32.Text:=MyQuery9.fieldbyname('����').AsString;
  ComboBox18.Text:=MyQuery9.fieldbyname('������λ').AsString;
  LabeledEdit33.Text:=MyQuery9.fieldbyname('����').AsString;
  LabeledEdit34.Text:=MyQuery9.fieldbyname('��Ŀ����').AsString;
end;

procedure TfrmMain.N27Click(Sender: TObject);
begin
  DeletePrescriptionDetail(Sender,9);
end;

procedure TfrmMain.N47Click(Sender: TObject);
begin
  DeleteSheetPrescription(Sender,9);
end;

function TfrmMain.CalcZhiLiaoNum(const drug_freq,drug_days:string): integer;
var
  s1:string;
  i1,i2:integer;
begin
  Result:=0;
  s1:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select Reserve5 from commcode where TypeName=''��ҩƵ��'' AND name='''+drug_freq+''' LIMIT 1');
  if not trystrtoint(s1,i1) then exit;
  if not trystrtoint(drug_days,i2) then exit;
  Result:=i1*i2;
end;

procedure TfrmMain.ComboBox9Change(Sender: TObject);
begin
  LabeledEdit17.Text:=inttostr(CalcZhiLiaoNum(ComboBox9.Text,LabeledEdit16.Text));
end;

function TfrmMain.CalcXiYaoNum(const dosage, drug_freq, drug_days: string): single;
//ͨ��������Ƶ�Ρ�������������
//���ص���������������λ��ͬ
var
  s1:string;
  i1,i2:integer;
  f1:single;
begin
  Result:=0;
  s1:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select Reserve5 from commcode where TypeName=''��ҩƵ��'' AND name='''+drug_freq+''' LIMIT 1');
  if not trystrtoint(s1,i1) then exit;
  if not trystrtoint(drug_days,i2) then exit;
  if not trystrtofloat(dosage,f1) then exit;
  Result:=i1*i2*f1;
end;

procedure TfrmMain.LabeledEdit3Change(Sender: TObject);
//������������λ��Ƶ�Ρ�������������λchange�¼�
var
  f1:single;
  i1:integer;
begin
  //ʵ���ϣ�ֻ��������λ(Edit2)changeʱ����Ҫ���¼���LabeledEdit9.Text(����).�򻯴������
  LabeledEdit9.Text:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select unit_price from drug_pack where drug_unid='+Label16.Caption+' and pack_name='''+Edit2.Text+''' ');//����

  f1:=CalcXiYaoNum(LabeledEdit3.Text,ComboBox2.Text,LabeledEdit7.Text);
  i1:=UnitsConverterMethod(Label16.Caption,ComboBox4.Text,Edit2.Text);
  if i1<0 then LabeledEdit8.Text:=inttostr(ceil(f1/abs(i1))) else LabeledEdit8.Text:=inttostr(ceil(f1*i1));//����}
end;

procedure TfrmMain.ComboBox3Change(Sender: TObject);
//������λchange�¼�
begin
  Edit2.Text:=TComboBox(Sender).Text;
  if Edit2.CanFocus then Edit2.SetFocus;
end;

function TfrmMain.UnitsConverterMethod(const ADrug_Unid,AUnit_Dosage,AUnit_Fee:String):integer;
//ADrug_Unid:������λ
//AUnit_Fee//�շѵ�λ
//return 0:û�ҵ�ת����ϵ,����:ת������,����:ת������
var
  iiDown,ii1,iiUp:integer;
  s2,s3:string;
  adotemp12:TMyQuery;
begin
  Result:=0;
		
  //������λ���շѵ�λ��ͬ(����������λ��Ϊ��),��ת������Ϊ1
  if AUnit_Dosage=AUnit_Fee then begin Result:=1;exit;end;
		
  if(AUnit_Dosage='')or(AUnit_Fee='') then begin Result:=0;exit;end;

  //˼·:ͨ��������λ�����շѵ�λ,��û����ϵ
  //���²���
  iiDown := 1;
    
  s2 := AUnit_Dosage;
  while AUnit_Fee<>s2 do
  begin
    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;
    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:='select * from drug_pack where drug_Unid='+ADrug_Unid+' and Pack_Name='''+s2+''' ';
    adotemp12.Open;

    if adotemp12.RecordCount<=0 then begin adotemp12.Free;break;end;
    //2021-11-12
    if adotemp12.fieldbyname('Pack_Name').AsString=adotemp12.fieldbyname('Son_Pack_Name').AsString then begin adotemp12.Free;break;end;
        	
    s2 := adotemp12.fieldbyname('Son_Pack_Name').AsString;
    if s2='' then begin adotemp12.Free;break;end;
    ii1 := adotemp12.fieldbyname('Parent_num').AsInteger;
    adotemp12.Free;
    iiDown := iiDown*ii1;
  end;
    	
  if AUnit_Fee=s2 then begin Result:=iiDown;exit;end;//�ҵ�
    	
  //���ϲ���
  iiUp := -1;
  s3 := AUnit_Dosage;
  while AUnit_Fee<>s3 do
  begin			
    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;
    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:='select * from drug_pack where drug_Unid='+ADrug_Unid+' and Son_Pack_Name='''+s3+''' ';
    adotemp12.Open;

    if adotemp12.RecordCount<=0 then begin adotemp12.Free;break;end;
    //2021-11-12
    if adotemp12.fieldbyname('Pack_Name').AsString=adotemp12.fieldbyname('Son_Pack_Name').AsString then begin adotemp12.Free;break;end;
        	
    s3 := adotemp12.fieldbyname('Pack_Name').AsString;
    ii1 := adotemp12.fieldbyname('Parent_num').AsInteger;
    iiUp := iiUp*ii1;
  end;
    	
  if AUnit_Fee=s3 then begin Result:=iiUp;exit;end;//�ҵ�
end;
  
procedure TfrmMain.ComboBox15Change(Sender: TObject);
begin
  Edit1.Text:=TComboBox(Sender).Text;
  if Edit1.CanFocus then Edit1.SetFocus;
end;

procedure TfrmMain.LabeledEdit26Change(Sender: TObject);
//������������λ��Ƶ�Ρ�������������λchange�¼�
var
  f1:single;
  i1:integer;
begin
  //ʵ���ϣ�ֻ��������λ(Edit1)changeʱ����Ҫ���¼���LabeledEdit29.Text(����).�򻯴������
  LabeledEdit29.Text:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select unit_price from drug_pack where drug_unid='+Label17.Caption+' and pack_name='''+Edit1.Text+''' ');//����

  f1:=CalcXiYaoNum(LabeledEdit26.Text,ComboBox14.Text,LabeledEdit35.Text);
  i1:=UnitsConverterMethod(Label17.Caption,ComboBox16.Text,Edit1.Text);
  if i1<0 then LabeledEdit28.Text:=inttostr(ceil(f1/abs(i1))) else LabeledEdit28.Text:=inttostr(ceil(f1*i1));//����}
end;

procedure TfrmMain.N28Click(Sender: TObject);
var
  adotemp12:TMyQuery;
  if_succ:integer;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if (MessageDlg('�Ƿ����Ŀǰ�����Ĺ������⽫�ѵ�ǰ��ȫ��������Ϊ��ʷ��¼����?', mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then exit;

  //Ϊ������ܣ���ȡ�ֿ�ֱ�(�˴�Ϊˮƽ���)
  IF NOT MyQuery2.Active THEN EXIT;
  IF MyQuery2.RecordCount<=0 THEN EXIT;

  adotemp12:=TMyQuery.Create(nil);
  adotemp12.Connection:=DM.MyConnection1;
  adotemp12.Close;
  adotemp12.SQL.Clear;
  adotemp12.SQL.Add(' CALL p_completion_job('''+operator_name+''',@if_succ)');
  adotemp12.SQL.Add(' ;SELECT @if_succ as if_succ');
  adotemp12.Open;
  if_succ:=adotemp12.fieldbyname('if_succ').AsInteger;
  adotemp12.Free;

  if if_succ=-1 then Application.MessageBox('�������������쳣!', '��Ϣ��ʾ', MB_OK + MB_ICONHAND + MB_DEFBUTTON1 + MB_APPLMODAL);

  MyQuery2.Refresh;
end;

procedure TfrmMain.PageControl1Change(Sender: TObject);
begin
  ShowTreatSlave;
end;

procedure TfrmMain.ShowTreatSlave;
var
  adotemp12:TMyQuery;
begin
  if PageControl1.ActivePageIndex=0 then//����
  begin
    LabeledEdit4.Clear;//����
    LabeledEdit5.Clear;//����ѹ
    LabeledEdit6.Clear;//����ѹ
    LabeledEdit12.Clear;//����
    Memo1.Clear;//����
    Memo2.Clear;//��Ҫ��ʷ
    Memo3.Clear;//���
    Memo4.Clear;//�������
    Memo5.Clear;//����
    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;
    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:='select * from treat_slave Where tm_unid='+ifThen(MyQuery2.fieldbyname('unid').AsString='','-1',MyQuery2.fieldbyname('unid').AsString)+' and item_type in (''����'',''����ѹ'',''����ѹ'',''����'',''����'',''��Ҫ��ʷ'',''���'',''�������'',''����'')';
    adotemp12.Open;
    while not adotemp12.Eof do
    begin
      if adotemp12.FieldByName('item_type').AsString='����' then LabeledEdit4.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='����ѹ' then LabeledEdit5.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='����ѹ' then LabeledEdit6.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='����' then LabeledEdit12.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='����' then Memo1.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='��Ҫ��ʷ' then Memo2.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='���' then Memo3.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='�������' then Memo4.Text:=adotemp12.FieldByName('item_value').AsString;
      if adotemp12.FieldByName('item_type').AsString='����' then Memo5.Text:=adotemp12.FieldByName('item_value').AsString;
      adotemp12.Next;
    end;
    adotemp12.Free;//��ʱ23ms
    UpdateMyQuery4;//��ʱ40ms
  end;

  if PageControl1.ActivePageIndex=1 then//��ҩ
    UpdateMyQuery3(RadioGroup1.ItemIndex);//��ʱ45ms
  if PageControl1.ActivePageIndex=2 then//��ҩ
    UpdateMyQuery7(RadioGroup2.ItemIndex);//��ʱ40ms
  if PageControl1.ActivePageIndex=3 then//����
    UpdateMyQuery5;//��ʱ31ms
  if PageControl1.ActivePageIndex=4 then//����
    UpdateMyQuery9;//��ʱ16ms
  if PageControl1.ActivePageIndex=5 then//���
    UpdateMyQuery6;
  if PageControl1.ActivePageIndex=6 then//��ʷ�����¼
    UpdateMyQuery1;//��ʱ236ms
end;

procedure TfrmMain.N30Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;

  frmCommQuery.ShowModal;
end;

procedure TfrmMain.SpeedButton6Click(Sender: TObject);
var
  sUnid,sAudit_Doctor:string;
begin
  if not ifhaspower(sender,operator_id) then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;

  sUnid:=MyQuery2.fieldbyname('unid').AsString;//��ֹ�����ӡ�����Ͻ�����Ƶ���һ��������Ϣ�ϡ���д����ǰ��
  sAudit_Doctor:=trim(MyQuery2.FieldByName('�����').AsString);

  if not ifAutoCheck then  //��ӡǰҪ����Ƿ��ѱ����
  begin
    if sAudit_Doctor='' then
    begin
      MessageBox(Handle, '������ˣ�', 'ϵͳ��ʾ', MB_ICONASTERISK);
      exit;
    end;
  end;

  if not frxReport1.LoadFromFile(ExtractFilePath(application.ExeName)+'report_psp.fr3') then
  begin
    showmessage('����Ĭ�ϴ�ӡģ��report_psp.fr3ʧ��');
    exit;
  end;

  mq_master.Close;
  mq_master.SQL.Clear;
  mq_master.SQL.Text:='select tm.*,'+
    '(SELECT GROUP_CONCAT(ts.item_name SEPARATOR '';'') FROM treat_slave ts WHERE ts.item_type=''���'' and ts.tm_unid=tm.unid) as diagnose '+
    'from treat_master tm where tm.unid='+sUnid;
  mq_master.Open;
  if mq_master.RecordCount<>1 then exit;
  
  mq_slave.Close;
  mq_slave.SQL.Clear;
  mq_slave.SQL.Text:='select ts.*,'+
    ' dm.min_content, '+
    ' CONCAT(ts.item_type,IFNULL(ts.prescription_no,'''')) as GroupCondition,'+
    ' (select pack_name from drug_pack where drug_unid=ts.item_unid and unit_min_content=1 LIMIT 1) as unit_min_content '+
    ' from treat_slave ts '+
    ' left join drug_manage dm on dm.unid=ts.item_unid '+
    ' where ts.tm_unid='+sUnid+
    ' and ts.item_type not in (''����'',''����ѹ'',''����ѹ'',''����'',''����'',''��Ҫ��ʷ'',''���'',''�������'',''����'',''���'') '+
    ' order by ts.item_type,prescription_no,ts.group_num ';
  mq_slave.Open;
  if mq_slave.RecordCount<=0 then exit;

  if ifAutoCheck and(sAudit_Doctor='') then
  begin
    ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_master set audit_doctor='''+operator_name+''',audit_date=NOW() where unid='+sUnid);
    MyQuery2.Refresh;
  end;

  //�������ҩtreat_slave��¼Ϊ0,��Pages[1](Page_No_Chinese_Medicine)����ʾ
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+sUnid+' and item_type not in (''��ҩ'',''����'',''����ѹ'',''����ѹ'',''����'',''����'',''��Ҫ��ʷ'',''���'',''�������'',''����'',''���'') LIMIT 1'))<=0 then
    frxReport1.Pages[1].Visible := False;//������1��ʼ
    
  //�����ҩtreat_slave��¼Ϊ0,��Pages[2](Page_Chinese_Medicine)����ʾ
  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+sUnid+' and item_type=''��ҩ'' LIMIT 1'))<=0 then
    frxReport1.Pages[2].Visible := False;//������1��ʼ

  frxReport1.ShowReport;
end;

procedure TfrmMain.LabeledEdit4Exit(Sender: TObject);
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;

  SaveMedicalRecord(Sender);
end;

procedure TfrmMain.SaveMedicalRecord(Sender: TObject);
//���没��
var
  ss:string;
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;

  //TCustomEdit��TLabeledEdit��TMemo�Ĺ�ͬ����
  if TCustomEdit(Sender).Name='LabeledEdit4' then ss:='����';
  if TCustomEdit(Sender).Name='LabeledEdit5' then ss:='����ѹ';
  if TCustomEdit(Sender).Name='LabeledEdit6' then ss:='����ѹ';
  if TCustomEdit(Sender).Name='LabeledEdit12' then ss:='����';
  if TCustomEdit(Sender).Name='Memo1' then ss:='����';
  if TCustomEdit(Sender).Name='Memo2' then ss:='��Ҫ��ʷ';
  if TCustomEdit(Sender).Name='Memo3' then ss:='���';
  if TCustomEdit(Sender).Name='Memo4' then ss:='�������';
  if TCustomEdit(Sender).Name='Memo5' then ss:='����';

  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type='''+ss+''' LIMIT 1'))<=0 then
  begin
    if trim(TCustomEdit(Sender).Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'insert into treat_slave (tm_unid,item_type,item_value) values ('+MyQuery2.fieldbyname('unid').AsString+','''+ss+''','''+TCustomEdit(Sender).Text+''')');
    end;
  end else
  begin
    if trim(TCustomEdit(Sender).Text)<>'' then
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'update treat_slave set item_value='''+TCustomEdit(Sender).Text+''' where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type='''+ss+''' ');
    end else
    begin
      ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and item_type='''+ss+''' ');
    end;
  end;
end;

procedure TfrmMain.N34Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if not MyQuery4.Active then exit;
  if MyQuery4.RecordCount<=0 then exit;

  if (MessageDlg('ȷʵҪɾ���ü�¼��',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;

  MyQuery4.Delete;
  
  MyQuery2.Refresh;
end;

procedure TfrmMain.N32Click(Sender: TObject);
begin
  if not MyQuery4.Active then exit;
  if MyQuery4.RecordCount<=0 then exit;

  Panel38.Caption:='�޸�';

  ComboBox6.Text:=MyQuery4.fieldbyname('���').AsString;
  ComboBox7.Text:=MyQuery4.fieldbyname('��Ͻ���').AsString;
end;

procedure TfrmMain.Panel38DblClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption='�޸�' then
  begin
    (Sender as TPanel).Caption:='����';

    ComboBox6.Text:='';
    ComboBox7.Text:='';
    if ComboBox6.CanFocus then ComboBox6.SetFocus;
  end;
end;

{procedure TfrmMain.ComboBox14KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//��ҩƵ�ε�KeyDown�¼�
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name from commcode where typename=''��ҩƵ��'' ';
  tmpADOLYGetcode.InField:='code,name,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;//}
  //tmpADOLYGetcode.ShowY:=CoolBar1.Height+Panel1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  {if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;//}

procedure TfrmMain.ComboBox5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''�÷�'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox17KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''�÷�'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.GetCodePos:=gcAll;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''���õ�λ'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox16KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.GetCodePos:=gcAll;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''���õ�λ'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox10KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.GetCodePos:=gcAll;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''���õ�λ'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox18KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.GetCodePos:=gcAll;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''���õ�λ'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox12KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.GetCodePos:=gcAll;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''���õ�λ'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox11KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''�巨'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox8KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name from commcode where typename=''���岿λ'' ';
  tmpADOLYGetcode.InField:='code,name,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.ComboBox13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name from commcode where typename=''���岿λ'' ';
  tmpADOLYGetcode.InField:='code,name,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TComboBox(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TComboBox(SENDER).Top+TComboBox(SENDER).Parent.Top+TComboBox(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='SCSYDW' then Value:=SCSYDW;
end;

procedure TfrmMain.N36Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  frmSaveAsTemp.ShowModal;
end;

procedure TfrmMain.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.GetCodePos:=gcAll;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''���õ�λ'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TEdit(SENDER).Left+TEdit(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TEdit(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TEdit(SENDER).Top+TEdit(SENDER).Parent.Top+TEdit(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.GetCodePos:=gcAll;
  tmpADOLYGetcode.OpenStr:='select name,code from commcode where typename=''���õ�λ'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TEdit(sender).Text;
  tmpADOLYGetcode.ShowX:=GroupBox2.Width+left+TEdit(SENDER).Left+TEdit(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=CoolBar1.Height+TEdit(SENDER).Height+top+22{��ǰ����������߶�}+21{��ǰ����˵��߶�}+10{�����߶�}+TEdit(SENDER).Top+TEdit(SENDER).Parent.Top+TEdit(SENDER).Parent.Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TEdit(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmMain.LabeledEdit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  adotemp12:TMyQuery;
  i_group_num:integer;  
begin
  if key<>13 then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;
  if not trystrtoint(TLabeledEdit(Sender).Text,i_group_num) then exit;

  adotemp12:=TMyQuery.Create(nil);
  adotemp12.Connection:=DM.MyConnection1;
  adotemp12.Close;
  adotemp12.SQL.Clear;
  adotemp12.SQL.Text:='select * from treat_slave Where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and group_num='+TLabeledEdit(Sender).Text+' and item_type=''��ҩ'' LIMIT 1';
  adotemp12.Open;
  if adotemp12.RecordCount<=0 then begin adotemp12.Free;exit;end;
  
  ComboBox5.Text:=adotemp12.fieldbyname('use_method').AsString;
  CheckBox1.Checked:=adotemp12.fieldbyname('if_skin_test').AsBoolean;
  ComboBox2.Text:=adotemp12.fieldbyname('drug_freq').AsString;
  LabeledEdit7.Text:=adotemp12.fieldbyname('drug_days').AsString;
  LabeledEdit10.Text:=adotemp12.fieldbyname('hosp_inje_num').AsString;
  LabeledEdit11.Text:=adotemp12.fieldbyname('item_advice').AsString;
  adotemp12.Free;
end;

procedure TfrmMain.LabeledEdit25KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  adotemp12:TMyQuery;
  i_group_num:integer;  
begin
  if key<>13 then exit;

  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;
  if not trystrtoint(TLabeledEdit(Sender).Text,i_group_num) then exit;

  adotemp12:=TMyQuery.Create(nil);
  adotemp12.Connection:=DM.MyConnection1;
  adotemp12.Close;
  adotemp12.SQL.Clear;
  adotemp12.SQL.Text:='select * from treat_slave Where tm_unid='+MyQuery2.fieldbyname('unid').AsString+' and group_num='+TLabeledEdit(Sender).Text+' and item_type=''��ҩ'' LIMIT 1';
  adotemp12.Open;
  if adotemp12.RecordCount<=0 then begin adotemp12.Free;exit;end;

  ComboBox17.Text:=adotemp12.fieldbyname('use_method').AsString;
  ComboBox11.Text:=adotemp12.fieldbyname('made_method').AsString;
  ComboBox14.Text:=adotemp12.fieldbyname('drug_freq').AsString;
  LabeledEdit35.Text:=adotemp12.fieldbyname('drug_days').AsString;
  LabeledEdit31.Text:=adotemp12.fieldbyname('item_advice').AsString;
  adotemp12.Free;
end;

procedure TfrmMain.N37Click(Sender: TObject);
begin
  if not MyQuery1.Active then exit;
  if MyQuery1.RecordCount<=0 then exit;

  Copy_Type:=StringReplace(TMenuItem(Sender).Caption,'����','',[rfReplaceAll]);
  Copy_Unid:=MyQuery1.fieldbyname('unid').AsString;
  Copy_ifCompleted:=MyQuery1.fieldbyname('ifCompleted').AsInteger;
  Copy_Creat_Date_Time:=FormatDateTime('yyyy-mm-dd',MyQuery1.fieldbyname('��������').AsDateTime);
  Copy_Patient_Name:=MyQuery1.fieldbyname('����').AsString;
end;

procedure TfrmMain.N43Click(Sender: TObject);
var
  adotemp11,adotemp22:TMyQuery;
  type_name:String;
  content:string;
  i_tm_unid,i_item_unid,i_group_num,i_drug_days:integer;
  item_unid:string;
  name:string;
  group_num:string;
  dosage:string;
  unit_dosage:string;
  use_method:string;
  drug_freq:string;
  drug_days:string;
  drug_num:string;
  unit_drug:string;
  f_dosage,f_drug_num,f_unit_price:single;
  s_unit_price:string;//����
  Insert_Identity:integer;
begin
  if not MyQuery2.Active then exit;
  if MyQuery2.RecordCount<=0 then exit;

  if(Copy_Type<>'����')and(Copy_Type<>'����')and(Copy_Type<>'����+����') then exit;
  if Copy_Unid='' then exit;
  if(Copy_ifCompleted<>0)and(Copy_ifCompleted<>1) then exit;

  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if (MessageDlg('ȷʵҪ���ơ�'+Copy_Creat_Date_Time+' '+Copy_Patient_Name+'����'+Copy_Type+'��',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;

  adotemp22:=TMyQuery.Create(nil);
  adotemp22.Connection:=DM.MyConnection1;
  adotemp22.Close;
  adotemp22.SQL.Clear;
  adotemp22.SQL.Text:='select * from '+
                     ifThen(Copy_ifCompleted=0,'treat_slave','treat_slave_bak')+
                     ' where tm_unid='+Copy_Unid;
  adotemp22.Open;
  while not adotemp22.Eof do
  begin
    type_name:=adotemp22.FieldByName('item_type').AsString;
    content:=adotemp22.fieldbyname('item_value').AsString;
    item_unid:=adotemp22.fieldbyname('item_unid').AsString;
    name:=adotemp22.fieldbyname('item_name').AsString;
    group_num:=adotemp22.fieldbyname('group_num').AsString;
    dosage:=adotemp22.fieldbyname('dosage').AsString;
    unit_dosage:=adotemp22.fieldbyname('unit_dosage').AsString;
    use_method:=adotemp22.fieldbyname('use_method').AsString;
    drug_freq:=adotemp22.fieldbyname('drug_freq').AsString;
    drug_days:=adotemp22.fieldbyname('drug_days').AsString;
    drug_num:=adotemp22.fieldbyname('drug_num').AsString;
    unit_drug:=adotemp22.fieldbyname('unit_drug').AsString;

    if((Copy_Type='����')or(Copy_Type='����+����'))and('����'=type_name) then
    begin
      Memo1.Lines.Add(content);
      SaveMedicalRecord(Memo1);
    end;
    if((Copy_Type='����')or(Copy_Type='����+����'))and('��Ҫ��ʷ'=type_name) then
    begin
      Memo2.Lines.Add(content);
      SaveMedicalRecord(Memo2);
    end;
    if((Copy_Type='����')or(Copy_Type='����+����'))and('���'=type_name) then
    begin
      Memo3.Lines.Add(content);
      SaveMedicalRecord(Memo3);
    end;
    if((Copy_Type='����')or(Copy_Type='����+����'))and('�������'=type_name) then
    begin
      Memo4.Lines.Add(content);
      SaveMedicalRecord(Memo4);
    end;
    if((Copy_Type='����')or(Copy_Type='����+����'))and('����'=type_name) then
    begin
      Memo5.Lines.Add(content);
      SaveMedicalRecord(Memo5);
    end;
    if(((Copy_Type='����')or(Copy_Type='����+����'))and('���'=type_name))
    or(((Copy_Type='����')or(Copy_Type='����+����'))and(('��ҩ'=type_name)or('��ҩ'=type_name)or('����'=type_name)or('����'=type_name)or('���'=type_name))) then
    BEGIN
      adotemp11:=TMyQuery.Create(nil);
      adotemp11.Connection:=DM.MyConnection1;
      adotemp11.Close;
      adotemp11.SQL.Clear;
      adotemp11.SQL.Add('Insert into treat_slave (tm_unid,item_Type,item_unid,item_name,group_num,dosage,unit_dosage,use_method,drug_freq,drug_days,drug_num,unit_drug,unit_price,prescription_no) values '+' (:tm_unid,:item_Type,:item_unid,:item_name,:group_num,:dosage,:unit_dosage,:use_method,:drug_freq,:drug_days,:drug_num,:unit_drug,:unit_price,:prescription_no)');
      //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
      adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
      if trystrtoint(MyQuery2.fieldbyname('unid').AsString,i_tm_unid) then
        adotemp11.ParamByName('tm_unid').Value:=i_tm_unid
      else adotemp11.ParamByName('tm_unid').Value:=null;
      adotemp11.ParamByName('item_Type').Value:=type_name;
      if trystrtoint(item_unid,i_item_unid) then
        adotemp11.ParamByName('item_unid').Value:=i_item_unid
      else adotemp11.ParamByName('item_unid').Value:=null;
      adotemp11.ParamByName('item_name').Value:=name;
      if trystrtoint(group_num,i_group_num) then
        adotemp11.ParamByName('group_num').Value:=i_group_num
      else adotemp11.ParamByName('group_num').Value:=null;
      if trystrtofloat(dosage,f_dosage) then
        adotemp11.ParamByName('dosage').Value:=f_dosage
      else adotemp11.ParamByName('dosage').Value:=null;
      adotemp11.ParamByName('unit_dosage').Value:=unit_dosage;
      adotemp11.ParamByName('use_method').Value:=use_method;
      adotemp11.ParamByName('drug_freq').Value:=drug_freq;
      if trystrtoint(drug_days,i_drug_days) then
        adotemp11.ParamByName('drug_days').Value:=i_drug_days
      else adotemp11.ParamByName('drug_days').Value:=null;
      if trystrtofloat(drug_num,f_drug_num) then
        adotemp11.ParamByName('drug_num').Value:=f_drug_num
      else adotemp11.ParamByName('drug_num').Value:=null;
      adotemp11.ParamByName('unit_drug').Value:=unit_drug;
      if '��ҩ'=type_name then adotemp11.ParamByName('prescription_no').Value:=RadioGroup1.ItemIndex
        else if '��ҩ'=type_name then adotemp11.ParamByName('prescription_no').Value:=RadioGroup2.ItemIndex
          else adotemp11.ParamByName('prescription_no').Value:=null;

      if('��ҩ'=type_name)or('��ҩ'=type_name)then
        s_unit_price:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select unit_price from drug_pack where drug_unid='+inttostr(i_item_unid)+' and pack_name='''+unit_drug+''' ')
        else if('����'=type_name)or('����'=type_name)or('���'=type_name) then
          s_unit_price:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select reserve7 from commcode where unid='+inttostr(i_item_unid));
      if trystrtofloat(s_unit_price,f_unit_price) then
        adotemp11.ParamByName('unit_price').Value:=f_unit_price
      else adotemp11.ParamByName('unit_price').Value:=null;
      adotemp11.Open;
      Insert_Identity:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
      adotemp11.Free;
      
      if((Copy_Type='����')or(Copy_Type='����+����'))and('���'=type_name)and(MyQuery4.Active) then
      begin
        MyQuery4.Refresh;
        MyQuery4.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
      end;
      if((Copy_Type='����')or(Copy_Type='����+����'))and('��ҩ'=type_name)and(MyQuery3.Active) then
      begin
        MyQuery3.Refresh;
        MyQuery3.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
      end;
      if((Copy_Type='����')or(Copy_Type='����+����'))and('��ҩ'=type_name)and(MyQuery7.Active) then
      begin
        MyQuery7.Refresh;
        MyQuery7.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
      end;
      if((Copy_Type='����')or(Copy_Type='����+����'))and('����'=type_name)and(MyQuery5.Active) then
      begin
        MyQuery5.Refresh;
        MyQuery5.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
      end;
      if((Copy_Type='����')or(Copy_Type='����+����'))and('����'=type_name)and(MyQuery9.Active) then
      begin
        MyQuery9.Refresh;
        MyQuery9.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
      end;
      if((Copy_Type='����')or(Copy_Type='����+����'))and('���'=type_name)and(MyQuery6.Active) then
      begin
        MyQuery6.Refresh;
        MyQuery6.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
      end;
    END;
    adotemp22.Next;
  end;
  adotemp22.Free;
  
  Copy_Type:='';Copy_Unid:='';Copy_ifCompleted:=-1;
end;

procedure TfrmMain.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  audit_doctor:string;
begin
 //======================��˹��Ĵ��������б仯��ɫ======================//
  if datacol=0 then
  begin
    audit_doctor:=TDBGrid(Sender).DataSource.DataSet.fieldbyname('�����').AsString;
    IF audit_doctor<>'' then
    begin
      TDBGrid(Sender).Canvas.Font.Color:=clred;
      TDBGrid(Sender).DefaultDrawColumnCell(rect,datacol,column,state);
    end;
  end;
 //==========================================================================//
end;

procedure TfrmMain.RadioGroup1Click(Sender: TObject);
begin
  //very good!���ʱ��ItemIndexû�仯�򲻻ᴥ�����¼�
  UpdateMyQuery3(TRadioGroup(Sender).ItemIndex);
end;

procedure TfrmMain.RadioGroup2Click(Sender: TObject);
begin
  //very good!���ʱ��ItemIndexû�仯�򲻻ᴥ�����¼�
  UpdateMyQuery7(TRadioGroup(Sender).ItemIndex);
end;

procedure TfrmMain.DeletePrescriptionDetail(Sender: TObject;const APrescriptionType:Integer);//ɾ��������ϸ
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  case APrescriptionType of
    3://��ҩ
    begin
      if not MyQuery3.Active then exit;
      if MyQuery3.RecordCount<=0 then exit;
    end;
    7://��ҩ
    begin
      if not MyQuery7.Active then exit;
      if MyQuery7.RecordCount<=0 then exit;
    end;
    5://����
    begin
      if not MyQuery5.Active then exit;
      if MyQuery5.RecordCount<=0 then exit;
    end;
    9://����
    begin
      if not MyQuery9.Active then exit;
      if MyQuery9.RecordCount<=0 then exit;
    end;
    6://���
    begin
      if not MyQuery6.Active then exit;
      if MyQuery6.RecordCount<=0 then exit;
    end;
  end;

  if not Check_audit_doctor then
  begin
    MessageDlg('������ˣ���Ȩ�޸�!',mtInformation,[MBOK],0);
    exit;
  end;

  //if (MessageDlg('ȷʵҪɾ���ô�����ϸ��',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;

  case APrescriptionType of
    3:MyQuery3.Delete;//��ҩ
    7:MyQuery7.Delete;//��ҩ
    5:MyQuery5.Delete;//����
    9:MyQuery9.Delete;//����
    6:MyQuery6.Delete;//���
  end;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString);
end;

procedure TfrmMain.DeleteSheetPrescription(Sender: TObject;const APrescriptionType:Integer);//ɾ�����Ŵ���
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  case APrescriptionType of
    3://��ҩ
    begin
      if not MyQuery3.Active then exit;
      if MyQuery3.RecordCount<=0 then exit;
    end;
    7://��ҩ
    begin
      if not MyQuery7.Active then exit;
      if MyQuery7.RecordCount<=0 then exit;
    end;
    5://����
    begin
      if not MyQuery5.Active then exit;
      if MyQuery5.RecordCount<=0 then exit;
    end;
    9://����
    begin
      if not MyQuery9.Active then exit;
      if MyQuery9.RecordCount<=0 then exit;
    end;
    6://���
    begin
      if not MyQuery6.Active then exit;
      if MyQuery6.RecordCount<=0 then exit;
    end;
  end;

  if not Check_audit_doctor then
  begin
    MessageDlg('������ˣ���Ȩ�޸�!',mtInformation,[MBOK],0);
    exit;
  end;

  if (MessageDlg('ȷʵҪɾ�����Ŵ�����',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;

  case APrescriptionType of
    3:while not MyQuery3.IsEmpty do MyQuery3.Delete;//��ҩ
    7:while not MyQuery7.IsEmpty do MyQuery7.Delete;//��ҩ
    5:while not MyQuery5.IsEmpty do MyQuery5.Delete;//����
    9:while not MyQuery9.IsEmpty do MyQuery9.Delete;//����
    6:while not MyQuery6.IsEmpty do MyQuery6.Delete;//���
  end;

  Panel36.Caption:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select sum(drug_num*unit_price) from treat_slave where tm_unid='+MyQuery2.fieldbyname('unid').AsString);
end;

procedure TfrmMain.SpeedButton8Click(Sender: TObject);
begin
  frmPrintTreatFlow.ShowModal;
end;

procedure TfrmMain.N4Click(Sender: TObject);
var
  ini:tinifile;
  sWeChat:String;
begin
  LYAboutBox1.ProcuctName:=Caption;
  LYAboutBox1.Version:=GetVersionLY(pchar(APPLICATION.ExeName));//�������ص�Pchar���ͻ�����ֱ�Ӹ�ֵ��string!!!
  LYAboutBox1.Copyright:='��Ȩ����,�Ͻ������룬�����';
  ini:=TINIFILE.Create(ChangeFileExt(Application.ExeName,'.ini'));
  LYAboutBox1.Comments:=ini.ReadString('Interface','companyname','�㶫�������������');
  LYAboutBox1.Author:=ini.ReadString('Interface','companytel','13710248644��QQ:46524223');
  LYAboutBox1.WebPage:=ini.ReadString('Interface','companywww','http://yklis.ys168.com');//��Ա�ʺ�:yklis;������:liu771129
  sWeChat:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select Name from CommCode where TypeName=''ϵͳ����'' and ReMark=''΢�Ź��ں�'' ');
  LYAboutBox1.WeChat:=ifThen(sWeChat='','http://weixin.qq.com/r/GDvN1Y7EmtPlrcq2924K',sWeChat);
  ini.Free;
  LYAboutBox1.Execute;
end;

end.
