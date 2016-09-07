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
## @deftypefn {Function File} {@var{retval} =} signal_power (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Muhammad Zian Ilahee <iamthemzi@iamthemzi-server>
## Created: 2016-08-11

function [y] = signal_power (x, n1, n2)
  y = sum(x .* conj(x))/(n2 - n1)
endfunction
