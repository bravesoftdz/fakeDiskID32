library fakeDiskID32;

{
  ���ڽٳ�DiskID32.dll ��ƭ DiskID32 ���ؽ����
  mail: h4ck@163.com
  QQ: 222411
}

uses
  SysUtils,
  Windows;

type
 TMyCharArray = array [0..31] of char;

function DiskID32(var DiskModel:TMyCharArray;var DiskID:TMyCharArray): BOOL;stdcall;
var
  factory,serial :Pchar;
begin
  factory:='I am factory';
  serial := 'I am serial';
  StrCopy(@DiskModel,factory);
  StrCopy(@DiskID,serial);
  Result := True;
end;

{$R *.res}

exports
  DiskID32;

begin

end.
 