## Copyright (C) 2023 moham
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} custom_mod2 (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: moham <moham@SHEHSIN0>
## Created: 2023-01-04

function retval = check_integer(n)
    if mod(n,1) == 0
        retval = 1;
    else
        retval = 0;
    endif

endfunction

