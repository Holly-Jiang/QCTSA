OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
x q[-1];
t q[-1];
t q[-1];
h q[-1];
h q[-1];
t q[-1];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[12];
t q[-1];
cx q[2],q[6];
tdg q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[2];
t q[-1];
cx q[6],q[12];
tdg q[-1];
tdg q[-1];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[12];
cx q[2],q[6];
h q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[2];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[6];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[12];
tdg q[-1];
cx q[2],q[6];
t q[-1];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[12];
tdg q[-1];
tdg q[-1];
cx q[2],q[6];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[12];
cx q[2],q[6];
h q[-1];
cx q[6],q[2];
cx q[2],q[6];
cx q[6],q[2];
cx q[12],q[6];
t q[-1];
t q[-1];
cx q[6],q[12];
cx q[1],q[6];
tdg q[-1];
cx q[12],q[6];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[1];
t q[-1];
cx q[6],q[12];
tdg q[-1];
tdg q[-1];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[12];
cx q[1],q[6];
cx q[5],q[1];
cx q[1],q[5];
cx q[5],q[1];
cx q[12],q[5];
h q[-1];
cx q[6],q[12];
x q[-1];
cx q[2],q[6];
x q[-1];