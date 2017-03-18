unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Math;

type
  TForm1 = class(TForm)
    ImgPozadi: TImage;
    Img1: TImage;
    Img2: TImage;
    Img3: TImage;
    Img4: TImage;
    Img5: TImage;
    Img6: TImage;
    Img7: TImage;
    Img8: TImage;
    Img9: TImage;
    Img0: TImage;
    ImgPlus: TImage;
    ImgRovnaSe: TImage;
    ImgMinus: TImage;
    LblVypocet: TLabel;
    LblVysledek: TLabel;
    ImgAllClean: TImage;
    ImgKrat: TImage;
    ImgDeleno: TImage;
    ImgCarka: TImage;
    ImgAns: TImage;
    ImgClean: TImage;
    ImgPi: TImage;
    ImgOff: TImage;
    ImgNaDruhou: TImage;
    ImgOdmocnina: TImage;
    ImgFaktorial: TImage;
    ImgSin: TImage;
    ImgCos: TImage;
    ImgTan: TImage;
    ImgNaTreti: TImage;
    Img2nd: TImage;
    ImgPZavorka: TImage;
    Label1: TLabel;
    procedure EnterNumber(number: string);
    procedure EnterZnamenko(znamenko: string);
    procedure Img1Click(Sender: TObject);
    procedure Img2Click(Sender: TObject);
    procedure Img3Click(Sender: TObject);
    procedure Img4Click(Sender: TObject);
    procedure Img5Click(Sender: TObject);
    procedure Img6Click(Sender: TObject);
    procedure Img7Click(Sender: TObject);
    procedure Img8Click(Sender: TObject);
    procedure Img9Click(Sender: TObject);
    procedure Img0Click(Sender: TObject);
    procedure ImgAllCleanClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImgMinusClick(Sender: TObject);
    procedure ImgRovnaSeClick(Sender: TObject);
    procedure ImgPlusClick(Sender: TObject);
    procedure ImgKratClick(Sender: TObject);
    procedure ImgDelenoClick(Sender: TObject);
    procedure ImgCarkaClick(Sender: TObject);
    procedure ImgAnsClick(Sender: TObject);
    procedure ImgCleanClick(Sender: TObject);
    procedure ImgOffClick(Sender: TObject);
    procedure ImgPiClick(Sender: TObject);
    procedure ImgNaDruhouClick(Sender: TObject);
    procedure ImgFaktorialClick(Sender: TObject);
    procedure ImgOdmocninaClick(Sender: TObject);
    procedure ImgPZavorkaClick(Sender: TObject);
    procedure Checking();
    procedure ImgSinClick(Sender: TObject);
    procedure ImgCosClick(Sender: TObject);
    procedure ImgTanClick(Sender: TObject);
    procedure Img2ndClick(Sender: TObject);
    procedure ImgNaTretiClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ZeroNumber,ZnamenkoPressed,ImgRovnaSePressed,CisloPressed,Ochrana,carka,
  ImgAnsPressed,DruhaCast,moznost1,krat: boolean;
  PoloAns1,MeziAns,Ans, PomoAns{ImgAns},odmocnina,fce: real;
  Snumber: string;
  Operace,moznost: integer;



implementation

{$R *.dfm}








procedure TForm1.ImgOffClick(Sender: TObject);
begin
   Application.Terminate;
end;



procedure TForm1.Img0Click(Sender: TObject);
begin
 EnterNumber('0');
end;

procedure TForm1.Img1Click(Sender: TObject);
begin
 EnterNumber('1');
end;

procedure TForm1.Img2Click(Sender: TObject);
begin
 EnterNumber('2');
end;

procedure TForm1.Img2ndClick(Sender: TObject);
begin
 if DruhaCast=true then
 begin
 DruhaCast:=false;
 Label1.visible:=false;
 end
  else
  begin
 DruhaCast:=true;
 Label1.visible:=true;
  end;
end;

procedure TForm1.Img3Click(Sender: TObject);
begin
 EnterNumber('3');
end;

procedure TForm1.Img4Click(Sender: TObject);
begin
 EnterNumber('4');
end;

procedure TForm1.Img5Click(Sender: TObject);
begin
 EnterNumber('5');
end;

procedure TForm1.Img6Click(Sender: TObject);
begin
 EnterNumber('6');
end;

procedure TForm1.Img7Click(Sender: TObject);
begin
 EnterNumber('7');
end;

procedure TForm1.Img8Click(Sender: TObject);
begin
 EnterNumber('8');
end;

