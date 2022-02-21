package time;

import java.text.DecimalFormat;

public class time implements Comparable <time>
{
 private int hour, minute, second; // atributos privados do tempo

 public time () // construtor nulo
 { hour = minute = second = 0; }

 public time (int pHour, int pMin, int pSec) // construtor inicializador
 {
  if (validTime (pHour, pMin, pSec))
  { hour = pHour; minute = pMin; second = pSec; }
 }

 public time (time pTime) // construtor copia
 {
  if (pTime != null)
  { hour = pTime.getHour (); minute = pTime.getMinute (); second = pTime.getSecond (); }
 }

 public time (int pTotalTime) // construtor de tempo total em segundos
 {
	 
  int h = pTotalTime / 3600; // calcular as horas
  pTotalTime = pTotalTime % 3600; // calcular os restantes segundos
  int m = pTotalTime / 60; // calcular os minutos
  int s = pTotalTime % 60; // calcular os segundos

  if (validTime (h, m, s)) { hour = h; minute = m; second = s; }  
 }

 public int getHour () // selector da componente horas
 { return hour; }

 public int getMinute () // selector da componente minutos
 { return minute; }

 public int getSecond () // selector da componente segundos
 { return second; }

 public void setHour (int pHour) // modificador da componente horas
 { if (pHour >= 0 && pHour <= 23) hour = pHour; }

 public void setMinute (int pMin) // modificador da componente minutos
 { if (pMin >= 0 && pMin <= 59) minute = pMin; }

 public void setSecond (int pSec) // modificador da componente segundos
 { if (pSec >= 0 && pSec <= 59) second = pSec; }

 public boolean isZero () // comparador de nulidade
 { return hour == 0 && minute == 0 && second == 0; }

 public boolean equals (Object pObj) // comparador de igualdade
 {
  if (this == pObj) return true;
  if (!(pObj instanceof time)) return false;

  time time = (time) pObj;
  return (hour == time.getHour () && minute == time.getMinute () 
			&& second == time.getSecond ());
 }

 public int compareTo (time pTime) // operador relacional (> == <)
 { return this.totalSeconds () - pTime.totalSeconds (); }

 public String toString () // tempo no formato hh:mm:ss
 {
  DecimalFormat twoDigits = new DecimalFormat ("00");
  
  return twoDigits.format (hour) + ":" + twoDigits.format (minute) + ":" 
		 + twoDigits.format (second);
 }

 public time nextTime ()  // tempo seguinte (mais um segundo)
 {
  int h = hour, m = minute, s = second;

  if (s < 59) s++;
  else
  {
   s = 0;
   if (m < 59) m++; else { m = 0; h++; }
  }

  if (h > 23) return null; else return new time (h, m, s);
 }
 
 public time previewTime () // tempo anterior (menos um segundo)
 {
  int h = hour, m = minute, s = second;

  if (s > 1) s--;
  else
  {
   s = 59;
   if (m > 1) m--; else { m = 59; h--; }
  }
 
  if (h < 0) return null; else return new time (h, m, s);
 }

 public time addTime (time pTime) // somar dois tempos
 {
  if (pTime == null) return null;

  int h = hour, m = minute, s = second;
  
  s += pTime.getSecond ();
  if (s > 59) { m++; s -= 60; }
  m += pTime.getMinute ();
  if (m > 59) { h++; m -= 60; }
  h += pTime.getHour ();

  if (h > 23) return null; else return new time (h, m, s);
 }

 public time subTime (time pTime) // subtrair dois tempos
 {
  if (pTime == null || this.compareTo (pTime) < 0) return null;

  int h = hour, m = minute, s = second;

  s -= pTime.getSecond ();
  if (s < 0) { m--; s += 60; }
  m -= pTime.getMinute ();
  if (m < 0) { h--; m += 60; }
  h -= pTime.getHour ();
  
  return new time (h, m, s);
 }

 // metodo privado para converter o tempo para segundos
 private int totalSeconds ()
 { return hour * 3600 + minute * 60 + second; }

 // metodo privado para validar o tempo
 private static boolean validTime (int pHour, int pMin, int pSec)
 {
   if (pHour < 0 || pHour > 23 || pMin < 0 || pMin > 59 || pSec < 0 || pSec > 59)
		return false;
   else return true;
 }
}
