OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[5],q[1];
cx q[17],q[12];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[5];
tdg q[-1];
cx q[1],q[5];
cx q[5],q[1];
cx q[1],q[5];
cx q[5],q[12];
t q[-1];
cx q[5],q[1];
tdg q[-1];
tdg q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
cx q[5],q[1];
cx q[1],q[5];
cx q[5],q[1];
cx q[1],q[6];
h q[-1];
cx q[5],q[1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[6],q[1];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[17];
tdg q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
t q[-1];
cx q[17],q[12];
tdg q[-1];
tdg q[-1];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[12];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
h q[-1];
cx q[17],q[12];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[6];
tdg q[-1];
cx q[1],q[5];
cx q[5],q[1];
cx q[1],q[5];
cx q[5],q[12];
t q[-1];
cx q[5],q[1];
cx q[1],q[5];
cx q[5],q[1];
cx q[1],q[6];
tdg q[-1];
tdg q[-1];
cx q[12],q[6];
cx q[1],q[6];
cx q[6],q[1];
cx q[1],q[6];
cx q[6],q[12];
h q[-1];
cx q[1],q[6];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[17];
cx q[1],q[6];
cx q[5],q[12];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
t q[-1];
cx q[12],q[17];
tdg q[-1];
tdg q[-1];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[17];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
h q[-1];
cx q[12],q[17];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
tdg q[-1];
cx q[12],q[6];
t q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
tdg q[-1];
tdg q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
cx q[12],q[6];
h q[-1];
cx q[1],q[6];
cx q[6],q[1];
cx q[1],q[6];
cx q[6],q[12];
t q[-1];
t q[-1];
t q[-1];
cx q[17],q[12];
cx q[1],q[6];
cx q[11],q[17];
tdg q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
t q[-1];
cx q[17],q[12];
tdg q[-1];
tdg q[-1];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[12];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
h q[-1];
cx q[17],q[12];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[5],q[12];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
tdg q[-1];
cx q[12],q[6];
t q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
tdg q[-1];
tdg q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
cx q[12],q[6];
h q[-1];
cx q[1],q[5];
cx q[5],q[1];
cx q[1],q[5];
cx q[5],q[12];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[5],q[1];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
t q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
tdg q[-1];
tdg q[-1];
cx q[5],q[1];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[6],q[12];
h q[-1];
cx q[1],q[6];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[17];
cx q[1],q[6];
cx q[5],q[12];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
t q[-1];
cx q[12],q[17];
tdg q[-1];
tdg q[-1];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[17];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
h q[-1];
cx q[12],q[17];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
tdg q[-1];
cx q[12],q[6];
t q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
tdg q[-1];
tdg q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
cx q[12],q[6];
h q[-1];
cx q[1],q[5];
cx q[5],q[1];
cx q[1],q[5];
cx q[5],q[12];
t q[-1];
t q[-1];
cx q[5],q[12];
cx q[11],q[5];
tdg q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
t q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
tdg q[-1];
tdg q[-1];
cx q[11],q[5];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[11];
cx q[12],q[17];
h q[-1];
cx q[5],q[12];
cx q[12],q[5];
x q[-1];
