(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
(* Int[u_.*(c_.*x_^n_)^p_,x_Symbol] :=
  c^FracPart[p]*(c*x^n)^FracPart[p]/x^(n*FracPart[p])*Int[u*x^(n*p),x] /;
FreeQ[{c,n,p},x] && Not[IntegerQ[p]] *)


(* ::Code:: *)
Int[u_*(c_.*(a_.+b_.* x_)^n_)^p_,x_Symbol] :=
  c^IntPart[p]*(c*(a+b*x)^n)^FracPart[p]/(a+b*x)^(n*FracPart[p])*Int[u*(a+b*x)^(n*p),x] /;
FreeQ[{a,b,c,n,p},x] && Not[IntegerQ[p]] && Not[MatchQ[u, x^n1_.*v_. /; ZeroQ[Simplify[n-n1-1]]]]


(* ::Code:: *)
Int[u_.*(c_.*(d_*(a_.+b_.* x_))^p_)^q_,x_Symbol] :=
  (c*(d*(a+b*x))^p)^q/(a+b*x)^(p*q)*Int[u*(a+b*x)^(p*q),x] /;
FreeQ[{a,b,c,d,p,q},x] && Not[IntegerQ[p]] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[u_.*(c_.*(d_.*(a_.+b_.* x_)^n_)^p_)^q_,x_Symbol] :=
  (c*(d*(a+b*x)^n)^p)^q/(a+b*x)^(n*p*q)*Int[u*(a+b*x)^(n*p*q),x] /;
FreeQ[{a,b,c,d,n,p,q},x] && Not[IntegerQ[p]] && Not[IntegerQ[q]]


(* ::Code:: *)
Int[(a_.+b_.*F_[c_.*Sqrt[d_.+e_.*x_]/Sqrt[f_.+g_.*x_]])^n_./(A_.+B_.*x_+C_.*x_^2),x_Symbol] :=
  g/C*Subst[Int[(a+b*F[c*x])^n/x,x],x,Sqrt[d+e*x]/Sqrt[f+g*x]] /;
FreeQ[{a,b,c,d,e,f,g,A,B,C,F},x] && ZeroQ[e+g] && ZeroQ[d+f-2] && ZeroQ[A*e^2+C*d*f] && ZeroQ[2*C*(d-1)-B*e]


(* ::Code:: *)
Int[(a_.+b_.*F_[c_.*Sqrt[1+e_.*x_]/Sqrt[1+g_.*x_]])^n_./(A_.+C_.*x_^2),x_Symbol] :=
  g/C*Subst[Int[(a+b*F[c*x])^n/x,x],x,Sqrt[1+e*x]/Sqrt[1+g*x]] /;
FreeQ[{a,b,c,e,g,A,C,F},x] && ZeroQ[e+g] && ZeroQ[A*e^2+C]


(* ::Code:: *)
Int[(a_.+b_.*F_^(c_.*Sqrt[d_.+e_.*x_]/Sqrt[f_.+g_.*x_]))^n_./(A_.+B_.*x_+C_.*x_^2),x_Symbol] :=
  g/C*Subst[Int[(a+b*F^(c*x))^n/x,x],x,Sqrt[d+e*x]/Sqrt[f+g*x]] /;
FreeQ[{a,b,c,d,e,f,g,A,B,C,F},x] && ZeroQ[e+g] && ZeroQ[d+f-2] && ZeroQ[A*e^2+C*d*f] && ZeroQ[2*C*(d-1)-B*e]


(* ::Code:: *)
Int[(a_.+b_.*F_^(c_.*Sqrt[1+e_.*x_]/Sqrt[1+g_.*x_]))^n_./(A_.+C_.*x_^2),x_Symbol] :=
  g/C*Subst[Int[(a+b*F^(c*x))^n/x,x],x,Sqrt[1+e*x]/Sqrt[1+g*x]] /;
FreeQ[{a,b,c,e,g,A,C,F},x] && ZeroQ[e+g] && ZeroQ[A*e^2+C]


(* ::Code:: *)
Int[u_/y_,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
    q*Log[RemoveContent[y,x]] /;
 Not[FalseQ[q]]]


(* ::Code:: *)
Int[u_/(y_*w_),x_Symbol] :=
  Module[{q=DerivativeDivides[y*w,u,x]},
    q*Log[RemoveContent[y*w,x]] /;
 Not[FalseQ[q]]]


(* ::Code:: *)
Int[u_*y_^m_.,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
   q*y^(m+1)/(m+1) /;
 Not[FalseQ[q]]] /;
FreeQ[m,x] && NonzeroQ[m+1]


(* ::Code:: *)
Int[u_*y_^m_.*z_^n_.,x_Symbol] :=
  Module[{q=DerivativeDivides[y*z,u*z^(n-m),x]},
   q*y^(m+1)*z^(m+1)/(m+1) /;
 Not[FalseQ[q]]] /;
FreeQ[{m,n},x] && NonzeroQ[m+1]


(* ::Code:: *)
Int[u_,x_Symbol] :=
  Module[{v=SimplifyIntegrand[u,x]},
  Int[v,x] /;
 SimplerIntegrandQ[v,u,x]]


(* ::Code:: *)
Int[u_.*(e_.*Sqrt[a_.+b_.*x_^n_.]+f_.*Sqrt[c_.+d_.*x_^n_.])^m_,x_Symbol] :=
  (a*e^2-c*f^2)^m*Int[ExpandIntegrand[u*(e*Sqrt[a+b*x^n]-f*Sqrt[c+d*x^n])^(-m),x],x] /;
FreeQ[{a,b,c,d,e,f,n},x] && NegativeIntegerQ[m] && ZeroQ[b*e^2-d*f^2]


(* ::Code:: *)
Int[u_.*(e_.*Sqrt[a_.+b_.*x_^n_.]+f_.*Sqrt[c_.+d_.*x_^n_.])^m_,x_Symbol] :=
  (b*e^2-d*f^2)^m*Int[ExpandIntegrand[u*x^(m*n)*(e*Sqrt[a+b*x^n]-f*Sqrt[c+d*x^n])^(-m),x],x] /;
FreeQ[{a,b,c,d,e,f,n},x] && NegativeIntegerQ[m] && ZeroQ[a*e^2-c*f^2]


(* ::Code:: *)
Int[u_^m_.*(a_.*u_^n_+v_)^p_.*w_,x_Symbol] :=
  Int[u^(m+n*p)*(a+u^(-n)*v)^p*w,x] /;
FreeQ[{a,m,n},x] && IntegerQ[p] && Not[PositiveQ[n]] && Not[FreeQ[v,x]]


(* ::Code:: *)
Int[u_*(a_.+b_.*y_)^m_.*(c_.+d_.*v_)^n_.,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
   q*Subst[Int[(a+b*x)^m*(c+d*x)^n,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,b,c,d,m,n},x] && ZeroQ[y-v]


(* ::Code:: *)
Int[u_*(a_.+b_.*y_)^m_.*(c_.+d_.*v_)^n_.*(e_.+f_.*w_)^p_.,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
   q*Subst[Int[(a+b*x)^m*(c+d*x)^n*(e+f*x)^p,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,b,c,d,e,f,m,n,p},x] && ZeroQ[y-v] && ZeroQ[y-w]


(* ::Code:: *)
Int[u_*(a_.+b_.*y_)^m_.*(c_.+d_.*v_)^n_.*(e_.+f_.*w_)^p_.*(g_.+h_.*z_)^q_.,x_Symbol] :=
  Module[{r=DerivativeDivides[y,u,x]},
   r*Subst[Int[(a+b*x)^m*(c+d*x)^n*(e+f*x)^p*(g+h*x)^q,x],x,y] /;
 Not[FalseQ[r]]] /;
FreeQ[{a,b,c,d,e,f,g,h,m,n,p,q},x] && ZeroQ[y-v] && ZeroQ[y-w] && ZeroQ[y-z]


(* ::Code:: *)
Int[u_.*(a_+b_.*y_^n_),x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
   a*Int[u,x] + b*q*Subst[Int[x^n,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,b,n},x]


(* ::Code:: *)
Int[u_.*(a_.+b_.*y_^n_)^p_,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
   q*Subst[Int[(a+b*x^n)^p,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,b,n,p},x]


(* ::Code:: *)
Int[u_.*v_^m_.*(a_.+b_.*y_^n_)^p_.,x_Symbol] :=
  Module[{q,r},
    q*r*Subst[Int[x^m*(a+b*x^n)^p,x],x,y] /;
  Not[FalseQ[r=Divides[y^m,v^m,x]]] && Not[FalseQ[q=DerivativeDivides[y,u,x]]]] /;
FreeQ[{a,b,m,n,p},x]


(* ::Code:: *)
Int[u_.*(a_.+b_.*y_^n_+c_.*v_^n2_.)^p_,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
  q*Subst[Int[(a+b*x^n+c*x^(2*n))^p,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,b,c,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[y-v]


(* ::Code:: *)
Int[u_.*(A_+B_.*y_^n_)(a_.+b_.*v_^n_+c_.*w_^n2_.)^p_.,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
  q*Subst[Int[(A+B*x^n)*(a+b*x^n+c*x^(2*n))^p,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,b,c,A,B,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[y-v] && ZeroQ[y-w]


(* ::Code:: *)
Int[u_.*(A_+B_.*y_^n_)(a_.+c_.*w_^n2_.)^p_.,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
  q*Subst[Int[(A+B*x^n)*(a+c*x^(2*n))^p,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,c,A,B,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[y-w]


(* ::Code:: *)
Int[u_.*v_^m_.*(a_.+b_.*y_^n_+c_.*w_^n2_.)^p_.,x_Symbol] :=
  Module[{q,r},
    q*r*Subst[Int[x^m*(a+b*x^n+c*x^(2*n))^p,x],x,y] /;
  Not[FalseQ[r=Divides[y^m,v^m,x]]] && Not[FalseQ[q=DerivativeDivides[y,u,x]]]] /;
FreeQ[{a,b,c,m,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[y-w]


(* ::Code:: *)
Int[u_.*z_^m_.*(A_+B_.*y_^n_)*(a_.+b_.*v_^n_+c_.*w_^n2_.)^p_.,x_Symbol] :=
  Module[{q,r},
    q*r*Subst[Int[x^m*(A+B*x^n)*(a+b*x^n+c*x^(2*n))^p,x],x,y] /;
  Not[FalseQ[r=Divides[y^m,z^m,x]]] && Not[FalseQ[q=DerivativeDivides[y,u,x]]]] /;
FreeQ[{a,b,c,A,B,m,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[y-v] && ZeroQ[y-w]


(* ::Code:: *)
Int[u_.*z_^m_.*(A_+B_.*y_^n_)*(a_.+c_.*w_^n2_.)^p_.,x_Symbol] :=
  Module[{q,r},
    q*r*Subst[Int[x^m*(A+B*x^n)*(a+c*x^(2*n))^p,x],x,y] /;
  Not[FalseQ[r=Divides[y^m,z^m,x]]] && Not[FalseQ[q=DerivativeDivides[y,u,x]]]] /;
FreeQ[{a,c,A,B,m,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[y-w]


(* ::Code:: *)
Int[u_.*(a_.+b_.*y_^n_)^m_.*(c_.+d_.*v_^n_)^p_.,x_Symbol] :=
  Module[{q=DerivativeDivides[y,u,x]},
  q*Subst[Int[(a+b*x^n)^m*(c+d*x^n)^p,x],x,y] /;
 Not[FalseQ[q]]] /;
FreeQ[{a,b,c,d,m,n,p},x] && ZeroQ[y-v]


(* ::Code:: *)
Int[u_.*(a_.+b_.*y_^n_)^m_.*(c_.+d_.*v_^n_)^p_.*(e_.+f_.*w_^n_)^q_.,x_Symbol] :=
  Module[{r=DerivativeDivides[y,u,x]},
  r*Subst[Int[(a+b*x^n)^m*(c+d*x^n)^p*(e+f*x^n)^q,x],x,y] /;
 Not[FalseQ[r]]] /;
FreeQ[{a,b,c,d,e,f,m,n,p,q},x] && ZeroQ[y-v] && ZeroQ[y-w]


(* ::Code:: *)
Int[u_*F_^v_,x_Symbol] :=
  Module[{q=DerivativeDivides[v,u,x]},
   q*F^v/Log[F] /;
 Not[FalseQ[q]]] /;
FreeQ[F,x]


(* ::Code:: *)
Int[u_*w_^m_.*F_^v_,x_Symbol] :=
  Module[{q=DerivativeDivides[v,u,x]},
   q*Subst[Int[x^m*F^x,x],x,v] /;
 Not[FalseQ[q]]] /;
FreeQ[{F,m},x] && ZeroQ[w-v]


(* ::Code:: *)
Int[u_*(a_+b_.*v_^p_.*w_^p_.)^m_.,x_Symbol] :=
  Module[{c=Simplify[u/(w*D[v,x]+v*D[w,x])]},
  c*Subst[Int[(a+b*x^p)^m,x],x,v*w] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p},x] && IntegerQ[p]


(* ::Code:: *)
Int[u_*(a_+b_.*v_^p_.*w_^q_.)^m_.*v_^r_.,x_Symbol] :=
  Module[{c=Simplify[u/(p*w*D[v,x]+q*v*D[w,x])]},
  c*p/(r+1)*Subst[Int[(a+b*x^(p/(r+1)))^m,x],x,v^(r+1)*w] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p,q,r},x] && ZeroQ[p-q*(r+1)] && NonzeroQ[r+1] && IntegerQ[p/(r+1)]


(* ::Code:: *)
Int[u_*(a_+b_.*v_^p_.*w_^q_.)^m_.*v_^r_.*w_^s_.,x_Symbol] :=
  Module[{c=Simplify[u/(p*w*D[v,x]+q*v*D[w,x])]},
  c*p/(r+1)*Subst[Int[(a+b*x^(p/(r+1)))^m,x],x,v^(r+1)*w^(s+1)] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p,q,r,s},x] && ZeroQ[p*(s+1)-q*(r+1)] && NonzeroQ[r+1] && IntegerQ[p/(r+1)]


(* ::Code:: *)
Int[u_*(a_.*v_^p_.+b_.*w_^q_.)^m_.,x_Symbol] :=
  Module[{c=Simplify[u/(p*w*D[v,x]-q*v*D[w,x])]},
  c*p*Subst[Int[(b+a*x^p)^m,x],x,v*w^(m*q+1)] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p,q},x] && ZeroQ[p+q*(m*p+1)] && IntegerQ[p] && IntegerQ[m]


(* ::Code:: *)
(* Int[u_*(a_.*v_^p_.+b_.*w_^q_.)^m_.,x_Symbol] :=
  Module[{c=Simplify[u/(p*w*D[v,x]-q*v*D[w,x])]},
  -c*q*Subst[Int[(a+b*x^q)^m,x],x,v^(m*p+1)*w] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p,q},x] && ZeroQ[p+q*(m*p+1)] && IntegerQ[q] && IntegerQ[m] *)


(* ::Code:: *)
Int[u_*(a_.*v_^p_.+b_.*w_^q_.)^m_.*v_^r_.,x_Symbol] :=
  Module[{c=Simplify[u/(p*w*D[v,x]-q*v*D[w,x])]},
  -c*q*Subst[Int[(a+b*x^q)^m,x],x,v^(m*p+r+1)*w] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p,q,r},x] && ZeroQ[p+q*(m*p+r+1)] && IntegerQ[q] && IntegerQ[m]


(* ::Code:: *)
Int[u_*(a_.*v_^p_.+b_.*w_^q_.)^m_.*w_^s_.,x_Symbol] :=
  Module[{c=Simplify[u/(p*w*D[v,x]-q*v*D[w,x])]},
  -c*q/(s+1)*Subst[Int[(a+b*x^(q/(s+1)))^m,x],x,v^(m*p+1)*w^(s+1)] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p,q,s},x] && ZeroQ[p*(s+1)+q*(m*p+1)] && NonzeroQ[s+1] && IntegerQ[q/(s+1)] && IntegerQ[m]


(* ::Code:: *)
Int[u_*(a_.*v_^p_.+b_.*w_^q_.)^m_.*v_^r_.*w_^s_.,x_Symbol] :=
  Module[{c=Simplify[u/(p*w*D[v,x]-q*v*D[w,x])]},
  -c*q/(s+1)*Subst[Int[(a+b*x^(q/(s+1)))^m,x],x,v^(m*p+r+1)*w^(s+1)] /;
 FreeQ[c,x]] /;
FreeQ[{a,b,m,p,q,r,s},x] && ZeroQ[p*(s+1)+q*(m*p+r+1)] && NonzeroQ[s+1] && IntegerQ[q/(s+1)] && IntegerQ[m]


(* ::Code:: *)
Int[u_*x_^m_.,x_Symbol] :=
  1/(m+1)*Subst[Int[SubstFor[x^(m+1),u,x],x],x,x^(m+1)] /;
FreeQ[m,x] && NonzeroQ[m+1] && FunctionOfQ[x^(m+1),u,x]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=SubstForFractionalPowerOfLinear[u,x]},
  ShowStep["","Int[F[(a+b*x)^(1/n),x],x]",
			"n/b*Subst[Int[x^(n-1)*F[x,-a/b+x^n/b],x],x,(a+b*x)^(1/n)]",Hold[
  lst[[2]]*lst[[4]]*Subst[Int[lst[[1]],x],x,lst[[3]]^(1/lst[[2]])]]] /;
 Not[FalseQ[lst]] && SubstForFractionalPowerQ[u,lst[[3]],x]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  Module[{lst=SubstForFractionalPowerOfLinear[u,x]},
  lst[[2]]*lst[[4]]*Subst[Int[lst[[1]],x],x,lst[[3]]^(1/lst[[2]])] /;
 Not[FalseQ[lst]] && SubstForFractionalPowerQ[u,lst[[3]],x]]]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=SubstForFractionalPowerOfQuotientOfLinears[u,x]},
  ShowStep["","Int[F[((a+b*x)/(c+d*x))^(1/n),x],x]",
"n*(b*c-a*d)*Subst[Int[x^(n-1)*F[x,(-a+c*x^n)/(b-d*x^n)]/(b-d*x^n)^2,x],x,((a+b*x)/(c+d*x))^(1/n)]",Hold[
  lst[[2]]*lst[[4]]*Subst[Int[lst[[1]],x],x,lst[[3]]^(1/lst[[2]])]]] /;
 Not[FalseQ[lst]]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  Module[{lst=SubstForFractionalPowerOfQuotientOfLinears[u,x]},
  lst[[2]]*lst[[4]]*Subst[Int[lst[[1]],x],x,lst[[3]]^(1/lst[[2]])] /;
 Not[FalseQ[lst]]]]


(* ::Code:: *)
Int[u_.*(a_.*v_^m_.*w_^n_.*z_^q_.)^p_,x_Symbol] :=
  a^IntPart[p]*(a*v^m*w^n*z^q)^FracPart[p]/(v^(m*FracPart[p])*w^(n*FracPart[p])*z^(q*FracPart[p]))*Int[u*v^(m*p)*w^(n*p)*z^(p*q),x] /;
FreeQ[{a,m,n,p,q},x] && Not[IntegerQ[p]] && Not[FreeQ[v,x]] && Not[FreeQ[w,x]] && Not[FreeQ[z,x]]


(* ::Code:: *)
Int[u_.*(a_.*v_^m_.*w_^n_.)^p_,x_Symbol] :=
  a^IntPart[p]*(a*v^m*w^n)^FracPart[p]/(v^(m*FracPart[p])*w^(n*FracPart[p]))*Int[u*v^(m*p)*w^(n*p),x] /;
FreeQ[{a,m,n,p},x] && Not[IntegerQ[p]] && Not[FreeQ[v,x]] && Not[FreeQ[w,x]]


(* ::Code:: *)
Int[u_.*(a_.*v_^m_.)^p_,x_Symbol] :=
  a^IntPart[p]*(a*v^m)^FracPart[p]/v^(m*FracPart[p])*Int[u*v^(m*p),x] /;
FreeQ[{a,m,p},x] && Not[IntegerQ[p]] && Not[FreeQ[v,x]] && Not[EqQ[a,1] && EqQ[m,1]] && Not[EqQ[v,x] && EqQ[m,1]]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^n_)^p_,x_Symbol] :=
  FullSimplify[Sqrt[a+b*x^n]/(x^(n/2)*Sqrt[b+a/x^n])]*Int[u*x^(n*p)*(b+a*x^(-n))^p,x] /;
FreeQ[{a,b,p},x] && IntegerQ[p+1/2] && NegativeIntegerQ[n] && Not[RationalFunctionQ[u,x]]


(* ::Code:: *)
Int[u_.*(a_.+b_.*v_^n_)^p_,x_Symbol] :=
  (a+b*v^n)^FracPart[p]/(v^(n*FracPart[p])*(b+a*v^(-n))^FracPart[p])*Int[u*v^(n*p)*(b+a*v^(-n))^p,x] /;
FreeQ[{a,b,p},x] && Not[IntegerQ[p]] && NegativeIntegerQ[n] && BinomialQ[v,x] && Not[LinearQ[v,x]]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^m_.*v_^n_)^p_,x_Symbol] :=
  (a+b*x^m*v^n)^FracPart[p]/(v^(n*FracPart[p])*(b*x^m+a*v^(-n))^FracPart[p])*Int[u*v^(n*p)*(b*x^m+a*v^(-n))^p,x] /;
FreeQ[{a,b,m,p},x] && Not[IntegerQ[p]] && NegativeIntegerQ[n] && BinomialQ[v,x]


(* ::Code:: *)
Int[u_.*(a_.*x_^r_.+b_.*x_^s_.)^m_,x_Symbol] :=
  With[{v=(a*x^r+b*x^s)^FracPart[m]/(x^(r*FracPart[m])*(a+b*x^(s-r))^FracPart[m])},
  v*Int[u*x^(m*r)*(a+b*x^(s-r))^m,x] /;
 Not[EqQ[Simplify[v],1]]] /;
FreeQ[{a,b,m,r,s},x] && Not[IntegerQ[m]] && PosQ[s-r]


(* ::Code:: *)
Int[u_/(a_+b_.*x_^n_),x_Symbol] :=
  With[{v=RationalFunctionExpand[u/(a+b*x^n),x]},
  Int[v,x] /;
 SumQ[v]] /;
FreeQ[{a,b},x] && PositiveIntegerQ[n]


(* ::Code:: *)
Int[u_*(a_.+b_.*x_^n_.+c_.*x_^n2_.)^p_.,x_Symbol] :=
  1/(4^p*c^p)*Int[u*(b+2*c*x^n)^(2*p),x] /;
FreeQ[{a,b,c,n},x] && ZeroQ[n2-2*n] && ZeroQ[b^2-4*a*c] && IntegerQ[p] && Not[AlgebraicFunctionQ[u,x]]


(* ::Code:: *)
Int[u_*(a_.+b_.*x_^n_.+c_.*x_^n2_.)^p_,x_Symbol] :=
  (a+b*x^n+c*x^(2*n))^p/(b+2*c*x^n)^(2*p)*Int[u*(b+2*c*x^n)^(2*p),x] /;
FreeQ[{a,b,c,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[b^2-4*a*c] && Not[IntegerQ[p]] && Not[AlgebraicFunctionQ[u,x]]


(* ::Code:: *)
Int[u_/(a_.+b_.*x_^n_.+c_.*x_^n2_.),x_Symbol] :=
  With[{v=RationalFunctionExpand[u/(a+b*x^n+c*x^(2*n)),x]},
  Int[v,x] /;
 SumQ[v]] /;
FreeQ[{a,b,c},x] && ZeroQ[n2-2*n] && PositiveIntegerQ[n]


(* ::Code:: *)
Int[u_./(a_.*x_^m_.+b_.*Sqrt[c_.*x_^n_]),x_Symbol] :=
  Int[u*(a*x^m-b*Sqrt[c*x^n])/(a^2*x^(2*m)-b^2*c*x^n),x] /;
FreeQ[{a,b,c,m,n},x]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfLinear[u,x]},
  ShowStep["","Int[F[a+b*x],x]","Subst[Int[F[x],x],x,a+b*x]/b",Hold[
  Dist[1/lst[[3]],Subst[Int[lst[[1]],x],x,lst[[2]]+lst[[3]]*x],x]]] /;
 Not[FalseQ[lst]]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfLinear[u,x]},
  Dist[1/lst[[3]],Subst[Int[lst[[1]],x],x,lst[[2]]+lst[[3]]*x],x] /;
 Not[FalseQ[lst]]]]


(* ::Code:: *)
If[ShowSteps,

Int[u_/x_,x_Symbol] :=
  Module[{lst=PowerVariableExpn[u,0,x]},
  ShowStep["","Int[F[(c*x)^n]/x,x]","Subst[Int[F[x]/x,x],x,(c*x)^n]/n",Hold[
  1/lst[[2]]*Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x],x],x],x,(lst[[3]]*x)^lst[[2]]]]] /;
 Not[FalseQ[lst]] && NonzeroQ[lst[[2]]]] /;
