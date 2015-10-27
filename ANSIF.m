%Arm lengths Modify their lengths
l1 = 5;
l2 = 10;
l3 = 5;

i = 1;
j = 1;
k = 1;


%Arm angles initialized to point the arm straight up
theta1 = (1:180);
theta2 = (1:360);
theta3 = (1:360);

%intializing
theta1(1) = 0;
theta2(1) = 0;
theta3(1) = 0;

%Inverse Kinematics Section
for i = 1:180
    for j = 1:360
        for k = 1:360
            x = l1*cos(theta1(i)) + l2*cos(theta1(i) + theta2(j)) + l3*cos(theta1(i) + theta2(j) + theta3(k));
            y = l1*sin(theta1(i)) + l2*sin(theta1(i) + theta2(j)) + l3*sin(theta1(i) + theta2(j) + theta3(k));
            sigma = theta1(i) + theta2(j) + theta3(k);

            xn = x - l3*cos(sigma);
            yn = y - l3*sin(sigma);

            k1 = l1 + l2*cos(theta2(j));
            k2 = l3*sin(theta2(j))*cos(theta2(j));
            
            theta2(j) = atan2(sin(theta2(j)),cos(theta2(j)));
            theta1(i) = atan2((k1*yn - k2*xn),(k1*xn - k2*yn));
            theta3(k) = sigma - theta1(i) - theta2(j);
        end
    end
end

theta1
theta2
theta3