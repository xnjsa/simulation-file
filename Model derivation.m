Ra = sym('Ra') % Basic payoff of the sports actor
Rb = sym('Rb') % Basic payoff of the tourism actor
Rc = sym('Rc') % Basic payoff of the platform actor
Rd = sym('Rd') % Basic payoff of consumers
Ca = sym('Ca') % Additional cost of the sports actor
Cb = sym('Cb') % Additional cost of the tourism actor
Cc = sym('Cc') % Additional cost of the platform actor
Cd = sym('Cd') % Additional cost of consumers
U1 = sym('U1') % Commission rate of the platform under the proactive empowerment strategy
U2 = sym('U2') % Basic service fee rate of the platform under the conventional display strategy
R = sym('R')  % Synergistic payoff of the sports and tourism actors
e = sym('e')  % Profit-sharing ratio of the sports actor
r = sym('r')  % Short-term benefit obtained by the defecting actor from resource sharing
g = sym('g')  % Breach cost incurred by the defecting actor due to defection from cooperation
T = sym('T')  % Platform capability for deep empowerment T > 1
n = sym('n')  % User-feedback value-added coefficient n > 1
X = sym('X')  % Special government subsidy for the sports or tourism actor
F = sym('F')  % Special government subsidy for platform digitalization
G = sym('G')  % Government subsidy for consumers
W = sym('W')  % Government compliance regulation of the sports and tourism actors
O = sym('O')  % Government tax penalty on passive behavior by the sports and tourism actors
P = sym('P')  % Experience value coefficient provided by the sports or tourism actor to consumers
x = sym('x')  % Proportion of sports actors adopting the 【Open Operation】 strategy
y = sym('y')  % Proportion of tourism actors adopting the 【Integrated Operation】 strategy
z = sym('z')  % Proportion of platform actors adopting the 【Deep Empowerment】 strategy
w = sym('w')  % Proportion of consumers choosing the 【Experience-First】 strategy

A1 = Ra+R*T*n*e*(1-U1)-Ca+X
B1 = Rb+R*T*n*(1-e)*(1-U1)-Cb+X
C1 = Rc+R*T*n*U1+F-Cc+(Ca+Cb+Cd)*U2
D1 = Rd*P^2*T-Cd+G

A2 = Ra+R*T*e*(1-U1)-Ca+X
B2 = Rb+R*T*(1-e)*(1-U1)-Cb+X
C2 = Rc+R*T*U1+F-Cc+(Ca+Cb)*U2
D2 = Rd/(P^2*T)

A3 = Ra+R*n*e-Ca+X 
B3 = Rb+R*n*(1-e)-Cb+X
C3 = Rc+(Ca+Cb+Cc)*U2
D3 = Rd*P^2-Cd+G

A4 = Ra+R*e-Ca+X
B4 = Rb+R*(1-e)-Cb+X
C4 = Rc+(Ca+Cb)*U2
D4 = Rd/P^2

A5 = Ra*T*n-Ca+X+g-W
B5 = Rb+r-Cb-O-W-g
C5 = Rc-Cc+Ra*(T-1)*U1+(Ca+Cd)*U2+F
D5 = Rd*P*T-Cd+G

A6 = Ra*T-Ca+X+g-W
B6 = Rb+r-Cb-O-W-g
C6 = Rc-Cc+Ra*(T-1)*U1+Ca*U2+F
D6 = Rd/(P*T)

A7 = Ra*n-Ca+X+g-W
B7 = Rb+r-Cb-O-g-W
C7 = Rc+(Ca+Cb)*U2
D7 =Rd*P-Cd+G

A8 = Ra-Ca+X+g-W
B8 = Rb+r-Cb-O-W-g
C8 = Rc+Ca*U2
D8 = Rd/P

A9 = Ra-Ca+r-O-W-g
B9 = Rb*T*n-Cb+X+g-W
C9 = Rc+(T-1)*Rb*U1+(Cb+Cd)*U2-Cc
D9 = Rd*P*T-Cd+G

A10 = Ra-Ca+r-O-W-g
B10 = Rb*T-Cb+X+g-W
C10 = Rc+(T-1)*Rb*U1+Cb*U2+F-Cc
D10 = Rd/(P*T)

