unit UfrmSaveAsTemp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ImgList, ComCtrls, ToolWin, StdCtrls, ExtCtrls, Buttons,ADODB,StrUtils,
  DosMove, ActnList, DBCtrls, DB, MemDS, DBAccess, MyAccess;

type
  TfrmSaveAsTemp = class(TForm)
    GroupBox1: TGroupBox;
    tvWareHouse: TTreeView;
    Panel1: TPanel;
    labWhId: TLabel;
    labWhName: TLabel;
    edtWhId: TEdit;
    edtWhName: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Splitter1: TSplitter;
    DosMove1: TDosMove;
    ActionList1: TActionList;
    ActAdd1: TAction;
    ActAdd2: TAction;
    ActSave: TAction;
    ActDel: TAction;
    ActRefresh: TAction;
    ActExit: TAction;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    BitBtn7: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure tvWareHouseChange(Sender: TObject; Node: TTreeNode);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtWhNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tvWareHouseDeletion(Sender: TObject; Node: TTreeNode);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
    procedure UpdatetvWareHouse;
    procedure ClearEdit;
    procedure UpdateEdit(Node:TTreeNode);
  public
    { Public declarations }
  end;

//var
function  frmSaveAsTemp: TfrmSaveAsTemp;

implementation

uses UDM, UfrmMain;

var
  ffrmSaveAsTemp: TfrmSaveAsTemp;
  InsertPwhid:string;
  ifInsert:boolean;

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
function  frmSaveAsTemp: TfrmSaveAsTemp;  {动态创建窗体函数}
begin
  if ffrmSaveAsTemp=nil then ffrmSaveAsTemp:=TfrmSaveAsTemp.Create(application.mainform);
  result:=ffrmSaveAsTemp;
end;

procedure TfrmSaveAsTemp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmSaveAsTemp=self then ffrmSaveAsTemp:=nil;
end;
////////////////////////////////////////////////////////////////////////////////

procedure TfrmSaveAsTemp.UpdatetvWareHouse;
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
    new(DescriptType);//为指针分配内存
    DescriptType^.unid:=adotemp11.fieldbyname('unid').AsString;
    DescriptType^.UpUnid:=adotemp11.fieldbyname('up_unid').AsString;
    DescriptType^.SortNum:=adotemp11.fieldbyname('sort_num').AsString;
    Node:=tvWareHouse.Items.AddChildObject(nil,adotemp11.fieldbyname('name').AsString,DescriptType);//.Add(nil,'['+adotemp11.fieldbyname('Id').AsString+']'+adotemp11.fieldbyname('name').AsString);

    if HasSubInDbf(node) then Node.HasChildren := True;//判断是否有子节点，用来控制是否显示前面的'+'

    adotemp11.Next;
  end;
  adotemp11.free;

  ClearEdit;      //因为重新加载TREEVIEW后就没了焦点
end;

procedure TfrmSaveAsTemp.ClearEdit;
begin
  edtWhId.Clear;
  edtWhName.Clear;
end;

procedure TfrmSaveAsTemp.BitBtn1Click(Sender: TObject);
var
  RecNum:integer;
  SelectID:string;
begin
  RecNum:=strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) as RecNum from temp_dir LIMIT 1'));

  if RecNum<>0 then//否则,没有记录SelectID为默认值空('')
  begin
    if tvWareHouse.Selected=nil then
    begin
      MessageDlg('请选择一个类别！',mtError,[mbOK],0);
      exit;
    end;
    SelectID:=PDescriptType(tvWareHouse.Selected.Data)^.unid;
    InsertPwhid:=ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select up_unid from temp_dir where unid='+SelectID);
  end;

  ClearEdit;
  edtWhId.Enabled:=true;
  edtWhId.SetFocus;
  ifInsert:=true;

  if InsertPwhid='' then InsertPwhid:='-1';
end;

procedure TfrmSaveAsTemp.BitBtn2Click(Sender: TObject);
begin
  if tvWareHouse.Selected=nil then
  begin
    MessageDlg('请选择一个类别！',mtError,[mbOK],0);
    exit;
  end;

  ClearEdit;
  edtWhId.Enabled:=true;
  edtWhId.SetFocus;
  InsertPwhid:=PDescriptType(tvWareHouse.Selected.Data)^.unid;
  ifInsert:=true;
end;

procedure TfrmSaveAsTemp.BitBtn3Click(Sender: TObject);
var
  adotemp11:TMyQuery;
  i_sort_num:integer;