SimplifyFlag && NonsumQ[u] && Not[RationalFunctionQ[u,x]],

Int[u_/x_,x_Symbol] :=
  Module[{lst=PowerVariableExpn[u,0,x]},
  1/lst[[2]]*Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x],x],x],x,(lst[[3]]*x)^lst[[2]]] /;
 Not[FalseQ[lst]] && NonzeroQ[lst[[2]]]] /;
NonsumQ[u] && Not[RationalFunctionQ[u,x]]]


(* ::Code:: *)
If[ShowSteps,

Int[u_*x_^m_.,x_Symbol] :=
  Module[{lst=PowerVariableExpn[u,m+1,x]},
  ShowStep["If g=GCD[m+1,n]>1,","Int[x^m*F[x^n],x]",
		"1/g*Subst[Int[x^((m+1)/g-1)*F[x^(n/g)],x],x,x^g]",Hold[
  1/lst[[2]]*Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x],x],x],x,(lst[[3]]*x)^lst[[2]]]]] /;
 Not[FalseQ[lst]] && NonzeroQ[lst[[2]]-m-1]] /;
SimplifyFlag && IntegerQ[m] && m!=-1 && NonsumQ[u] && (m>0 || Not[AlgebraicFunctionQ[u,x]]),

Int[u_*x_^m_.,x_Symbol] :=
  Module[{lst=PowerVariableExpn[u,m+1,x]},
  1/lst[[2]]*Subst[Int[NormalizeIntegrand[Simplify[lst[[1]]/x],x],x],x,(lst[[3]]*x)^lst[[2]]] /;
 Not[FalseQ[lst]] && NonzeroQ[lst[[2]]-m-1]] /;