procedure TForm1.Img9Click(Sender: TObject);
begin
 EnterNumber('9');
end;

procedure TForm1.ImgPiClick(Sender: TObject);
begin
if moznost<>2 then begin

 if moznost=1 then
                begin
                 MeziAns:=MeziAns+(strtofloat(snumber)*PI);
                 Snumber:='0';
                 EnterNumber('3,14159265');

                 operace:=99 ;
                end
  else
 EnterNumber('3,14159265');

 moznost:=2;
 carka:=true;
 ZeroNumber:=true;
  DruhaCast:=false;
  Label1.visible:=false;
end;
end;

procedure TForm1.ImgAnsClick(Sender: TObject);
begin

  if moznost=4 then
                             begin
                              LblVypocet.caption:='0';
                              Snumber:='0';
                              PoloAns1:=0;
                              MeziAns:=0;
                              ZnamenkoPressed:=false;

                            end;
 if moznost=1 then
                begin
                 MeziAns:=MeziAns+(strtofloat(snumber)*strtofloat(LblVysledek.Caption));

                 Snumber:='0';
                 operace:=99 ;
                end
                else
                  Snumber:=LblVysledek.Caption;

 if (LblVypocet.Caption='0')or (LblVypocet.Caption='') or (LblVypocet.Caption='Nelze dìlit nulou!!!')
                           then LblVypocet.Caption:='Ans'
                             else LblVypocet.Caption:=LblVypocet.Caption+'Ans';

 ZeroNumber:=true;
if moznost<5 then moznost:=2;

 DruhaCast:=false;
 Label1.visible:=false;

end;
{operace:
 1-sèítání
 2-odèítání
 3-násobení
 4-dìlení
 100-nic}



procedure TForm1.ImgCleanClick(Sender: TObject);
begin
 Operace:=100;
 PoloAns1:=0;
 MeziAns:=0;
 LblVypocet.Caption:='';
 Snumber:='0';
 ZeroNumber:=false;
 PoloAns1:=0;
 carka:=false;
 ImgAnsPressed:=false;
 moznost:=0;
 DruhaCast:=false;
 Label1.visible:=false;
  moznost1:=true;
  fce:=1;
end;



procedure TForm1.ImgAllCleanClick(Sender: TObject);
begin
 Operace:=100;
 PoloAns1:=0;
 MeziAns:=0;
 LblVypocet.Caption:='';
 Snumber:='0';
 LblVysledek.Caption:='0';
 ZeroNumber:=false;
 PoloAns1:=0;
 moznost:=-1;
 carka:=false;
 ImgAnsPressed:=false;
 DruhaCast:=false;
 Label1.visible:=false;
  moznost1:=true;
  ZnamenkoPressed:=false;
  fce:=1;
end;



procedure TForm1.ImgCarkaClick(Sender: TObject);
begin

   if (Carka=false) then
    begin
      if Snumber='0' then
       begin
        if moznost=1 then LblVypocet.caption:=LblVypocet.caption+','
         else
        
        LblVypocet.caption:=LblVypocet.caption+'0,';
        Snumber:='0,';
       end
       else
        EnterNumber(',');
    end;

 carka:=true;
 DruhaCast:=false;
 Label1.visible:=false;
end;



procedure TForm1.ImgDelenoClick(Sender: TObject);
begin
if krat=false then  begin

Checking;
 if ZnamenkoPressed=false then MeziAns:=strtofloat(Snumber)
  else begin
  case operace of
 1: begin
     Ans:=meziAns;
     MeziAns:=0;
     MeziAns:=strtofloat(Snumber);
    end;
 2: begin
     Ans:=meziAns;
     MeziAns:=0;
     MeziAns:=strtofloat(Snumber)*(-1);
    end;
 3: MeziAns:=MeziAns*strtofloat(Snumber);
 4: begin
     if Snumber<>'0' then MeziAns:=MeziAns/strtofloat(Snumber)
        else begin
        LblVypocet.caption:='ERROR!!!';
        ImgRovnaSePressed:=true;
        end;
    end;

 end;
  end;
 krat:=true ;
 Operace:=4;
 EnterZnamenko(Char(247));
 ZnamenkoPressed:=true;
 DruhaCast:=false;
 Label1.visible:=false;
 ZeroNumber:=true;
  moznost1:=false;
   fce:=1;
end;
end;



procedure TForm1.ImgKratClick(Sender: TObject);
begin
if krat=false then  begin

