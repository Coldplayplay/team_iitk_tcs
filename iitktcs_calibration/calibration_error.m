ee_link=[0.814401 0.161774 0.474483;
0.818314 0.0146145 0.465329;
0.822188 -0.0833642 0.449428;
0.823218 -0.188089 0.455344;
0.838293 -0.191564 0.338534;
0.832803 -0.0702016 0.352466;
0.832747 0.0371573 0.351658;
0.82605 0.170536 0.359552;
0.839619 0.179783 0.268914;
0.842215 0.0519542 0.260889;
0.845659 -0.056758 0.25436;
0.849451 -0.185171 0.246585;];
camera_link=[-0.0904281 -0.137466 0.832862;
0.0561198 -0.127456 0.82519;
0.15401 -0.108175 0.818082;
0.258971 -0.110371 0.812965;
0.261928 -0.00183589 0.800583;
0.14321 -0.00682558 0.807299;
0.034681 -0.0125204 0.812505;
-0.100501 -0.0228416 0.821757;
-0.113465 0.0728081 0.813772;
0.0185055 0.0756772 0.808239;
0.12896 0.0836549 0.799913;
0.255715 0.0894737 0.792612;];
  
h=[0.0711087   0.219396   0.973041  0.0396188;
     -0.997351 0.00064995  0.0727387  0.0114124;
     0.0153261  -0.975636   0.218861   0.160689;
             0          0          0          1];

camera_link=[camera_link ones(12,1)]';
ee_link=[ee_link ones(12,1)]';
ee_est = h*camera_link;

error_matrix=(ee_link-ee_est).^2
pts_error=sqrt(sum(error_matrix))
avg_error = sum(pts_error)/12