IntegerQ[m] && m!=-1 && NonsumQ[u] && (m>0 || Not[AlgebraicFunctionQ[u,x]])]


(* ::Code:: *)
Int[x_^m_*u_,x_Symbol] :=
  Module[{k=Denominator[m]},
  k*Subst[Int[x^(k*(m+1)-1)*ReplaceAll[u,x->x^k],x],x,x^(1/k)]] /;
FractionQ[m]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfSquareRootOfQuadratic[u,x]},
  ShowStep["","Int[F[Sqrt[a+b*x+c*x^2],x],x]",
			"2*Subst[Int[F[(c*Sqrt[a]-b*x+Sqrt[a]*x^2)/(c-x^2),(-b+2*Sqrt[a]*x)/(c-x^2)]*
				(c*Sqrt[a]-b*x+Sqrt[a]*x^2)/(c-x^2)^2,x],x,(-Sqrt[a]+Sqrt[a+b*x+c*x^2])/x]",
			Hold[2*Subst[Int[lst[[1]],x],x,lst[[2]]]]] /;
 Not[FalseQ[lst]] && lst[[3]]===1] /;
SimplifyFlag && EulerIntegrandQ[u,x],

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfSquareRootOfQuadratic[u,x]},
  2*Subst[Int[lst[[1]],x],x,lst[[2]]] /;
 Not[FalseQ[lst]]] /;