Checking;
if ZnamenkoPressed=false then MeziAns:=strtofloat(Snumber)
  else begin
 case operace of
 1: begin
     Ans:=meziAns;
     MeziAns:=0;
     MeziAns:=strtofloat(Snumber);
    end;
 2: begin
     Ans:=meziAns;
     MeziAns:=0;
     MeziAns:=strtofloat(Snumber)*(-1);
    end;
 3: MeziAns:=MeziAns*strtofloat(Snumber);
 4: begin
     if Snumber<>'0' then MeziAns:=MeziAns/strtofloat(Snumber)
        else LblVypocet.caption:='Nelze dìlit nulou!!!';
    end;


 end;
 end;
  DruhaCast:=false;
 Operace:=3;
 EnterZnamenko(Char(215));
 ZnamenkoPressed:=true;
 Label1.visible:=false;
 ZeroNumber:=true;
 moznost1:=false;
  krat:=true ;
   fce:=1;
end;
 {chci zazávorkovat násobení, takže si uložím do promnìné to,
 co už jsem vypoèítal a podle potøeby pøiètu nebo odeètu Snumber. Následnì spustím samotné násobení.
 Po stisknutí jiného tlaèítka nebo rovnáse ukonèím samotné násobení a pøidám promnìnou s pùvodním výsledkem}
end;


procedure TForm1.ImgMinusClick(Sender: TObject);
begin
if krat=false then  begin
Checking;
if ZnamenkoPressed=false then MeziAns:=strtofloat(Snumber)
  else begin
  case operace of
  1: MeziAns:=MeziAns+strtofloat(Snumber);
  2: MeziAns:=MeziAns-strtofloat(Snumber);
  3: MeziAns:=MeziAns*strtofloat(Snumber)+Ans;
  4: begin
      if Snumber<>'0' then MeziAns:=MeziAns/strtofloat(Snumber)
         else LblVypocet.caption:='Nelze dìlit nulou!!!';
     end;
   end;
  end;
  Operace:=2;
  EnterZnamenko('-');
  ZnamenkoPressed:=true;
  DruhaCast:=false;
  Label1.visible:=false;
  ZeroNumber:=true;
  moznost1:=false;
   krat:=true ;
    fce:=1;
end;
 end;



procedure TForm1.ImgPlusClick(Sender: TObject);
begin

if krat=false then  begin
Checking;

if ZnamenkoPressed=false then MeziAns:=strtofloat(Snumber)
  else begin
  case operace of
  1: MeziAns:=MeziAns+strtofloat(Snumber);
  2: MeziAns:=MeziAns-strtofloat(Snumber);
  3: MeziAns:=MeziAns*strtofloat(Snumber)+Ans;
  4: begin
      if Snumber<>'0' then MeziAns:=MeziAns/strtofloat(Snumber)
         else LblVypocet.caption:='Nelze dìlit nulou!!!';
     end;


end;
  end;
  krat:=true ;
 moznost1:=false;
 EnterZnamenko('+');
 Operace:=1;
 ZnamenkoPressed:=true;
 DruhaCast:=false;
 Label1.visible:=false;
  fce:=1;
 ZeroNumber:=true;
end;
end;




procedure TForm1.ImgNaDruhouClick(Sender: TObject);
begin
if moznost=4 then
               begin
               PomoAns:=MeziAns*MeziAns ;
                EnterZnamenko(char(94)+'2');
                Snumber:=floattostr(PomoAns);
               end
              else
               begin
if moznost=1 then begin


                PomoAns:=(strtofloat(Snumber)*strtofloat(Snumber));
 EnterZnamenko(char(94)+'2');
       Snumber:=floattostr(PomoAns);


 moznost:=2;
end;
 PomoAns:=0;
 if ZnamenkoPressed=true then ZeroNumber:=true
                            else ZeroNumber:=false;

 DruhaCast:=false;
 Label1.visible:=false;

               end;
end;
procedure TForm1.ImgNaTretiClick(Sender: TObject);
begin

if DruhaCast=true then
          begin
           if moznost<>2 then begin
           if moznost=1 then 
               begin
               fce:=strtofloat(Snumber);
              Snumber:='0';
              end;
            EnterZnamenko('sqrt'+char(94)+'3(');
            moznost:=12;
           end;
          end
          else
