OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
x q[-1];
h q[-1];
t q[-1];
cx q[10],q[16];
t q[-1];
t q[-1];
cx q[9],q[3];
cx q[8],q[3];
cx q[3],q[8];
cx q[8],q[3];
cx q[3],q[9];
tdg q[-1];
cx q[8],q[3];
t q[-1];
cx q[8],q[3];
cx q[3],q[8];
cx q[8],q[3];
cx q[3],q[9];
tdg q[-1];
tdg q[-1];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[9];
cx q[8],q[3];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[9],q[15];
h q[-1];
cx q[3],q[9];
t q[-1];
cx q[16],q[9];
x q[-1];
h q[-1];
t q[-1];
t q[-1];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[16];
cx q[15],q[9];
tdg q[-1];
cx q[16],q[9];
cx q[9],q[16];
cx q[16],q[9];
cx q[9],q[15];
t q[-1];
cx q[9],q[16];
tdg q[-1];
tdg q[-1];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[9],q[16];
cx q[15],q[9];
h q[-1];
cx q[16],q[9];
cx q[9],q[16];
cx q[16],q[9];
cx q[9],q[15];
