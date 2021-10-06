unit UfrmDgnsBigTemp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, DB, ADODB, Buttons,
  ActnList, UfrmLocateRecord,inifiles, MemDS, DBAccess, MyAccess,
  ADOLYGetcode,Math, DosMove;

type
  TfrmDgnsBigTemp = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    tvWareHouse: TTreeView;
    DataSource1: TDataSource;
    BitBtn6: TBitBtn;
    ActionList1: TActionList;
    ActAdd: TAction;
    ActSave: TAction;
    ActDel: TAction;
    ActEsc: TAction;
    ActSearch: TAction;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter2: TSplitter;
    ADOQuery1: TMyQuery;
    DosMove1: TDosMove;
    Memo1: TMemo;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure tvWareHouseChange(Sender: TObject; Node: TTreeNode);
    procedure FormCreate(Sender: TObject);
    procedure ADOQuery1AfterOpen(DataSet: TDataSet);
    procedure BitBtn6Click(Sender: TObject);
    procedure ADOQuery1AfterScroll(DataSet: TDataSet);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure tvWareHouseDeletion(Sender: TObject; Node: TTreeNode);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateAdoquery1(const ADir_Unid:string);
    procedure UpdatetvWareHouse;
    procedure UpdateEdit;
    procedure ClearEdit;
    procedure SingleInsertTemp(const AUnid:String);
  public
    { Public declarations }
  end;

//var
function  frmDgnsBigTemp: TfrmDgnsBigTemp;

implementation

uses UDM, UfrmMain;
var
  ffrmDgnsBigTemp: TfrmDgnsBigTemp;

{$R *.dfm}
////////////////////////////////////////////////////////////////////////////////
function  frmDgnsBigTemp: TfrmDgnsBigTemp;  {��̬�������庯��}
begin
  if ffrmDgnsBigTemp=nil then ffrmDgnsBigTemp:=TfrmDgnsBigTemp.Create(application.mainform);
  result:=ffrmDgnsBigTemp;
end;

procedure TfrmDgnsBigTemp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmDgnsBigTemp=self then ffrmDgnsBigTemp:=nil;
end;
////////////////////////////////////////////////////////////////////////////////

procedure TfrmDgnsBigTemp.UpdatetvWareHouse;
var
  adotemp11:TMyQuery;
  Node: TTreeNode;
  DescriptType:PDescriptType;
begin
  tvWareHouse.Items.Clear;
  adotemp11:=TMyQuery.Create(nil);
  adotemp11.Connection:=dm.MyConnection1;

  adotemp11.Close;
  adotemp11.SQL.Clear;
  adotemp11.SQL.Text:='select * from temp_dir where IFNULL(up_unid,-1)<0 order by sort_num ';
  adotemp11.Open;
  while not adotemp11.Eof do
  begin
    new(DescriptType);//Ϊָ������ڴ�
    DescriptType^.unid:=adotemp11.fieldbyname('unid').AsString;
    DescriptType^.UpUnid:=adotemp11.fieldbyname('up_unid').AsString;
    DescriptType^.SortNum:=adotemp11.fieldbyname('sort_num').AsString;
    Node:=tvWareHouse.Items.AddChildObject(nil,adotemp11.fieldbyname('name').AsString,DescriptType);//.Add(nil,'['+adotemp11.fieldbyname('Id').AsString+']'+adotemp11.fieldbyname('name').AsString);

    if HasSubInDbf(node) then Node.HasChildren := True;//�ж��Ƿ����ӽڵ㣬���������Ƿ���ʾǰ���'+'

    adotemp11.Next;
  end;
  adotemp11.free;
end;

procedure TfrmDgnsBigTemp.FormShow(Sender: TObject);
var
  configini:tinifile;
begin
  CONFIGINI:=TINIFILE.Create(ChangeFileExt(Application.ExeName,'.ini'));
  Panel2.Width:=configini.ReadInteger('Interface','Panel2Width',211);
  configini.Free;

  UpdatetvWareHouse;

  if tvWareHouse.Selected = nil then
  begin
    exit;
  end;

  UpdateAdoquery1(PDescriptType(tvWareHouse.Selected.data)^.unid);

  updateEdit;
end;

procedure TfrmDgnsBigTemp.tvWareHouseChange(Sender: TObject; Node: TTreeNode);
var
  adotemp11:TMyQuery;
  ChildNode:ttreenode;
  DescriptType:PDescriptType;
begin
  node.DeleteChildren;//����ڵ��µ������ӽڵ�

  adotemp11:=TMyQuery.Create(nil);
  adotemp11.Connection:=dm.MyConnection1;

  adotemp11.Close;
  adotemp11.SQL.Clear;
  adotemp11.SQL.Text:='select * from temp_dir where up_unid=:up_unid order by sort_num';
  adotemp11.ParamByName('up_unid').Value:=PDescriptType(Node.Data)^.unid;
  adotemp11.Open;
  while not adotemp11.Eof do
  begin
    new(DescriptType);//Ϊָ������ڴ�
    DescriptType^.unid:=adotemp11.fieldbyname('unid').AsString;
    DescriptType^.UpUnid:=adotemp11.fieldbyname('up_unid').AsString;
    DescriptType^.SortNum:=adotemp11.fieldbyname('sort_num').AsString;

    ChildNode:=tvWareHouse.Items.AddChildObject(node,adotemp11.fieldbyname('Name').AsString,DescriptType);

    if HasSubInDbf(ChildNode) then ChildNode.HasChildren := True;//�ж��Ƿ����ӽڵ㣬���������Ƿ���ʾǰ���'+'

    adotemp11.Next;
  end;

  UpdateAdoquery1(PDescriptType(Node.Data)^.unid);