if moznost=1 then
          begin
 if moznost=4 then PomoAns:=MeziAns*MeziAns*MeziAns
              else
                PomoAns:=(strtofloat(Snumber)*strtofloat(Snumber)*strtofloat(Snumber));
 EnterZnamenko(char(94)+'3');
 Snumber:=floattostr(PomoAns);



 moznost:=2;
 PomoAns:=0;
 if ZnamenkoPressed=true then ZeroNumber:=true
                            else ZeroNumber:=false;
          end;

  DruhaCast:=false;
  Label1.visible:=false;
  
end;

procedure TForm1.ImgFaktorialClick(Sender: TObject);
var F,I:LongInt;N:real;
begin
if moznost=1 then begin
N:=strtofloat(Snumber) ;
F:=1; I:=0;
repeat
I:=I+1;
F:=F*I;
until I>=N;
PomoAns:=(F); {Faktorial:=F;}
EnterNumber('!');
Snumber:= floattostr(PomoAns);
 if ZnamenkoPressed=true then ZeroNumber:=true
                            else ZeroNumber:=false;

 moznost:=2;
 PomoAns:=0 ;
 DruhaCast:=false;
 Label1.visible:=false;
end;
end;

procedure TForm1.ImgOdmocninaClick(Sender: TObject);
begin
if moznost<>2 then begin
if moznost<5 then
 begin
  EnterZnamenko('sqrt(');
  moznost:=5;
  DruhaCast:=false;
  Label1.visible:=false;
 end;
end;

end;

procedure TForm1.ImgSinClick(Sender: TObject);
begin
if moznost<>2 then begin

if moznost=1 then 
               begin
               fce:=strtofloat(Snumber);
              Snumber:='0';
               end;

if moznost<5 then
 begin
  if DruhaCast=true then
  begin
   EnterZnamenko('Sin-1(');
   moznost:=9;
  end
  else
  begin
 EnterZnamenko('Sin(');
 moznost:=6;
  end;
  DruhaCast:=false;
  Label1.visible:=false;
 end;
end;
end;

procedure TForm1.ImgTanClick(Sender: TObject);
begin
if moznost<>2 then begin
if moznost=1 then 
               begin
               fce:=strtofloat(Snumber);
              Snumber:='0';
              
               end;
if moznost<5 then
begin
  if DruhaCast=true then
  begin
   EnterZnamenko('Tan-1(');
   moznost:=11;
  end
  else
 begin
 EnterZnamenko('Tan(');
 moznost:=8;
 end;
  DruhaCast:=false;
  Label1.visible:=false;


 end;
end;
end;

procedure TForm1.ImgCosClick(Sender: TObject);
begin
if moznost<>2 then begin
if moznost=1 then 
               begin
               fce:=strtofloat(Snumber);
              Snumber:='0';
              
               end;
if moznost<5 then
 begin
  if DruhaCast=true then
  begin
   EnterZnamenko('Cos-1(');
   moznost:=10;
  end
  else
  begin
 EnterZnamenko('Cos(');
 moznost:=7 ;
  end;
  DruhaCast:=false;
  Label1.visible:=false;
end;
end;
end;










procedure TForm1.ImgRovnaSeClick(Sender: TObject);
begin

 if moznost<>4 then
 begin
try
Checking;
 if (carka=true) and (Snumber='0,') then LblVypocet.Caption:=LblVypocet.caption+'0';
{operace:
 1-sèítání
 2-odèítání
 3-násobení
 4-dìlení
 100-nic}
 case operace of
  1: LblVysledek.Caption:=floattostr(MeziAns+strtofloat(Snumber));
  2: LblVysledek.Caption:=floattostr(MeziAns-strtofloat(Snumber));
  3: begin
      LblVysledek.Caption:=floattostr(MeziAns*strtofloat(Snumber)+Ans);
      Ans:=0;
     end;
  4: begin
      if (Snumber<>'0') then
       begin
         MeziAns:=MeziAns/strtofloat(Snumber);
         MeziAns:=Ans+MeziAns;
         LblVysledek.caption:=floattostr(roundto(MeziAns,-15));
        end
         else LblVypocet.caption:='Nelze dìlit nulou!!!';
     end;
//   5:  LblVysledek.caption:=floattostr(mezians+na2);
   98: LblVysledek.caption:=Snumber;
   99: LblVysledek.caption:=floattostr(MeziAns);
end;
  LblVysledek.caption:=floattostr(roundto(strtofloat(LblVysledek.Caption),-15));
 if ZeroNumber=false then LblVysledek.Caption:=Snumber;



except
 LblVypocet.caption:='ERROR';

end;
 ImgRovnaSePressed:=true;
 Operace:=100;
 moznost:=4;
 DruhaCast:=false;
 Label1.visible:=false;
 moznost1:=true
