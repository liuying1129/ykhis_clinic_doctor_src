unit UfrmPrintTreatFlow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Buttons, frxClass, frxDBSet, DB, MemDS,
  DBAccess, MyAccess;

type
  TfrmPrintTreatFlow = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    MyQuery1: TMyQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure frxReport1GetValue(const VarName: String;
      var Value: Variant);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
function  frmPrintTreatFlow: TfrmPrintTreatFlow;{��̬�������庯��}

implementation

uses UDM;

var
  ffrmPrintTreatFlow:TfrmPrintTreatFlow;           {���صĴ������,���رմ����ͷ��ڴ�ʱ����}

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
function frmPrintTreatFlow: TfrmPrintTreatFlow;    {��̬�������庯��}
begin
  if ffrmPrintTreatFlow=nil then ffrmPrintTreatFlow:=TfrmPrintTreatFlow.Create(application.mainform);
  result:=ffrmPrintTreatFlow;
end;

procedure TfrmPrintTreatFlow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmPrintTreatFlow=self then ffrmPrintTreatFlow:=nil;
end;
////////////////////////////////////////////////////////////////////////////////

procedure TfrmPrintTreatFlow.FormShow(Sender: TObject);
begin
  DateTimePicker1.Date:=now;
  DateTimePicker2.Date:=now;
end;

procedure TfrmPrintTreatFlow.BitBtn1Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;

  if not frxReport1.LoadFromFile(ExtractFilePath(application.ExeName)+'report_treat_flow.fr3') then
  begin
    showmessage('����Ĭ�ϴ�ӡģ��report_treat_flow.fr3ʧ��');
    exit;
  end;

  //MYDAC��BUG:union all�����������һ��select,���򱨴�invalid field_type_timestamp field.length(38)��
  MyQuery1.Close;
  MyQuery1.SQL.Clear;
  MyQuery1.SQL.Text:='SELECT * FROM '+
                     '('+
                     'select tm.*,'+
                     '(SELECT GROUP_CONCAT(ts.item_name SEPARATOR '';'') FROM treat_slave ts WHERE ts.item_type=''���'' and ts.tm_unid=tm.unid) as ���,'+
                     '(SELECT ts.item_value FROM treat_slave ts WHERE ts.item_type=''����'' and ts.tm_unid=tm.unid LIMIT 1) as ���� '+
                     ' from treat_master tm '+
                     ' WHERE DATE_FORMAT(tm.creat_date_time,''%Y-%m-%d'')>='''+FormatDateTime('YYYY-MM-DD',DateTimePicker1.Date)+''' '+
                     ' AND DATE_FORMAT(tm.creat_date_time,''%Y-%m-%d'')<='''+FormatDateTime('YYYY-MM-DD',DateTimePicker2.Date)+''' '+
                     ' AND tm.audit_doctor<>'''' '+//good!�÷�ʽ�ܽ�null��''һ���ų�
                     ' UNION ALL '+
                     'select tm.*,'+
                     '(SELECT GROUP_CONCAT(ts.item_name SEPARATOR '';'') FROM treat_slave_bak ts WHERE ts.item_type=''���'' and ts.tm_unid=tm.unid) as ���,'+
                     '(SELECT ts.item_value FROM treat_slave_bak ts WHERE ts.item_type=''����'' and ts.tm_unid=tm.unid LIMIT 1) as ���� '+
                     ' from treat_master_bak tm '+
                     ' WHERE DATE_FORMAT(tm.creat_date_time,''%Y-%m-%d'')>='''+FormatDateTime('YYYY-MM-DD',DateTimePicker1.Date)+''' '+
                     ' AND DATE_FORMAT(tm.creat_date_time,''%Y-%m-%d'')<='''+FormatDateTime('YYYY-MM-DD',DateTimePicker2.Date)+''' '+
                     ' AND tm.audit_doctor<>'''' '+//good!�÷�ʽ�ܽ�null��''һ���ų�
                     ') temp_t1 order by unid';
  MyQuery1.Open;

  frxReport1.ShowReport;
end;

procedure TfrmPrintTreatFlow.frxReport1GetValue(const VarName: String;
  var Value: Variant);
begin
  if VarName='��ʼ����' then Value:=DateTimePicker1.Date;
  if VarName='��������' then Value:=DateTimePicker2.Date;
  if VarName='SCSYDW' then Value:=SCSYDW;
end;

procedure TfrmPrintTreatFlow.FormCreate(Sender: TObject);
begin
  MyQuery1.Connection:=DM.MyConnection1;
end;

procedure TfrmPrintTreatFlow.BitBtn2Click(Sender: TObject);
begin
  close;
end;

initialization
  ffrmPrintTreatFlow:=nil;
  
end.