end;

procedure TfrmDgnsBigTemp.UpdateAdoquery1(const ADir_Unid:string);
begin
  adoquery1.Close;
  adoquery1.SQL.Clear;
  adoquery1.SQL.Text:='select type_name as ����,temp_body.name as ����,group_num as ���,dosage as ����,unit_dosage as ������λ,'+
                     'use_method as �÷�,drug_freq as Ƶ��,drug_days as ������,'+
                     'drug_num as ����,unit_drug as ������λ,'+
                     'Content as ����,create_date_time as ����ʱ��,temp_body.unid,dir_unid,item_unid '+
                     ' from temp_body '+
                     //Ҫ��ģ���������͡����������ƾ���Ψһ�ԣ������SQL����Ľ�����ظ�
                     ' left JOIN commcode cc on cc.TypeName=''ģ����������'' AND cc.name=type_name '+
                     ' where dir_unid='+ADir_Unid+' order by cc.code,group_num';
  adoquery1.Open;
end;

procedure TfrmDgnsBigTemp.FormCreate(Sender: TObject);
begin
  adoquery1.Connection:=dm.MyConnection1;
end;

procedure TfrmDgnsBigTemp.ADOQuery1AfterOpen(DataSet: TDataSet);
begin
  dbgrid1.Columns[0].Width:=55;//����
  dbgrid1.Columns[1].Width:=135;//����
  dbgrid1.Columns[2].Width:=30;//���
  dbgrid1.Columns[3].Width:=30;//����
  dbgrid1.Columns[4].Width:=55;//������λ
  dbgrid1.Columns[5].Width:=55;//�÷�
  dbgrid1.Columns[6].Width:=65;//Ƶ��
  dbgrid1.Columns[7].Width:=55;//��/����
  dbgrid1.Columns[8].Width:=30;//����
  dbgrid1.Columns[9].Width:=55;//������λ
  dbgrid1.Columns[10].Width:=350;//����
  dbgrid1.Columns[11].Width:=135;//����ʱ��
end;

procedure TfrmDgnsBigTemp.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmDgnsBigTemp.UpdateEdit;
begin
  if adoquery1.RecordCount<>0 then
  begin
    Memo1.Lines.Text:=(adoquery1.fieldbyname('����').AsString);
  end else
  begin
    ClearEdit;
  end;
end;

procedure TfrmDgnsBigTemp.ClearEdit;
begin
  Memo1.Lines.Clear;
end;

