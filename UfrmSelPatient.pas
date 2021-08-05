unit UfrmSelPatient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, DB, MemDS, DBAccess,
  MyAccess, Buttons, DosMove, StrUtils, ComCtrls,DateUtils, Menus,
  ADOLYGetcode;

type
  TfrmSelPatient = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    LabeledEdit8: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    LabeledEdit14: TLabeledEdit;
    DataSource1: TDataSource;
    MyQuery1: TMyQuery;
    BitBtn1: TBitBtn;
    DosMove1: TDosMove;
    DateTimePicker1: TDateTimePicker;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    ComboBox3: TComboBox;
    Label4: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Label5: TLabel;
    LabeledEdit2: TLabeledEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LabeledEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure MyQuery1AfterOpen(DataSet: TDataSet);
    procedure LabeledEdit3Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Panel4DblClick(Sender: TObject);
    procedure ComboBox3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure UpdateMyQuery1;
    procedure ClearEdit;
    function InsertTreatMaster(const APatient_Unid:integer):integer;
  public
    { Public declarations }
  end;

//var
function  frmSelPatient: TfrmSelPatient;

implementation

uses UDM, UfrmMain;

var
  ffrmSelPatient: TfrmSelPatient;

{$R *.dfm}

function frmSelPatient: TfrmSelPatient;    {��̬�������庯��}
begin
  if ffrmSelPatient=nil then ffrmSelPatient:=TfrmSelPatient.Create(application.mainform);
  result:=ffrmSelPatient;
end;

procedure TfrmSelPatient.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmSelPatient=self then ffrmSelPatient:=nil;
end;

procedure TfrmSelPatient.FormCreate(Sender: TObject);
begin
  MyQuery1.Connection:=DM.MyConnection1;
  
  SetWindowLong(LabeledEdit3.Handle, GWL_STYLE, GetWindowLong(LabeledEdit3.Handle, GWL_STYLE) or ES_NUMBER);//����.ֻ����������.�ÿ��Ϊ�˼����������
end;

procedure TfrmSelPatient.FormShow(Sender: TObject);
begin
  LoadGroupName(ComboBox1,'select name from commcode where typename=''֤������'' ');
  LoadGroupName(ComboBox2,'select name from commcode where typename=''���'' ');
  LoadGroupName(ComboBox3,'select name from commcode where typename=''�Ա�'' ');

  DateTimePicker1.Date:=now();

  UpdateMyQuery1;
end;

procedure TfrmSelPatient.UpdateMyQuery1;
var
  patient_name:string;
  certificate_num:string;
  clinic_card_num:string;
  health_care_num:string;
  //where:string;
begin
  //patient_name:=ifThen(trim(LabeledEdit1.Text)='','',' or patient_name like ''%'+trim(LabeledEdit1.Text)+'%'' ');
  patient_name:=' where patient_name like ''%'+trim(LabeledEdit1.Text)+'%'' ';
  certificate_num:=ifThen(trim(LabeledEdit6.Text)='','',' and certificate_num like ''%'+trim(LabeledEdit6.Text)+'%'' ');
  clinic_card_num:=ifThen(trim(LabeledEdit7.Text)='','',' and clinic_card_num like ''%'+trim(LabeledEdit7.Text)+'%'' ');
  health_care_num:=ifThen(trim(LabeledEdit2.Text)='','',' and health_care_num like ''%'+trim(LabeledEdit2.Text)+'%'' ');
  //if(patient_name='')and(certificate_num='')and(clinic_card_num='')and(health_care_num='') then where:='' else where:=' where 1=2 ';

  MyQuery1.Close;
  MyQuery1.SQL.Clear;
  MyQuery1.SQL.Text:='select patient_name as ����,patient_sex as �Ա�,TIMESTAMPDIFF(YEAR,patient_birthday,CURDATE()) AS ����,'+
                     'patient_birthday as ��������,certificate_type as ֤������,certificate_num as ֤������,'+
                     'clinic_card_num as ���ƿ���,health_care_num as ҽ������,address as סַ,work_company as ������λ,work_address as ������ַ,'+
                     'if_marry as ���,native_place as ����,telephone as ��ϵ�绰,remark as ��ע,unid from patient_info '
                     //+where
                     +patient_name
                     +certificate_num
                     +clinic_card_num
                     +health_care_num
                     +' order by unid desc LIMIT 100 ';
  MyQuery1.Open;
end;

procedure TfrmSelPatient.LabeledEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key<>13 then exit;

  //���������س�,����Ϊ��ʱ����ʾ���в���
  if (Sender as TLabeledEdit).Name<>'LabeledEdit1' then
    if trim((Sender as TLabeledEdit).Text)='' then exit;
    
  if Panel4.Caption='�޸�' then exit;

  UpdateMyQuery1;
