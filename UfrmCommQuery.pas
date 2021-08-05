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

function frmCommQuery:TfrmCommQuery;    {动态创建窗体函数}

implementation
uses  UDM,UfrmMain;

var
  ffrmCommQuery:TfrmCommQuery;           {本地的窗体变量,供关闭窗体释放内存时调用}

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
function frmCommQuery:TfrmCommQuery;    {动态创建窗体函数}
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
  sqlstr1:='select creat_date_time as 创建日期,patient_name as 姓名,patient_sex as 性别,patient_age as 年龄,audit_doctor as 审核者, '+
           'patient_birthday as 出生日期,certificate_type as 证件类型,certificate_num as 证件号码,'+
           'clinic_card_num as 诊疗卡号,health_care_num as 医保卡号,address as 住址,work_company as 工作单位,work_address as 工作地址, '+
           'if_marry as 婚否,native_place as 籍贯,telephone as 联系电话,remark as 备注,audit_date as 审核时间,patient_unid,unid '+
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
  ADOQuery1.SQL.Text:='select item_type,item_name,group_num as 组号,dosage as 用量,unit_dosage as 用量单位,'+
                     'made_method as 煎法,use_method as 用法,if_skin_test as 皮试,drug_freq as 频次,'+
                     'drug_days as 天数,drug_num as 数量,unit_drug as 数量单位,unit_price as 单价,drug_num*unit_price as 金额,'+
                     'hosp_inje_num as 院注次数,item_advice as 项目嘱托,item_value as 结果,body_position as 部位,'+
                     'remark as 备注,creat_date_time as 创建时间,unid,tm_unid,item_unid '+
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
     if (i=0)or(i=5)or(i=7)or(i=8)or(i=9) then dbgridresult.Columns[i].Width:=70;//创建日期，出生日期,证件号码，诊疗卡号,医保卡号
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