A11 = Ra-Ca+r-O-W-g
B11 = Rb*n-Cb+X+g-W
C11 = Rc+(Cb+Cd)*U2
D11 = Rd*P-Cd+G

A12 = Ra-Ca+r-O-W-g
B12 = Rb-Cb+X+g-W
C12 = Rc+Cb*U2
D12 = Rd/P

A13 = Ra-O
B13 = Rb-O
C13 = Rc-Cc+Cd*U2
D13 = Rd*T-Cd+G

A14 = Ra-O
B14 = Rb-O
C14 = Rc-Cc
D14 = Rd/T

A15 = Ra-O
B15 = Rb-O 
C15 = Rc+Cd*U2
D15 = Rd-Cd+G

A16 = Ra-O 
B16 = Rb-O 
C16 = Rc 
D16 = Rd

SP1 = y*z*w*A1+y*z*(1-w)*A2+y*(1-z)*w*A3+y*(1-z)*(1-w)*A4+(1-y)*z*w*A5+(1-y)*z*(1-w)*A6+(1-y)*(1-z)*w*A7+(1-y)*(1-z)*(1-w)*A8
SP2 = y*z*w*A9+y*z*(1-w)*A10+y*(1-z)*w*A11+y*(1-z)*(1-w)*A12+(1-y)*z*w*A13+(1-y)*z*(1-w)*A14+(1-y)*(1-z)*w*A15+(1-y)*(1-z)*(1-w)*A16
EX_SP = x*SP1+(1-x)*SP2
SP = x*(SP1 - EX_SP)

TR1 = x*z*w*B1+x*z*(1-w)*B2+x*(1-z)*w*B3+x*(1-z)*(1-w)*B4+(1-x)*z*w*B9+(1-x)*z*(1-w)*B10+(1-x)*(1-z)*w*B11+(1-x)*(1-z)*(1-w)*B12
TR2 = x*z*w*B5+x*z*(1-w)*B6+x*(1-z)*w*B7+x*(1-z)*(1-w)*B8+(1-x)*z*w*B13+(1-x)*z*(1-w)*B14+(1-x)*(1-z)*w*B15+(1-x)*(1-z)*(1-w)*B16
EX_TR = y*TR1+(1-y)*TR2
TR = y*(TR1 - EX_TR)

PS1 = x*y*w*C1+x*y*(1-w)*C2+x*(1-y)*w*C5+x*(1-y)*(1-w)*C6+(1-x)*y*w*C9+(1-x)*y*(1-w)*C10+(1-x)*(1-y)*w*C13+(1-x)*(1-y)*(1-w)*C14
PS2 = x*y*w*C3+x*y*(1-w)*C4+x*(1-y)*w*C7+x*(1-y)*(1-w)*C8+(1-x)*y*w*C11+(1-x)*y*(1-w)*C12+(1-x)*(1-y)*w*C15+(1-x)*(1-y)*(1-w)*C16
EX_PS = z*PS1+(1-z)*PS2
PS = z*(PS1-EX_PS)

CS1 = x*y*z*D1+x*y*(1-z)*D3+x*(1-y)*z*D5+x*(1-y)*(1-z)*D7+(1-x)*y*z*D9+(1-x)*y*(1-z)*D11+(1-x)*(1-y)*z*D13+(1-x)*(1-y)*(1-z)*D15
CS2 = x*y*z*D2+x*y*(1-z)*D4+x*(1-y)*z*D6+x*(1-y)*(1-z)*D8+(1-x)*y*z*D10+(1-x)*y*(1-z)*D12+(1-x)*(1-y)*z*D14+(1-x)*(1-y)*(1-z)*D16
EX_CS = w*CS1+(1-w)*CS2
CS = w*(CS1-EX_CS)

JAC = [diff(SP,x) diff(SP,y) diff(SP,z) diff(SP,w);
    diff(TR,x) diff(TR,y) diff(TR,z) diff(TR,w);
    diff(PS,x) diff(PS,y) diff(PS,z) diff(PS,w);
    diff(CS,x) diff(CS,y) diff(CS,z) diff(CS,w)]
