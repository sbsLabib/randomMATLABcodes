mumin = 0; %minvalueofmu
mumax = 4; %maxvalueofmu
mu_l = linspace (mumin,mumax,10000); %valuestoiterate
%disp (mu)
maxp = 200; %maxpoints to plot
x0 = input('please enter initial condition between 0 to 1 = '); %initial_Value

n_tr = 5000;

for j = 1:length(mu_l)
    mu = mu_l(j);
    x=zeros(n_tr,1);
    x(1) = x0;
    for i = 2:n_tr
        x(i) = x(i-1)*mu*(1-x(i-1));
    end
    out{j} = unique(x(end-maxp:end));
end

data=[];
for k = 1:length(mu_l)
    n = length(out{k});
    data = [data;mu_l(k)*ones(n,1),out{k}];
end

fig = plot (data(:,1),data(:,2), '.w');
set (fig,  'markersize',2);
set (gca,'Color', 'k');
%title('\bf Logistic Map', 'Interpreter', 'Latex', 'FontSize',20);
xlabel ('\bf Growth Rate', 'Interpreter', 'Latex', 'FontSize',16);
ylabel ('\bf Density', 'Interpreter', 'Latex', 'FontSize',16);