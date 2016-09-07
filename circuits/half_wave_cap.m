## Copyright (C) 2016 Muhammad Zian Ilahee
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{i_in} =} half_wave_cap (@var{v_rms}, @var{v_zener}, @var{frequency}, @var{c1}, @var{r1})
##
## @seealso{}
## @end deftypefn

## Author: Muhammad Zian Ilahee <iamthemzi@iamthemzi-server>
## Created: 2016-08-30

function [outz] = half_wave_cap (v_rms, v_zener,frequency, c1, r1,p_zener,i_in)
  % fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
  if (v_rms < 0)
    fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
    outz = -1;
    return;
  elseif (v_zener < 0)
    fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
    outz = -1;
    return;
  elseif (frequency < 0)
    fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
    outz = -1;
    return;
  elseif (c1 < 0)
    if ((r1 < 0) || (i_in <0))
      fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
      outz = -1;
      return;
    else
      v1 = sqrt(2)*v_rms - v_zener;
      v2 = v1/(2*i_in);
      v3 = v2 - r1;
      v4 = v3*2*pi*frequency;
      outz = 1/v4;
      c1 = outz;
      fprintf('Capacitence of C1 is : %iF\n', outz)
    endif
  elseif (r1 < 0)
    if ((c1 < 0) || (i_in <0))
      fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
      outz = -1;
      return;    
    else
      v1 = sqrt(2)*v_rms - v_zener;
      v2 = v1/(2*i_in);
      v3 = 1 / (2*pi*frequency*c1);
      outz = v2 - v3;
      r1 = outz;
      fprintf('Resistance of R1 is : %i ohm\n', outz)
    endif
  elseif (p_zener < 0)
    fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
    outz = -1;
    return;
  elseif (i_in < 0)
    if ((c1 < 0) || (r1 <0))
      fprintf('usage: half_wave_cap(v_rms,v_zener,frequency,c1(or -1),r1(or -1),p_zener,i_in(or -1))\n')
      outz = -1;
      return;
      else
      voltage = sqrt(2)*v_rms - v_zener;
      impedence = 2*((1 / (2 * pi * frequency*c1))+r1);
      i_in = voltage / impedence;
      i_zener = zener_max_current(p_zener,v_zener);
      if(i_in > i_zener)
        i_in = i_zener;
      endif 
      outz = i_in;
      fprintf('Maximum input current is : %iA\n', outz)
    endif
  endif
  fprintf('Power drawn by the Resistance R1 is : %iw\n', i_in*i_in*r1)
  fprintf('Power drawn by the Zener      Z1 is : %iw\n', i_in*v_zener)
  fprintf('Power drawn by the Diode      D1 is : %iw\n', i_in*1)
  fprintf('Power drawn by the Circuit       is : %iw\n', i_in*i_in*r1+i_in*v_zener+i_in*1)
endfunction
