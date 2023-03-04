unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, StdCtrls, ComObj, jpeg;

type
  Tpart1 = class(TForm)
    Label1: TLabel;
    Timer1: TTimer;
    tti: TImage;
    kkey1: TImage;
    kkey2: TImage;
    kkey3: TImage;
    kkey4: TImage;
    kkey5: TImage;
    kkey6: TImage;
    ti: TLabel;
    key1: TLabel;
    key2: TLabel;
    key3: TLabel;
    key4: TLabel;
    key5: TLabel;
    key6: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure ttiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure kkey1Click(Sender: TObject);
    procedure kkey2Click(Sender: TObject);
    procedure kkey3Click(Sender: TObject);
    procedure kkey4Click(Sender: TObject);
    procedure kkey5Click(Sender: TObject);
    procedure kkey6Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure key1Click(Sender: TObject);
    procedure key2Click(Sender: TObject);
    procedure key3Click(Sender: TObject);
    procedure key4Click(Sender: TObject);
    procedure key5Click(Sender: TObject);
    procedure key6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      lujing:string;
  end;

var
  part1: Tpart1;
  ExcelApp: Variant;
implementation

uses Unit1;
var
  t,nt:Tdatetime;
  i,now1:integer;
  xs,s:string;
  timu,g1,g2,g3,g4,g5,g6:array[1..1000] of string;
{$R *.dfm}
procedure Tpart1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.show;
end;

procedure Tpart1.Timer1Timer(Sender: TObject);
begin
    if i > 0 then i:=i-1 else i:=1000;
    nt:=now();
    xs:=formatdatetime('hh:mm:ss',nt-t);
    if xs='00:00:60' then Timer1.Enabled:=false;
    s:=inttostr(59 - strtoint(copy(xs,7,2)));
    if length(s)=1 then s :='0'+s;
    label1.Caption:=s;
    if s='00' then begin
    Timer1.Enabled:=false;
    label1.Caption:='OVER';
    ti.Caption:='œ¬“ªÃ‚';
    key1.Caption:=g1[now1];
    key2.Caption:=g2[now1];
    key3.Caption:=g3[now1];
    key4.Caption:=g4[now1];
    key5.Caption:=g5[now1];
    key6.Caption:=g6[now1];
    end;
end;

procedure Tpart1.ttiClick(Sender: TObject);
begin
 inc(now1);
 ti.Caption:=timu[now1];
 key1.Caption:='key1';
 key2.Caption:='key2';
 key3.Caption:='key3';
 key4.Caption:='key4';
 key5.Caption:='key5';
 key6.Caption:='key6';
 Timer1.Interval:=1;
 Timer1.Enabled:=true;
 t:=now();
end;

procedure Tpart1.FormCreate(Sender: TObject);
var lj:string; i:longint;
begin
   now1:=0;
   lujing:=ExtractFilePath(Application.Exename);
   ExcelApp := CreateOleObject( 'Excel.Application' );
   lj:=lujing+'Excel/p1.xls';
   ExcelApp.WorkBooks.Open(lj);
   for i:=1 to 200 do
     begin
        timu[i-1]:=ExcelApp.Worksheets[1].Cells[i,1];
        g1[i-1]:=ExcelApp.Worksheets[1].Cells[i,2];
        g2[i-1]:=ExcelApp.Worksheets[1].Cells[i,3];
        g3[i-1]:=ExcelApp.Worksheets[1].Cells[i,4];
        g4[i-1]:=ExcelApp.Worksheets[1].Cells[i,5];
        g5[i-1]:=ExcelApp.Worksheets[1].Cells[i,6];
        g6[i-1]:=ExcelApp.Worksheets[1].Cells[i,7];
     end;
   ExcelApp.Quit;
end;

procedure Tpart1.kkey1Click(Sender: TObject);
begin
  key1.Caption:=g1[now1];
end;

procedure Tpart1.kkey2Click(Sender: TObject);
begin
key2.Caption:=g2[now1];
end;

procedure Tpart1.kkey3Click(Sender: TObject);
begin
key3.Caption:=g3[now1];
end;

procedure Tpart1.kkey4Click(Sender: TObject);
begin
key4.Caption:=g4[now1];
end;

procedure Tpart1.kkey5Click(Sender: TObject);
begin
key5.Caption:=g5[now1];
end;

procedure Tpart1.kkey6Click(Sender: TObject);
begin
key6.Caption:=g6[now1];
end;

procedure Tpart1.Image2Click(Sender: TObject);
begin
close;
end;

procedure Tpart1.key1Click(Sender: TObject);
begin
   key1.Caption:=g1[now1];
end;

procedure Tpart1.key2Click(Sender: TObject);
begin
  key2.Caption:=g2[now1];
end;

procedure Tpart1.key3Click(Sender: TObject);
begin
key3.Caption:=g3[now1];
end;

procedure Tpart1.key4Click(Sender: TObject);
begin
key4.Caption:=g4[now1];
end;

procedure Tpart1.key5Click(Sender: TObject);
begin
key5.Caption:=g5[now1];
end;

procedure Tpart1.key6Click(Sender: TObject);
begin
key6.Caption:=g6[now1];
end;

end.
