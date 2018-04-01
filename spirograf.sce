/*******************************************************************************
 *                                                                             *
 *                                Spirograph                                   *
 *                                                                             *
 *                              spirograph.sce                                 *
 *                                                                             *
 *                                   Module                                    *
 *                                                                             *
 *                    Copyright (C) 2015 Ulrik Hørlyk Hjort                    *
 *                                                                             *
 *   spirograph is free software;  you can  redistribute it                    *
 *   and/or modify it under terms of the  GNU General Public License           *
 *   as published  by the Free Software  Foundation;  either version 2,        *
 *   or (at your option) any later version.                                    *
 *   spirograph is distributed in the hope that it will be                     *
 *   useful, but WITHOUT ANY WARRANTY;  without even the  implied warranty     *
 *   of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                   *
 *   See the GNU General Public License for  more details.                     *
 *   You should have  received  a copy of the GNU General                      *
 *   Public License  distributed with Yolk.  If not, write  to  the  Free      *
 *   Software Foundation,  51  Franklin  Street,  Fifth  Floor, Boston,        *
 *   MA 02110 - 1301, USA.                                                     *
 *                                                                             *
 ******************************************************************************/


//
//
//
function p1()
  t = linspace(0,3*%pi,100); 
  x = t.*cos(t);     
  y = t.*sin(t);     
plot(x,y)
endfunction


//
//
//
function pp2()
  t = linspace(0,3,100); 
  a = linspace(0,3*%pi,100);
  x = t.*cos(a);     
  y = t.*sin(a);     
plot(x,y)
endfunction


//
//
//
function sp1()
  t = linspace(0,700,3000);
  // t = linspace(0,20*%pi,100); 
  // x=10*((1-2)*cos(t)+0.2*2*cos(((1-2)/2)*t));
  // y=10*((1-2)*sin(t)+0.2*2*sin(((1-2)/2)*t));
   
 // x=10*((1-5)*cos(t)+2*5*cos(((1-5)/5)*t));
//  y=10*((1-5)*sin(t)+2*5*sin(((1-5)/5)*t));
   
   x=10*((1-50)*cos(t)+2*50*cos(((1-50)/50)*t));
  y=10*((1-50)*sin(t)+2*50*sin(((1-50)/50)*t));
   
   plot(x,y,"b")

endfunction

//
//
//
function sp_orig(R,r,p)
   l = p/r;
   disp(l);
   k=r/R 
   disp(k)
    t = linspace(0,700,3000);
   x=R*((1-k)*cos(t)+l*k*cos(((1-k)/k)*t));
   y=R*((1-k)*sin(t)+l*k*sin(((1-k)/k)*t));
   plot(x,y,"b")

endfunction


//
//
//
function sp(R,r,a)
    //t = linspace(0,50,10);
     t = linspace(-3*%pi,3*%pi,150); 
    x=(R-r)*cos(((r/R)*t))+a*cos((1-(r/R)*t))
    y=(R-r)*sin(((r/R)*t))-a*sin((1-(r/R)*t))

   plot(x,y,"b")

endfunction


//
//
//
function foo()
    t = linspace(-%pi,%pi,500);
    clf();comet3d(sin(5*t),sin(t),t.^2)
endfunction



sp_orig(2140,600,520); 