EulerIntegrandQ[u,x]]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfSquareRootOfQuadratic[u,x]},
  ShowStep["","Int[F[Sqrt[a+b*x+c*x^2],x],x]",
			"2*Subst[Int[F[(a*Sqrt[c]+b*x+Sqrt[c]*x^2)/(b+2*Sqrt[c]*x),(-a+x^2)/(b+2*Sqrt[c]*x)]*
				(a*Sqrt[c]+b*x+Sqrt[c]*x^2)/(b+2*Sqrt[c]*x)^2,x],x,Sqrt[c]*x+Sqrt[a+b*x+c*x^2]]",
			Hold[2*Subst[Int[lst[[1]],x],x,lst[[2]]]]] /;
 Not[FalseQ[lst]] && lst[[3]]===2] /;
SimplifyFlag && EulerIntegrandQ[u,x],

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfSquareRootOfQuadratic[u,x]},
  2*Subst[Int[lst[[1]],x],x,lst[[2]]] /;
 Not[FalseQ[lst]]] /;
EulerIntegrandQ[u,x]]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfSquareRootOfQuadratic[u,x]},
  ShowStep["","Int[F[Sqrt[a+b*x+c*x^2],x],x]",
		   "-2*Sqrt[b^2-4*a*c]*Subst[Int[F[-Sqrt[b^2-4*a*c]*x/(c-x^2),
			  (b*c+c*Sqrt[b^2-4*a*c]+(-b+Sqrt[b^2-4*a*c])*x^2)/(-2*c*(c-x^2))]*x/(c-x^2)^2,x],
			   x,2*c*Sqrt[a+b*x+c*x^2]/(b-Sqrt[b^2-4*a*c]+2*c*x)]",
		   Hold[2*Subst[Int[lst[[1]],x],x,lst[[2]]]]] /;
 Not[FalseQ[lst]] && lst[[3]]===3] /;