end;
end;






procedure TForm1.EnterNumber (number: string);
begin

 if (moznost<>2) then
                         begin

 if moznost=4 then
                             begin
                              LblVypocet.caption:='0';
                              Snumber:='0';
                              PoloAns1:=0;
                              MeziAns:=0;
                              ZnamenkoPressed:=false;
                              ImgRovnaSePressed:=false;
                            end;
 if Number='3,14159265' then
                        begin
                         if (LblVypocet.Caption='0')or (LblVypocet.Caption='') or (LblVypocet.Caption='Nelze dìlit nulou!!!')
                           then LblVypocet.Caption:='PI'
                             else LblVypocet.Caption:=LblVypocet.Caption+'PI';
                        end
                        else
                         begin
 
                         if (LblVypocet.Caption='0')or (LblVypocet.Caption='') or (LblVypocet.Caption='Nelze dìlit nulou!!!')
                           then LblVypocet.Caption:=number
                             else LblVypocet.Caption:=LblVypocet.Caption+number;
                         end;
 if (Snumber='') or (Snumber='0') then Snumber:=number
                             else Snumber:=Snumber+number;


 CisloPressed:=true;
 if (moznost<5) then moznost:=1;
  krat:=false;
 DruhaCast:=false;
 Label1.visible:=false;
                         end;
end;

procedure TForm1.EnterZnamenko (znamenko: string);
begin


 if (carka=true) and (Snumber='0,') then LblVypocet.Caption:=LblVypocet.caption+'0';
 if (moznost=4)and ((znamenko='sqrt(')or(znamenko='Sin(')or(znamenko='Cos(')or(znamenko='Tan(')or(znamenko='Sin-1(')or(znamenko='Cos-1(')or(znamenko='Tan-1(')or(znamenko='sqrt'+char(94)+'3(')) then
                              begin
                              LblVypocet.Caption:='';
                              moznost:=5;
                              end;


 if moznost=4 then
         begin
                                if (LblVypocet.Caption='ERROR') then
                                 begin
                                  (LblVypocet.Caption:='0'+znamenko);
                                   MeziAns:=0;
                                 end
                                 else
                                 begin
                                   LblVypocet.Caption:='Ans'+znamenko;
                                   MeziAns:=strtofloat(LblVysledek.caption);
                                 end;
                               ImgRovnaSePressed:=false;
                              end
                               else
                                begin
                                 if (LblVypocet.Caption='0') or (LblVypocet.Caption='') or (LblVypocet.Caption='ERROR') then
                                    begin
                                     if (operace=3)or(operace=4) then LblVypocet.Caption:='0'+znamenko
                                      else LblVypocet.Caption:=''+znamenko;
                                    end
                                    else LblVypocet.Caption:=LblVypocet.Caption+znamenko;
                                end;


 DruhaCast:=false;
 if (moznost<5) then moznost:=3;
 carka:=false;
 CisloPressed:=false;
 ZeroNumber:=true;
 Snumber:='0';
 Label1.visible:=false;

 
 
end;





procedure TForm1.ImgPZavorkaClick(Sender: TObject);
begin

 case moznost of
  5: begin
      Snumber:=(floattostr((Power(strtofloat(Snumber),1/2))*fce));
      LblVypocet.caption:=LblVypocet.caption+')';
      if moznost1=true then     ZnamenkoPressed:=false ;

    end;
  6: begin
     Snumber:=floattostr((sin(degtorad(strtofloat(Snumber)))*fce));
     LblVypocet.caption:=LblVypocet.caption+')';
     if moznost1=true then     ZnamenkoPressed:=false ;
     end;
  7: begin
       Snumber:=(floattostr(cos(degtorad(strtofloat(Snumber)))*fce));
       LblVypocet.caption:=LblVypocet.caption+')';
       if moznost1=true then     ZnamenkoPressed:=false ;
      end;
  8: begin
       Snumber:=(floattostr(tan(degtorad(strtofloat(Snumber)))*fce));
       LblVypocet.caption:=LblVypocet.caption+')';
       if moznost1=true then     ZnamenkoPressed:=false ;
      end;
  9: begin
       PomoAns:=strtofloat(Snumber);
       if PomoAns>1 then
          begin LblVypocet.caption:='ERROR';   {!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!ochrana}
       ImgRovnaSePressed:=true;
       end
       else
       begin
       Snumber:=floattostr((radtodeg(arcsin(strtofloat(Snumber))))*fce);
       LblVypocet.caption:=LblVypocet.caption+')';
       PomoAns:=0;
       if moznost1=true then     ZnamenkoPressed:=false ;
       end;
     end;
  10: begin
       PomoAns:=strtofloat(Snumber);
       if PomoAns>1 then
       begin LblVypocet.caption:='ERROR';   {!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!ochrana}
       ImgRovnaSePressed:=true;
       end
       else
       begin
       Snumber:=(floattostr(radtodeg(arccos(strtofloat(Snumber)))*fce));
       LblVypocet.caption:=LblVypocet.caption+')';
       PomoAns:=0;
       if moznost1=true then     ZnamenkoPressed:=false ;
       end;
     end;
  11: begin
       Snumber:=(floattostr(radtodeg(arctan(strtofloat(Snumber)))*fce));
       LblVypocet.caption:=LblVypocet.caption+')';
       PomoAns:=0;
       if moznost1=true then     ZnamenkoPressed:=false ;
     end;
  12: begin
       Snumber:=(floattostr((Power(strtofloat(Snumber),1/3))*fce));
       LblVypocet.caption:=LblVypocet.caption+')';
       if moznost1=true then     ZnamenkoPressed:=false ;
  end;
 end;
   DruhaCast:=false;