end;

procedure TfrmSelPatient.MyQuery1AfterOpen(DataSet: TDataSet);
begin
  if not DataSet.Active then exit;

  dbgrid1.Columns.Items[0].Width:=42;//����
  dbgrid1.Columns.Items[1].Width:=30;//�Ա�
  dbgrid1.Columns.Items[2].Width:=30;//����
  dbgrid1.Columns.Items[3].Width:=72;//��������
  dbgrid1.Columns.Items[4].Width:=55;//֤������
  dbgrid1.Columns.Items[5].Width:=130;//֤������
  dbgrid1.Columns.Items[6].Width:=130;//���ƿ���
  dbgrid1.Columns.Items[7].Width:=130;//ҽ������
  dbgrid1.Columns.Items[8].Width:=120;//סַ
  dbgrid1.Columns.Items[9].Width:=120;//������λ
  dbgrid1.Columns.Items[10].Width:=120;//������ַ
  dbgrid1.Columns.Items[11].Width:=42;//���
  dbgrid1.Columns.Items[12].Width:=55;//����
  dbgrid1.Columns.Items[13].Width:=80;//��ϵ�绰
  dbgrid1.Columns.Items[14].Width:=100;//��ע
end;

procedure TfrmSelPatient.LabeledEdit3Exit(Sender: TObject);
var
  i:integer;
  dt1:Tdate;
begin
  if not TryStrToInt(trim((Sender as TLabeledEdit).Text),i) then exit;

  dt1:=IncYear(now(),i*-1);
  DateTimePicker1.Date:=dt1;
end;

procedure TfrmSelPatient.BitBtn1Click(Sender: TObject);
var
  adotemp11,adotemp12:TMyQuery;
  sqlstr:string;
  iUnid,Unid_TreatMaster:integer;
begin
  if trim(LabeledEdit1.Text)='' then
  begin
    MESSAGEDLG('��������Ϊ��!',mtError,[mbOK],0);
    exit;
  end;
  
  if not MyQuery1.Active then exit;

  if Panel4.Caption='�޸�' then
  begin
    if MyQuery1.RecordCount<=0 then exit;
    
    iUnid:=MyQuery1.fieldbyname('unid').AsInteger;

    adotemp12:=TMyQuery.Create(nil);
    adotemp12.Connection:=DM.MyConnection1;

    adotemp12.Close;
    adotemp12.SQL.Clear;
    adotemp12.SQL.Text:=' Update patient_info  '+
    '  set patient_name=:patient_name,patient_sex=:patient_sex,patient_birthday=:patient_birthday,certificate_type=:certificate_type,certificate_num=:certificate_num,clinic_card_num=:clinic_card_num,health_care_num=:health_care_num,'+
    ' address=:address,work_company=:work_company,work_address=:work_address,if_marry=:if_marry,native_place=:native_place,telephone=:telephone,remark=:remark  '+
    '  Where    Unid=:Unid ';
    adotemp12.ParamByName('patient_name').Value:=trim(LabeledEdit1.Text);
    adotemp12.ParamByName('patient_sex').Value:=trim(ComboBox3.Text);
    adotemp12.ParamByName('patient_birthday').Value:=DateTimePicker1.DateTime;//����DateTime,Date��ExecSQL����
    adotemp12.ParamByName('certificate_type').Value:=trim(ComboBox1.Text);
    adotemp12.ParamByName('certificate_num').Value:=trim(LabeledEdit6.Text);
    adotemp12.ParamByName('clinic_card_num').Value:=trim(LabeledEdit7.Text);
    adotemp12.ParamByName('health_care_num').Value:=trim(LabeledEdit2.Text);
    adotemp12.ParamByName('address').Value:=trim(LabeledEdit8.Text);
    adotemp12.ParamByName('work_company').Value:=trim(LabeledEdit9.Text);
    adotemp12.ParamByName('work_address').Value:=trim(LabeledEdit10.Text);
    adotemp12.ParamByName('if_marry').Value:=trim(ComboBox2.Text);
    adotemp12.ParamByName('native_place').Value:=trim(LabeledEdit12.Text);
    adotemp12.ParamByName('telephone').Value:=trim(LabeledEdit13.Text);
    adotemp12.ParamByName('remark').Value:=trim(LabeledEdit14.Text);
    adotemp12.ParamByName('unid').Value:=iUnid;
    adotemp12.ExecSQL;
    adotemp12.Free;
    MyQuery1.Refresh;
    MyQuery1.Locate('Unid',iUnid,[loCaseInsensitive]) ;
    
    Panel4.Caption:='����';
    Panel3.Caption:='';

    ClearEdit;

    frmMain.MyQuery2.Refresh;
  end else
  begin
    adotemp11:=TMyQuery.Create(nil);
    adotemp11.Connection:=DM.MyConnection1;

    sqlstr:='Insert into patient_info ('+
                        ' patient_name,patient_sex,patient_birthday,certificate_type,certificate_num,clinic_card_num,health_care_num,address,work_company,work_address,if_marry,native_place,telephone,remark) values ('+
                        ' :patient_name,:patient_sex,:patient_birthday,:certificate_type,:certificate_num,:clinic_card_num,:health_care_num,:address,:work_company,:work_address,:if_marry,:native_place,:telephone,:remark) ';
    adotemp11.Close;
    adotemp11.SQL.Clear;
    adotemp11.SQL.Add(sqlstr);
    //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
    adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
    adotemp11.ParamByName('patient_name').Value:=trim(LabeledEdit1.Text);
    adotemp11.ParamByName('patient_sex').Value:=trim(ComboBox3.Text);
    adotemp11.ParamByName('patient_birthday').Value:=DateTimePicker1.DateTime;//����DateTime,Date��ExecSQL����
    adotemp11.ParamByName('certificate_type').Value:=trim(ComboBox1.Text);
    adotemp11.ParamByName('certificate_num').Value:=trim(LabeledEdit6.Text);
    adotemp11.ParamByName('clinic_card_num').Value:=trim(LabeledEdit7.Text);
    adotemp11.ParamByName('health_care_num').Value:=trim(LabeledEdit2.Text);
    adotemp11.ParamByName('address').Value:=trim(LabeledEdit8.Text);
    adotemp11.ParamByName('work_company').Value:=trim(LabeledEdit9.Text);
    adotemp11.ParamByName('work_address').Value:=trim(LabeledEdit10.Text);
    adotemp11.ParamByName('if_marry').Value:=trim(ComboBox2.Text);
    adotemp11.ParamByName('native_place').Value:=trim(LabeledEdit12.Text);
    adotemp11.ParamByName('telephone').Value:=trim(LabeledEdit13.Text);
    adotemp11.ParamByName('remark').Value:=trim(LabeledEdit14.Text);
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

    Unid_TreatMaster:=InsertTreatMaster(iUnid);
    
    frmMain.MyQuery2.Refresh;
    frmMain.MyQuery2.Locate('unid',Unid_TreatMaster,[loCaseInsensitive]);

    close;
  end;
