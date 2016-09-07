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
## @deftypefn {Function File} {@var{retval} =} signal_mult (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Muhammad Zian Ilahee <iamthemzi@iamthemzi-server>
## Created: 2016-08-11
function [y, n] = signal_mult (x1, n1, x2, n2)
  n = min(min(n1),min(n2)):max(max(n1),max(n2))
  y1 = zeros(1,length(n))
  y2 = y1
  y1(find(n>=min(n1) & n<=max(n1))==1) = x1
  y2(find(n>=min(n2) & n<=max(n2))==1) = x2
  y = y1*y2
endfunction
