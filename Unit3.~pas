unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Comobj, jpeg;

type
  Tpart2 = class(TForm)
    Timer1: TTimer;
    Image1: TImage;
    Label1: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label2: TLabel;
    Image4: TImage;
    Image5: TImage;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Image1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  part2: Tpart2;
  ExcelApp: Variant;
implementation

uses Unit1;
var
  s:string;
  now1:longint;
{$R *.dfm}




procedure Tpart2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.show;
ExcelApp.DisplayAlerts:=false;
ExcelApp.ActiveWorkBook.Save;
ExcelApp.Quit;
end;
procedure Tpart2.Image1Click(Sender: TObject);
var s:string;
begin
 label1.Caption:='100';
 label2.Show;
 label3.Hide;
 s:=ExcelApp.Worksheets[1].Cells[now1,1];
 while s='' do
   begin
      inc(now1);
      s:=ExcelApp.Worksheets[1].Cells[now1,1];
   end;
 label2.Caption:=s;
 ExcelApp.Worksheets[1].Cells[now1,1].value:='';
 Timer1.Enabled:=true;
end;

procedure Tpart2.Timer1Timer(Sender: TObject);
var s:string;
begin
    if Label1.Caption='OVER' then Label1.Caption:='100';
    s:=inttostr(strtoint(label1.Caption)-1);
    label1.Caption:=s;
    if s='0' then begin Timer1.Enabled:=false;  label1.Caption:='OVER'; end;
end;

procedure Tpart2.FormCreate(Sender: TObject);
var lj,lujing:string;
begin
   label3.hide;
   label2.Hide;
   now1:=1;
   lujing:=ExtractFilePath(Application.Exename);
   ExcelApp := CreateOleObject( 'Excel.Application' );
   lj:=lujing+'Excel/p2.xls';
   ExcelApp.WorkBooks.Open(lj);
end;

procedure Tpart2.Image2Click(Sender: TObject);
var s:string;
begin
 label3.Hide;
 Timer1.Enabled:=true;
 s:=ExcelApp.Worksheets[1].Cells[now1,1];
 while s='' do
   begin
      inc(now1);
      s:=ExcelApp.Worksheets[1].Cells[now1,1];
   end;
 label2.Caption:=s;
 ExcelApp.Worksheets[1].Cells[now1,1].value:='';
end;

procedure Tpart2.Image3Click(Sender: TObject);
begin
label3.Show;
label3.Caption:=ExcelApp.Worksheets[1].Cells[now1,2];
Timer1.Enabled:=false;
end;

procedure Tpart2.Image5Click(Sender: TObject);
begin
close;
end;

end.
