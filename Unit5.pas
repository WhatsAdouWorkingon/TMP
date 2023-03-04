unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, comobj, jpeg;

type
  TForm5 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ti,ans:string;
  Form5: TForm5;
  ExcelApp: Variant;
implementation
uses unit4;
{$R *.dfm}

procedure TForm5.Timer1Timer(Sender: TObject);
begin
if label1.Caption='OVER' then label1.Caption:='20';
label1.Caption:=inttostr(strtoint(label1.Caption)-1);
if label1.Caption='0' then begin label1.Caption:='OVER';  timer1.Enabled:=false; end;
end;

procedure TForm5.FormCreate(Sender: TObject);
var lj,lujing:string;
    i:longint;
begin
   lujing:=ExtractFilePath(Application.Exename);
   ExcelApp := CreateOleObject('Excel.Application' );
   lj:=lujing+'Excel/p3.xls';
   ExcelApp.WorkBooks.Open(lj);
   i:=0; ti:='';
   while ti='' do
     begin
        inc(i);
        ti:=excelapp.worksheets[1].cells[i,1];
        ans:=excelapp.worksheets[1].cells[i,2];
        excelapp.worksheets[1].cells[i,1]:='';
        excelapp.worksheets[1].cells[i,2]:='';;
     end;
   label2.Caption:=ti;
   label3.Caption:=ans;
   ExcelApp.DisplayAlerts:=false;
   ExcelApp.ActiveWorkBook.Save;
   ExcelApp.Quit;
end;

procedure TForm5.Image1Click(Sender: TObject);
begin
part3.Image1.Picture.LoadFromFile('image/p3/icon_A.jpg');
close;
end;

procedure TForm5.Image2Click(Sender: TObject);
begin
part3.Image1.Picture.LoadFromFile('image/p3/icon_B.jpg');
close;
end;

procedure TForm5.Image4Click(Sender: TObject);
begin
close;
end;

procedure TForm5.Image5Click(Sender: TObject);
begin
label3.Show;
end;

end.