begin
  adotemp11:=TMyQuery.Create(nil);
  adotemp11.Connection:=dm.MyConnection1;
  adotemp11.Close;
  adotemp11.SQL.Clear;

  if ifInsert then
  begin
    adotemp11.SQL.Text:='Insert into temp_dir (sort_num,Name,up_unid) Values (:sort_num,:Name,:up_unid)';
    adotemp11.ParamByName('up_unid').Value:=InsertPwhid;
  end else
  begin
    if tvWareHouse.Selected=nil then begin adotemp11.Free;exit;end;

    adotemp11.SQL.Text:='UPDATE temp_dir SET Name=:Name,sort_num=:sort_num Where unid=:unid';//+QuotedStr());
    adotemp11.ParamByName('unid').Value:=PDescriptType(tvWareHouse.Selected.Data)^.unid;
  end;
  try
    adotemp11.ParamByName('Name').Value:=edtWhName.Text;
    if trystrtoint(edtWhId.Text,i_sort_num) then
      adotemp11.ParamByName('sort_num').Value:=i_sort_num
    else adotemp11.ParamByName('sort_num').Value:=null;

    adotemp11.ExecSQL;
  finally
    adotemp11.Free;
    ifInsert:=false;
    UpdatetvWareHouse;
  end;
end;

procedure TfrmSaveAsTemp.UpdateEdit(Node:TTreeNode);
begin
  edtWhId.Text:=PDescriptType(tvWareHouse.Selected.Data)^.SortNum;
  edtWhName.Text:=Node.Text;
end;

procedure TfrmSaveAsTemp.BitBtn4Click(Sender: TObject);
var
  RecNum,RecNum33:integer;
begin
  if tvWareHouse.Selected=nil then
  begin
    MessageDlg('请选择一个类别！',mtError,[mbOK],0);
    exit;
  end;
  
  RecNum:=strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) as RecNum from temp_dir where up_unid='+PDescriptType(tvWareHouse.Selected.Data)^.unid));

  if RecNum<>0 then
  begin
    MessageDlg('该节点有子节点,不能删除！',mtError,[mbOK],0);
    exit;
  end;

  RecNum33:=strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) as RecNum33 from temp_body where dir_unid='+PDescriptType(tvWareHouse.Selected.Data)^.unid));

  if RecNum33<>0 then
  begin
    MessageDlg('该节点下有模板内容,不能删除！',mtError,[mbOK],0);
    exit;
  end;

  if (MessageDlg('确定删除当前节点吗？', mtConfirmation, [mbYes, mbNo], 0) <> mrYes) then exit;

  ExecSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'delete from temp_dir where unid='+PDescriptType(tvWareHouse.Selected.Data)^.unid);

  UpdatetvWareHouse;
end;

procedure TfrmSaveAsTemp.FormShow(Sender: TObject);
begin
  ifInsert:=false;
  ClearEdit;
  UpdatetvWareHouse;
end;

procedure TfrmSaveAsTemp.tvWareHouseChange(Sender: TObject;
  Node: TTreeNode);
var
  adotemp11:TMyQuery;
  ChildNode:ttreenode;
  DescriptType:PDescriptType;
begin
  node.DeleteChildren;//清除节点下的所有子节点

  adotemp11:=TMyQuery.Create(nil);
  adotemp11.Connection:=dm.MyConnection1;

  adotemp11.Close;
  adotemp11.SQL.Clear;
  adotemp11.SQL.Text:='select * from temp_dir where up_unid=:up_unid order by sort_num';
  adotemp11.ParamByName('up_unid').Value:=PDescriptType(Node.Data)^.unid;
  adotemp11.Open;
  while not adotemp11.Eof do
  begin
    new(DescriptType);//为指针分配内存
    DescriptType^.unid:=adotemp11.fieldbyname('unid').AsString;
    DescriptType^.UpUnid:=adotemp11.fieldbyname('up_unid').AsString;
    DescriptType^.SortNum:=adotemp11.fieldbyname('sort_num').AsString;

    ChildNode:=tvWareHouse.Items.AddChildObject(node,adotemp11.fieldbyname('Name').AsString,DescriptType);

    if HasSubInDbf(ChildNode) then ChildNode.HasChildren := True;//判断是否有子节点，用来控制是否显示前面的'+'

    adotemp11.Next;
  end;

  UpdateEdit(Node);
end;

procedure TfrmSaveAsTemp.BitBtn6Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmSaveAsTemp.BitBtn5Click(Sender: TObject);
begin
  UpdatetvWareHouse;
end;

procedure TfrmSaveAsTemp.FormCreate(Sender: TObject);
begin
  SetWindowLong(edtWhId.Handle,GWL_STYLE,GetWindowLong(edtWhId.Handle,GWL_STYLE) or ES_NUMBER);//只能输入数字
end;

procedure TfrmSaveAsTemp.edtWhNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=13 then
    if bitbtn3.CanFocus then bitbtn3.SetFocus;
end;

procedure TfrmSaveAsTemp.tvWareHouseDeletion(Sender: TObject;
  Node: TTreeNode);
begin
  Dispose(Node.Data);{释放节点数据内存}
end;

