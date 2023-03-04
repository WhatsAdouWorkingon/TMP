unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Unit2, Unit3, Unit4, Buttons, jpeg;

type
  Tform1 = class(TForm)
    p1: TImage;
    p2: TImage;
    p3: TImage;
    Image1: TImage;
    Image2: TImage;
    procedure p1Click(Sender: TObject);
    procedure p2Click(Sender: TObject);
    procedure p3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
   
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form1: Tform1;
  part2: Tpart2;
implementation

{$R *.dfm}



procedure Tform1.p1Click(Sender: TObject);
begin
form1.Hide;
part1.show;
end;

procedure Tform1.p2Click(Sender: TObject);
begin           
part2:=Tpart2.Create(nil);
 form1.Hide;
part2.showmodal;
part2.free;
end;

procedure Tform1.p3Click(Sender: TObject);
begin
form1.Hide;
part3.show;
end;

procedure Tform1.Image2Click(Sender: TObject);
begin
close;
end;

end.