end;

procedure TfrmSelPatient.N1Click(Sender: TObject);
begin
  if not MyQuery1.Active then exit;
  if MyQuery1.RecordCount<=0 then exit;
  
  Panel4.Caption:='�޸�';
  Panel3.Caption:=MyQuery1.fieldbyname('����').AsString;

  LabeledEdit1.Text:=MyQuery1.fieldbyname('����').AsString;  
  ComboBox3.Text:=MyQuery1.fieldbyname('�Ա�').AsString;  
  LabeledEdit3.Text:=MyQuery1.fieldbyname('����').AsString;  
  DateTimePicker1.Date:=MyQuery1.fieldbyname('��������').AsDateTime;  
  ComboBox1.Text:=MyQuery1.fieldbyname('֤������').AsString;  
  LabeledEdit6.Text:=MyQuery1.fieldbyname('֤������').AsString;  
  LabeledEdit7.Text:=MyQuery1.fieldbyname('���ƿ���').AsString;  
  LabeledEdit2.Text:=MyQuery1.fieldbyname('ҽ������').AsString;  
  LabeledEdit8.Text:=MyQuery1.fieldbyname('סַ').AsString;  
  LabeledEdit9.Text:=MyQuery1.fieldbyname('������λ').AsString;
  LabeledEdit10.Text:=MyQuery1.fieldbyname('������ַ').AsString;
  ComboBox2.Text:=MyQuery1.fieldbyname('���').AsString;  
  LabeledEdit12.Text:=MyQuery1.fieldbyname('����').AsString;
  LabeledEdit13.Text:=MyQuery1.fieldbyname('��ϵ�绰').AsString;
  LabeledEdit14.Text:=MyQuery1.fieldbyname('��ע').AsString;  
end;

procedure TfrmSelPatient.DBGrid1DblClick(Sender: TObject);
var
  Unid_TreatMaster:integer;
begin
  if not (Sender as TDBGrid).DataSource.DataSet.Active then exit;
  if (Sender as TDBGrid).DataSource.DataSet.RecordCount<=0 then exit;

  Unid_TreatMaster:=InsertTreatMaster((Sender as TDBGrid).DataSource.DataSet.fieldbyname('unid').AsInteger);

  frmMain.MyQuery2.Refresh;
  frmMain.MyQuery2.Locate('unid',Unid_TreatMaster,[loCaseInsensitive]);

  close;