SimplifyFlag && EulerIntegrandQ[u,x],

Int[u_,x_Symbol] :=
  Module[{lst=FunctionOfSquareRootOfQuadratic[u,x]},
  2*Subst[Int[lst[[1]],x],x,lst[[2]]] /;
 Not[FalseQ[lst]]] /;
EulerIntegrandQ[u,x]]


(* ::Code:: *)
Int[1/(a_+b_.*v_^2),x_Symbol] :=
(*1/(2*a)*Int[Together[1/(1-Rt[-b/a,2]*v)],x] + 1/(2*a)*Int[Together[1/(1+Rt[-b/a,2]*v)],x] /; *)
  1/(2*a)*Int[Together[1/(1-v/Rt[-a/b,2])],x] + 1/(2*a)*Int[Together[1/(1+v/Rt[-a/b,2])],x] /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[1/(a_+b_.*v_^n_),x_Symbol] :=
  Dist[2/(a*n),Sum[Int[Together[1/(1-v^2/((-1)^(4*k/n)*Rt[-a/b,n/2]))],x],{k,1,n/2}],x] /;
FreeQ[{a,b},x] && EvenQ[n] && n>2


(* ::Code:: *)
Int[1/(a_+b_.*v_^n_),x_Symbol] :=
  Dist[1/(a*n),Sum[Int[Together[1/(1-v/((-1)^(2*k/n)*Rt[-a/b,n]))],x],{k,1,n}],x] /;
