unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Unit5, jpeg;

type
  Tpart3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gg(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  part3: Tpart3;
  tm: array[1..10,1..10] of timage ;
implementation

uses Unit1;


{$R *.dfm}
procedure Tpart3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
form1.show;
end;

procedure Tpart3.gg(Sender: TObject);
begin
Form5:=TForm5.Create(nil);
form5.ShowModal;
form5.Free;
(sender as timage).Picture:=image1.Picture;
end;


procedure Tpart3.FormCreate(Sender: TObject);
var i,j:longint;
begin
  for i:=1 to 6 do
    for j:=1 to 4 do
      begin
        tm[i,j]:=timage.Create(nil);
        tm[i,j].parent:=self;
        tm[i,j].Height:=268;
        tm[i,j].Width:=352;
        tm[i,j].Left:=358+352*(i-1);
        tm[i,j].Top:=229+268*(j-1);
        // if i mod 2=0 then tm[i,j].Top:=tm[i,j].Top+60;
        tm[i,j].Stretch:=true;
        tm[i,j].Visible:=true;
        tm[i,j].OnClick:=gg;
      end;

end;

procedure Tpart3.Image3Click(Sender: TObject);
begin
close;
end;

end.