operace:=98;
moznost:=2;
Label1.visible:=false;
fce:=1;
end;


procedure TForm1.Checking();
begin
  case moznost of
   5: begin
       Snumber:=(floattostr(Power(strtofloat(Snumber),1/2)*fce));
       LblVypocet.caption:=LblVypocet.caption+')';
       if moznost1=true then     ZnamenkoPressed:=false ;
      end;
   6: begin
       Snumber:=floattostr(sin(degtorad(strtofloat(Snumber)))*fce);
       LblVypocet.caption:=LblVypocet.caption+')';
       if moznost1=true then     ZnamenkoPressed:=false ;
      end;
   7: begin
       Snumber:=floattostr(cos(degtorad(strtofloat(Snumber)))*fce);
       LblVypocet.caption:=LblVypocet.caption+')';
       if moznost1=true then     ZnamenkoPressed:=false ;
      end;
   8: begin
       Snumber:=floattostr(tan(degtorad(strtofloat(Snumber)))*fce);
       LblVypocet.caption:=LblVypocet.caption+')';
       if moznost1=true then     ZnamenkoPressed:=false ;
      end;
   9: begin
       PomoAns:=strtofloat(Snumber);
       if PomoAns>1 then        begin LblVypocet.caption:='ERROR';   {!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!ochrana}
       ImgRovnaSePressed:=true;
       end
       else
       begin
       Snumber:=floattostr(radtodeg(arcsin(strtofloat(Snumber)))*fce);
       LblVypocet.caption:=LblVypocet.caption+')';
       PomoAns:=0;
       if moznost1=true then     ZnamenkoPressed:=false ;
       end;
     end;
   10: begin
       PomoAns:=strtofloat(Snumber);
       if PomoAns>1 then        begin LblVypocet.caption:='ERROR';   {!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!ochrana}
       ImgRovnaSePressed:=true;
       end
       else
       begin
       Snumber:=floattostr(radtodeg(arccos(strtofloat(Snumber)))*fce);
       LblVypocet.caption:=LblVypocet.caption+')';
       PomoAns:=0;
       if moznost1=true then     ZnamenkoPressed:=false ;
       end;
     end;
    11: begin
       Snumber:=floattostr(radtodeg(arctan(strtofloat(Snumber)))*fce);
       LblVypocet.caption:=LblVypocet.caption+')';
       PomoAns:=0;
       if moznost1=true then     ZnamenkoPressed:=false ;
     end;
    12: begin
        Snumber:=(floattostr(Power(strtofloat(Snumber),1/3)*fce));
        LblVypocet.caption:=LblVypocet.caption+')';
        if moznost1=true then     ZnamenkoPressed:=false ;
        end;
  end;

  if operace=100 then operace:=98;
  if moznost<>4 then moznost:=0;
  DruhaCast:=false;
  Label1.visible:=false;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 Operace:=100;
 PoloAns1:=0;
 MeziAns:=0;
 LblVypocet.Caption:='';
 Snumber:='0';
 LblVysledek.Caption:='0';
 ZeroNumber:=false;
 CisloPressed:=false;
 carka:=false;
 ImgAnsPressed:=false;
 moznost:=0;
 DruhaCast:=false;
 Label1.visible:=false;
 moznost1:=true;
 fce:=1;
end;



end.
