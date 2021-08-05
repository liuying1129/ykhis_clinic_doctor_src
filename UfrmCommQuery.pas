unit UfrmCommQuery;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls,ADODB,StrUtils,
  FR_DSet, FR_DBSet, FR_Class, TeEngine, Series, TeeProcs, Chart,fr_chart,
  UADOLYQuery,ComObj,Jpeg, Menus,inifiles,Printers, ULYDataToExcel, MemDS,
  DBAccess, MyAccess;

type
  TfieldList=array of string;
  
type
  TfrmCommQuery = class(TForm)
    pnlCommQryTop: TPanel;
    DBGridResult: TDBGrid;
    pnlCommQryBotton: TPanel;
    BitBtnCommQry: TBitBtn;
    BitBtnCommQryClose: TBitBtn;
    DBGrid1: TDBGrid;
    Splitter1: TSplitter;
    DataSource1: TDataSource;
    frReport1: TfrReport;
    frDBDataSet2: TfrDBDataSet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn2: TBitBtn;
    LYQuery1: TADOLYQuery;
    MasterDataSource: TDataSource;
    PopupMenu1: TPopupMenu;
    Label3: TLabel;
    LYDataToExcel1: TLYDataToExcel;
    N4: TMenuItem;
    Excel1: TMenuItem;
    ADObasic: TMyQuery;
    ADOQuery1: TMyQuery;
    ADO_print: TMyQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtnCommQryClick(Sender: TObject);
    procedure BitBtnCommQryCloseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure ADObasicAfterScroll(DataSet: TDataSet);
    procedure ADObasicAfterOpen(DataSet: TDataSet);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure Excel1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

//var
//  frmCommQuery: TfrmCommQuery;

function frmCommQuery:TfrmCommQuery;    {��̬�������庯��}

implementation
uses  UDM,UfrmMain;

var
  ffrmCommQuery:TfrmCommQuery;           {���صĴ������,���رմ����ͷ��ڴ�ʱ����}

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
function frmCommQuery:TfrmCommQuery;    {��̬�������庯��}
begin
  if ffrmCommQuery=nil then ffrmCommQuery:=TfrmCommQuery.Create(application.mainform);
  result:=ffrmCommQuery;
end;

procedure TfrmCommQuery.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmCommQuery=self then ffrmCommQuery:=nil;
end;
////////////////////////////////////////////////////////////////////////////////

procedure TfrmCommQuery.BitBtnCommQryClick(Sender: TObject);
var
  sqlstr1:string;
  Save_Cursor:TCursor;
begin
  sqlstr1:='select creat_date_time as ��������,patient_name as ����,patient_sex as �Ա�,patient_age as ����,audit_doctor as �����, '+
           'patient_birthday as ��������,certificate_type as ֤������,certificate_num as ֤������,'+
           'clinic_card_num as ���ƿ���,health_care_num as ҽ������,address as סַ,work_company as ������λ,work_address as ������ַ, '+
           'if_marry as ���,native_place as ����,telephone as ��ϵ�绰,remark as ��ע,audit_date as ���ʱ��,patient_unid,unid '+
           ' from treat_master_bak order by unid desc ';

  lyquery1.MyConnection:=DM.MyConnection1;
  lyquery1.SelectString:=sqlstr1;
  lyquery1.DataBaseType:=dbtMySQL;
  if lyquery1.Execute then
  begin
    ADObasic.SQL.Text:=lyquery1.ResultSelect;
    Save_Cursor := Screen.Cursor;
    Screen.Cursor := crHourGlass;    { Show hourglass cursor }
    try
      ADObasic.Open;
    finally
      Screen.Cursor := Save_Cursor;  { Always restore to normal }
    end;
  end;
end;

procedure TfrmCommQuery.BitBtnCommQryCloseClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCommQuery.FormCreate(Sender: TObject);
begin
  ADObasic.Connection:=DM.MyConnection1;
  ADOQuery1.Connection:=DM.MyConnection1;
  ADO_PRINT.Connection:=DM.MyConnection1;
end;

procedure TfrmCommQuery.BitBtn2Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;
  dbgridresult.ReadOnly:=false;
end;

procedure TfrmCommQuery.BitBtn4Click(Sender: TObject);
begin
  if not ifhaspower(sender,operator_id) then exit;
  dbgrid1.ReadOnly:=false;
end;

procedure TfrmCommQuery.ADObasicAfterScroll(DataSet: TDataSet);
begin
  ADOQuery1.Close;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Text:='select item_type,item_name,group_num as ���,dosage as ����,unit_dosage as ������λ,'+
                     'made_method as �巨,use_method as �÷�,if_skin_test as Ƥ��,drug_freq as Ƶ��,'+
                     'drug_days as ����,drug_num as ����,unit_drug as ������λ,unit_price as ����,drug_num*unit_price as ���,'+
                     'hosp_inje_num as Ժע����,item_advice as ��Ŀ����,item_value as ���,body_position as ��λ,'+
                     'remark as ��ע,creat_date_time as ����ʱ��,unid,tm_unid,item_unid '+
                     ' from treat_slave_bak '+
                     ' where tm_unid='+ADObasic.fieldbyname('unid').AsString+
                     ' order by item_type,group_num';
  ADOQuery1.Open;
end;

procedure TfrmCommQuery.ADObasicAfterOpen(DataSet: TDataSet);
var
  i:integer;
begin
  for i :=0  to dbgridresult.Columns.Count-1 do
  begin
     dbgridresult.Columns[i].Width:=55;
     if (i=0)or(i=5)or(i=7)or(i=8)or(i=9) then dbgridresult.Columns[i].Width:=70;//�������ڣ���������,֤�����룬���ƿ���,ҽ������
  end;
end;

procedure TfrmCommQuery.ADOQuery1AfterOpen(DataSet: TDataSet);
var
  i:integer;
begin
  for i :=0  to dbgrid1.Columns.Count-1 do
  begin
     dbgrid1.Columns[i].Width:=65;
  end;
end;

procedure TfrmCommQuery.Excel1Click(Sender: TObject);
begin
  LYDataToExcel1.DataSet:= ADObasic;
  //LYDataToExcel1.ExcelTitel:=BBBT;
  LYDataToExcel1.Execute;
end;

procedure TfrmCommQuery.BitBtn3Click(Sender: TObject);
begin
//
end;

initialization
  ffrmCommQuery:=nil;
  
end.
