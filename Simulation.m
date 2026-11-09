clc
echo on
figure(1)   
[T,XY] = ode45(@func,[0,1],[0.1,0.1,0.1,0.1])
h1=plot(T,XY(:,1),'r-o',T,XY(:,2),'g:s',T,XY(:,3),'b--^',T,XY(:,4),'m-.o','linewidth',3)
hold on 
[T,XY] = ode45(@func,[0,1],[0.3,0.3,0.3,0.3])
plot(T,XY(:,1),'r-o',T,XY(:,2),'g:s',T,XY(:,3),'b--^',T,XY(:,4),'m-.o','linewidth',3)
hold on
[T,XY] = ode45(@func,[0,1],[0.5,0.5,0.5,0.5])
plot(T,XY(:,1),'r-o',T,XY(:,2),'g:s',T,XY(:,3),'b--^',T,XY(:,4),'m-.o','linewidth',3)
hold on 
[T,XY] = ode45(@func,[0,1],[0.7,0.7,0.7,0.7])
plot(T,XY(:,1),'r-o',T,XY(:,2),'g:s',T,XY(:,3),'b--^',T,XY(:,4),'m-.o','linewidth',3)
hold on
set(gca,'FontName','Times New Roman','FontSize',15)
xlabel('Time','FontSize',20)
ylabel('Proportion','FontSize',20)