FreeQ[{a,b},x] && OddQ[n] && n>1


(* ::Code:: *)
Int[v_/(a_+b_.*u_^n_.),x_Symbol] :=
  Int[ReplaceAll[ExpandIntegrand[PolynomialInSubst[v,u,x]/(a+b*x^n),x],x->u],x] /;
FreeQ[{a,b},x] && PositiveIntegerQ[n] && PolynomialInQ[v,u,x]


(* ::Code:: *)
Int[u_,x_Symbol] :=
  Module[{v=NormalizeIntegrand[u,x]},
  Int[v,x] /;
 v=!=u]


(* ::Code:: *)
Int[u_,x_Symbol] :=
  Module[{v=ExpandIntegrand[u,x]},
  Int[v,x] /;
 SumQ[v]]


(* ::Code:: *)
Int[u_.*(a_.+b_.*x_^m_.)^p_.*(c_.+d_.*x_^n_.)^q_., x_Symbol] :=
  (a+b*x^m)^p*(c+d*x^n)^q/x^(m*p)*Int[u*x^(m*p),x] /;
FreeQ[{a,b,c,d,m,n,p,q},x] && ZeroQ[a+d] && ZeroQ[b+c] && ZeroQ[m+n] && ZeroQ[p+q]


(* ::Code:: *)
Int[u_*(a_+b_.*x_^n_.+c_.*x_^n2_.)^p_, x_Symbol] :=
  Sqrt[a+b*x^n+c*x^(2*n)]/((4*c)^(p-1/2)*(b+2*c*x^n))*Int[u*(b+2*c*x^n)^(2*p),x] /;
FreeQ[{a,b,c,n,p},x] && ZeroQ[n2-2*n] && ZeroQ[b^2-4*a*c] && IntegerQ[p-1/2]


(* ::Code:: *)
If[ShowSteps,

Int[u_,x_Symbol] :=
  Module[{lst=SubstForFractionalPowerOfLinear[u,x]},
  ShowStep["","Int[F[(a+b*x)^(1/n),x],x]",
			"n/b*Subst[Int[x^(n-1)*F[x,-a/b+x^n/b],x],x,(a+b*x)^(1/n)]",Hold[
  lst[[2]]*lst[[4]]*Subst[Int[lst[[1]],x],x,lst[[3]]^(1/lst[[2]])]]] /;
 Not[FalseQ[lst]]] /;
SimplifyFlag,

Int[u_,x_Symbol] :=
  Module[{lst=SubstForFractionalPowerOfLinear[u,x]},
  lst[[2]]*lst[[4]]*Subst[Int[lst[[1]],x],x,lst[[3]]^(1/lst[[2]])] /;
 Not[FalseQ[lst]]]]


(* ::Code:: *)
Int[u_,x_] := Defer[Int][u,x]