procedure TfrmSaveAsTemp.BitBtn7Click(Sender: TObject);
var
  adotemp11,adotemp22:TMyQuery;
  sqlstr:string;
  i_group_num,i_drug_days,i_item_unid:integer;//i_ji_num
  f_dosage,f_drug_num:single;
begin
  if not frmMain.MyQuery2.Active then exit;
  if frmMain.MyQuery2.RecordCount<=0 then exit;

  if tvWareHouse.Selected=nil then
  begin
    MessageDlg('请选择一个类别！',mtError,[mbOK],0);
    exit;
  end;

  if(not CheckBox1.Checked)and(not CheckBox2.Checked)and(not CheckBox3.Checked)and(not CheckBox4.Checked)and(not CheckBox5.Checked)and(not CheckBox6.Checked) then
  begin
    MessageDlg('请选择模板内容类型！',mtError,[mbOK],0);
    exit;
  end;

  adotemp22:=TMyQuery.Create(nil);
  adotemp22.Connection:=dm.MyConnection1;
  adotemp22.Close;
  adotemp22.SQL.Clear;
  adotemp22.SQL.Text:='select * from treat_slave where tm_unid='+frmMain.MyQuery2.fieldbyname('unid').AsString;
  adotemp22.Open;
  while not adotemp22.Eof do
  begin
    if(adotemp22.fieldbyname('item_type').AsString='主诉')and(not CheckBox1.Checked)then begin adotemp22.Next;continue;end; 
    if(adotemp22.fieldbyname('item_type').AsString='简要病史')and(not CheckBox1.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='体查')and(not CheckBox1.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='辅助检查')and(not CheckBox1.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='嘱托')and(not CheckBox1.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='诊断')and(not CheckBox1.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='西药')and(not CheckBox2.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='中药')and(not CheckBox3.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='治疗')and(not CheckBox4.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='检验')and(not CheckBox5.Checked)then begin adotemp22.Next;continue;end;
    if(adotemp22.fieldbyname('item_type').AsString='检查')and(not CheckBox6.Checked)then begin adotemp22.Next;continue;end; 

    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=dm.MyConnection1;
    sqlstr:='Insert into temp_body ('+
                        ' dir_unid,item_unid,name,Content,type_name,group_num,dosage,unit_dosage,use_method,drug_freq,drug_days,drug_num,unit_drug) values ('+
                        ' :dir_unid,:item_unid,:name,:Content,:type_name,:group_num,:dosage,:unit_dosage,:use_method,:drug_freq,:drug_days,:drug_num,:unit_drug) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    adotemp11.ParamByName('name').Value:=trim(adotemp22.fieldbyname('item_name').AsString);
    adotemp11.ParamByName('Content').Value:=adotemp22.fieldbyname('item_value').AsString;
    adotemp11.ParamByName('dir_unid').Value:=PDescriptType(tvWareHouse.Selected.Data)^.unid;
    adotemp11.ParamByName('type_name').Value:=adotemp22.fieldbyname('item_type').AsString;
    if trystrtoint(adotemp22.fieldbyname('group_num').AsString,i_group_num) then
      adotemp11.ParamByName('group_num').Value:=i_group_num
    else adotemp11.ParamByName('group_num').Value:=null;
    if trystrtofloat(adotemp22.fieldbyname('dosage').AsString,f_dosage) then
      adotemp11.ParamByName('dosage').Value:=f_dosage
    else adotemp11.ParamByName('dosage').Value:=null;
    adotemp11.ParamByName('unit_dosage').Value:=trim(adotemp22.fieldbyname('unit_dosage').AsString);
    adotemp11.ParamByName('use_method').Value:=trim(adotemp22.fieldbyname('use_method').AsString);
    adotemp11.ParamByName('drug_freq').Value:=trim(adotemp22.fieldbyname('drug_freq').AsString);
    if trystrtoint(adotemp22.fieldbyname('drug_days').AsString,i_drug_days) then
      adotemp11.ParamByName('drug_days').Value:=i_drug_days
    else adotemp11.ParamByName('drug_days').Value:=null;
    if trystrtofloat(adotemp22.fieldbyname('drug_num').AsString,f_drug_num) then
      adotemp11.ParamByName('drug_num').Value:=f_drug_num
    else adotemp11.ParamByName('drug_num').Value:=null;
    adotemp11.ParamByName('unit_drug').Value:=trim(adotemp22.fieldbyname('unit_drug').AsString);
    if trystrtoint(adotemp22.fieldbyname('item_unid').AsString,i_item_unid) then
      adotemp11.ParamByName('item_unid').Value:=i_item_unid
    else adotemp11.ParamByName('item_unid').Value:=null;
    adotemp11.ExecSQL;
    adotemp11.Free;

    adotemp22.Next;
  end;
  adotemp22.Free;
  
  MessageDlg('保存模板完成！',mtInformation,[mbOK],0);
end;

initialization
  ffrmSaveAsTemp:=nil;

end.
