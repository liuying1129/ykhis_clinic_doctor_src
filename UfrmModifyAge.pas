unit UfrmModifyAge;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DosMove;

type
  TfrmModifyAge = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LabeledEdit4: TLabeledEdit;
    DosMove1: TDosMove;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure LabeledEdit4Exit(Sender: TObject);
  private
    { Private declarations }
    tm_unid:string;
  public
    { Public declarations }
  end;

function frmModifyAge(const ATm_Unid,AAge:string): TfrmModifyAge;

implementation

uses UDM, UfrmMain;

var
  ffrmModifyAge: TfrmModifyAge;
  
{$R *.dfm}

////////////////////////////////////////////////////////////////////////////////
function frmModifyAge(const ATm_Unid,AAge:string):TfrmModifyAge;    {动态创建窗体函数}  //
begin
  if ffrmModifyAge=nil then ffrmModifyAge:=TfrmModifyAge.Create(application.mainform);
  result:=ffrmModifyAge;
  frmModifyAge.LabeledEdit4.Text:=AAge;
  frmModifyAge.tm_unid:=ATm_Unid;
end;

procedure TfrmModifyAge.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
  if ffrmModifyAge=self then ffrmModifyAge:=nil;
end;
////////////////////////////////////////////////////////////////////////////////

procedure TfrmModifyAge.BitBtn2Click(Sender: TObject);
begin
  close;
end;

procedure TfrmModifyAge.BitBtn1Click(Sender: TObject);
begin
  if ExecSQLCmd(HisConn,'update treat_master set patient_age='''+LabeledEdit4.Text+''' where unid='+tm_unid) then
  begin
    frmMain.MyQuery2.Refresh;
    close;
  end;
end;

procedure TfrmModifyAge.LabeledEdit4Exit(Sender: TObject);
begin
  tlabelededit(sender).Text:=ageConvertChinese(trim(tlabelededit(sender).Text));
end;

initialization
  ffrmModifyAge:=nil;

end.
