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
## @deftypefn {Function File} {@var{retval} =} sincos (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Muhammad Zian Ilahee <iamthemzi@iamthemzi-server>
## Created: 2016-08-10

function [sine,cosine] = sincos ()  
    prompt = 'Please enter a value in degree to get the sine and cosine: '
    while 1
    theta = input(prompt);
      if(strcmp(theta,'q'))
        break
      end
      sine = sin(theta*pi/180);
      cosine = cos(theta*pi/180);
      disp(sprintf('sine value is %f, cosine value is %f',sine,cosine))
    endwhile
endfunction
