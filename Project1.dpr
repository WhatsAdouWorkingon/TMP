program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {form1},
  Unit2 in 'Unit2.pas' {part1},
  Unit3 in 'Unit3.pas' {part2},
  Unit4 in 'Unit4.pas' {part3},
  Unit5 in 'Unit5.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '1699杯知识竞赛半决赛';
  Application.CreateForm(Tform1, form1);
  Application.CreateForm(Tpart1, part1);
  Application.CreateForm(Tpart3, part3);
  Application.Run;
end.
