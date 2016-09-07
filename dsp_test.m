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
## @deftypefn {Function File} {@var{retval} =} dsp_test (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Muhammad Zian Ilahee <iamthemzi@iamthemzi-server>
## Created: 2016-08-10

function [retval] = dsp_test ()
    t = linspace(0,6*pi,100); % time
    y1 =sin(-t);  % first signal
    y2=-0.5*cos(2*t);  % second signal
    % plotting
    figure,
    subplot(2,2,1),plot(t,y1); % top chart
    subplot(2,2,3),plot(t,y2), % bottom left chart
    subplot(1,2,2),plot(t,y1+y2) % resulting right chart
endfunction