procedure TfrmDgnsBigTemp.ADOQuery1AfterScroll(DataSet: TDataSet);
begin
{  ifNewAdd:=false;
  updateEdit;//}//��ADOQuery1����û�м�¼,���ᴥ�����¼�,�༭�򲻻����.����DataSource1DataChange�¼�����
end;

procedure TfrmDgnsBigTemp.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  updateEdit;
end;

procedure TfrmDgnsBigTemp.tvWareHouseDeletion(Sender: TObject;
  Node: TTreeNode);
begin
  Dispose(Node.Data);//�ͷŽڵ������ڴ�
end;

procedure TfrmDgnsBigTemp.FormDestroy(Sender: TObject);
var
  ConfigIni:tinifile;
begin
  ConfigIni:=tinifile.Create(ChangeFileExt(Application.ExeName,'.ini'));

  configini.WriteInteger('Interface','Panel2Width',Panel2.Width);

  configini.Free;
end;

procedure TfrmDgnsBigTemp.BitBtn2Click(Sender: TObject);
var
  adotemp22:TMyQuery;
begin
  if not ifhaspower(sender,operator_id) then exit;//Ȩ�޼��

  if not frmMain.MyQuery2.Active then exit;
  if frmMain.MyQuery2.RecordCount<=0 then exit;

  if not adoquery1.Active then exit;
  if adoquery1.RecordCount<=0 then exit;

  adotemp22:=TMyQuery.Create(nil);
  adotemp22.Connection:=DM.MyConnection1;
  adotemp22.Close;
  adotemp22.SQL.Clear;
  adotemp22.SQL:=adoquery1.SQL;
  adotemp22.Open;
  while not adotemp22.Eof do
  begin
    SingleInsertTemp(adotemp22.fieldbyname('unid').AsString);
    
    adotemp22.Next;
  end;
  adotemp22.Free;
end;

procedure TfrmDgnsBigTemp.DBGrid1DblClick(Sender: TObject);
begin
  if not frmMain.MyQuery2.Active then exit;
  if frmMain.MyQuery2.RecordCount<=0 then exit;

  if not TDBGrid(Sender).DataSource.DataSet.Active then exit;
  if TDBGrid(Sender).DataSource.DataSet.RecordCount<=0 then exit;

  SingleInsertTemp(TDBGrid(Sender).DataSource.DataSet.fieldbyname('unid').AsString);
end;

procedure TfrmDgnsBigTemp.SingleInsertTemp(const AUnid:String);
VAR
  adotemp11:TMyQuery;
  Insert_Identity:integer;

  i_tm_unid,i_item_unid,i_group_num,i_drug_days:integer;
  f_dosage,f_drug_num,f_unit_price:single;
  s_unit_price:string;//����

  type_name:string;
  content:string;
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
begin
  adotemp11:=TMyQuery.Create(nil);
  adotemp11.Connection:=DM.MyConnection1;
  adotemp11.Close;
  adotemp11.SQL.Clear;
  adotemp11.SQL.Text:='select * from temp_body where unid='+AUnid;
  adotemp11.Open;
  type_name:=adotemp11.fieldbyname('type_name').AsString;
  content:=adotemp11.fieldbyname('content').AsString;
  item_unid:=adotemp11.fieldbyname('item_unid').AsString;
  name:=adotemp11.fieldbyname('name').AsString;
  group_num:=adotemp11.fieldbyname('group_num').AsString;
  dosage:=adotemp11.fieldbyname('dosage').AsString;
  unit_dosage:=adotemp11.fieldbyname('unit_dosage').AsString;
  use_method:=adotemp11.fieldbyname('use_method').AsString;
  drug_freq:=adotemp11.fieldbyname('drug_freq').AsString;
  drug_days:=adotemp11.fieldbyname('drug_days').AsString;
  drug_num:=adotemp11.fieldbyname('drug_num').AsString;
  unit_drug:=adotemp11.fieldbyname('unit_drug').AsString;
  adotemp11.Free;

  if '����'=type_name then
  begin
    frmMain.Memo1.Lines.Add(content);
    frmMain.SaveMedicalRecord(frmMain.Memo1);
  end;
  if '��Ҫ��ʷ'=type_name then
  begin
    frmMain.Memo2.Lines.Add(content);
    frmMain.SaveMedicalRecord(frmMain.Memo2);
  end;
  if '���'=type_name then
  begin
    frmMain.Memo3.Lines.Add(content);
    frmMain.SaveMedicalRecord(frmMain.Memo3);
  end;
  if '�������'=type_name then
  begin
    frmMain.Memo4.Lines.Add(content);
    frmMain.SaveMedicalRecord(frmMain.Memo4);
  end;
  if '����'=type_name then
  begin
    frmMain.Memo5.Lines.Add(content);
    frmMain.SaveMedicalRecord(frmMain.Memo5);
  end;
  if('���'=type_name)or('��ҩ'=type_name)or('��ҩ'=type_name)or('����'=type_name)or('����'=type_name)or('���'=type_name) then
  BEGIN
    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=DM.MyConnection1;
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add('Insert into treat_slave (tm_unid,item_Type,item_unid,item_name,group_num,dosage,unit_dosage,use_method,drug_freq,drug_days,drug_num,unit_drug,unit_price,prescription_no) values '+' (:tm_unid,:item_Type,:item_unid,:item_name,:group_num,:dosage,:unit_dosage,:use_method,:drug_freq,:drug_days,:drug_num,:unit_drug,:unit_price,:prescription_no)');
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    if trystrtoint(frmMain.MyQuery2.fieldbyname('unid').AsString,i_tm_unid) then
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
    if '��ҩ'=type_name then adotemp11.ParamByName('prescription_no').Value:=frmMain.RadioGroup1.ItemIndex
      else if '��ҩ'=type_name then adotemp11.ParamByName('prescription_no').Value:=frmMain.RadioGroup2.ItemIndex
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
      
    if('���'=type_name)and(frmMain.MyQuery4.Active) then
    begin
      frmMain.MyQuery4.Refresh;
      frmMain.MyQuery4.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
    end;
    if('��ҩ'=type_name)and(frmMain.MyQuery3.Active) then
    begin
      frmMain.MyQuery3.Refresh;
      frmMain.MyQuery3.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
    end;
    if('��ҩ'=type_name)and(frmMain.MyQuery7.Active) then
    begin
      frmMain.MyQuery7.Refresh;
      frmMain.MyQuery7.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
    end;
    if('����'=type_name)and(frmMain.MyQuery5.Active) then
    begin
      frmMain.MyQuery5.Refresh;
      frmMain.MyQuery5.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
    end;
    if('����'=type_name)and(frmMain.MyQuery9.Active) then
    begin
      frmMain.MyQuery9.Refresh;
      frmMain.MyQuery9.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
    end;
    if('���'=type_name)and(frmMain.MyQuery6.Active) then
    begin
      frmMain.MyQuery6.Refresh;
      frmMain.MyQuery6.Locate('Unid',Insert_Identity,[loCaseInsensitive]) ;
    end;
  END;
end;

initialization
  ffrmDgnsBigTemp:=nil;

end.
