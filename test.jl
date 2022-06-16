using Plots
t=0;dt=0.01;x=1;v=0;ω0=1;γ=0.9;imax=10000
t_array=zeros(Float16,imax);x_array=zeros(Float16,imax);v_array=zeros(Float16,imax)
@time for i in 1:imax 
    t=t+dt;dx=v;dv=-γ*v-ω0^2*x
    x=x+dx*dt;v=v+dv*dt
    t_array[i]=t;x_array[i]=x;v_array[i]=v    
end
plot(x_array,v_array)
plot(t_array,x_array)