end;

procedure TfrmSelPatient.N3Click(Sender: TObject);
begin
  if not MyQuery1.Active then exit;
  if MyQuery1.RecordCount=0 then exit;

  if (MessageDlg('ȷʵҪɾ���û�����',mtWarning,[mbYes,mbNo],0)<>mrYes) then exit;

  if strtoint(ScalarSQLCmd(g_Server,g_Port,g_Database,g_Username,g_Password,'select count(*) from treat_master where patient_unid='+MyQuery1.fieldbyname('unid').AsString))>=1 then
  begin
    MESSAGEDLG('�û��ߴ������Ƽ�¼,������ɾ��!',mtError,[mbOK],0);
    exit;
  end;

  MyQuery1.Delete;
end;

procedure TfrmSelPatient.Panel4DblClick(Sender: TObject);
begin
  if (Sender as TPanel).Caption='�޸�' then
  begin
    (Sender as TPanel).Caption:='����';
    Panel3.Caption:='';

    ClearEdit;
  end;
end;

procedure TfrmSelPatient.ClearEdit;
begin
  LabeledEdit1.Clear;
  ComboBox3.Text:='';  
  LabeledEdit3.Clear;  
  DateTimePicker1.Date:=now();  
  ComboBox1.Text:='';  
  LabeledEdit6.Clear;
  LabeledEdit7.Clear;
  LabeledEdit2.Clear;
  LabeledEdit8.Clear;
  LabeledEdit9.Clear;
  LabeledEdit10.Clear;
  ComboBox2.Text:='';
  LabeledEdit12.Clear;
  LabeledEdit13.Clear;
  LabeledEdit14.Clear;  
end;

function TfrmSelPatient.InsertTreatMaster(const APatient_Unid:integer):integer;
var
  adotemp11:TMyQuery;
  sqlstr:string;
begin
  Result:=-1;
  
  adotemp11:=TMyQuery.Create(nil);
  adotemp11.Connection:=DM.MyConnection1;

  sqlstr:='Insert into treat_master ('+
                      ' patient_unid,operator,department) values ('+
                      ' :patient_unid,:operator,:department) ';
  adotemp11.Close;
  adotemp11.SQL.Clear;
  adotemp11.SQL.Add(sqlstr);
  //ִ�ж���MySQL��䣬Ҫ�÷ֺŷָ�
  adotemp11.SQL.Add('; SELECT LAST_INSERT_ID() AS Insert_Identity ');
  adotemp11.ParamByName('patient_unid').Value:=APatient_Unid;
  adotemp11.ParamByName('operator').Value:=operator_name;
  adotemp11.ParamByName('department').Value:=operator_dep_name;
  try
    adotemp11.ExecSQL;
  except
    on E:Exception do
    begin
      adotemp11.Free;
      MESSAGEDLG('�������Ƽ�¼ʧ��!'+E.Message,mtError,[mbOK],0);
      exit;
    end;
  end;

  Result:=adotemp11.fieldbyname('Insert_Identity').AsInteger;
  adotemp11.Free;
end;

procedure TfrmSelPatient.ComboBox3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name from commcode where typename=''�Ա�'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=top+TComboBox(SENDER).Top+TComboBox(SENDER).Height+22{��ǰ����������߶�}+10{�����߶�}+TComboBox(SENDER).Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmSelPatient.ComboBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name from commcode where typename=''֤������'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=top+TComboBox(SENDER).Top+TComboBox(SENDER).Height+22{��ǰ����������߶�}+10{�����߶�}+TComboBox(SENDER).Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

procedure TfrmSelPatient.ComboBox2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  tmpADOLYGetcode:TADOLYGetcode;
begin
  if key<>13 then exit;
  tmpADOLYGetcode:=TADOLYGetcode.create(nil);
  tmpADOLYGetcode.MyConnection:=DM.MyConnection1;
  tmpADOLYGetcode.OpenStr:='select name from commcode where typename=''���'' ';
  tmpADOLYGetcode.InField:='code,pinyin,wbm';
  tmpADOLYGetcode.InValue:=TComboBox(sender).Text;
  tmpADOLYGetcode.ShowX:=left+TComboBox(SENDER).Left+TComboBox(SENDER).Parent.Left;
  tmpADOLYGetcode.ShowY:=top+TComboBox(SENDER).Top+TComboBox(SENDER).Height+22{��ǰ����������߶�}+10{�����߶�}+TComboBox(SENDER).Parent.Top;

  if tmpADOLYGetcode.Execute then
  begin
    TComboBox(SENDER).Text:=tmpADOLYGetcode.OutValue[0];
  end;
  tmpADOLYGetcode.Free;
end;

initialization
  ffrmSelPatient:=nil;

end.
