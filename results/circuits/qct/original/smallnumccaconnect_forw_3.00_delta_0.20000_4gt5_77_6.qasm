OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
x q[-1];
t q[-1];
t q[-1];
cx q[8],q[14];
h q[-1];
cx q[14],q[8];
t q[-1];
t q[-1];
t q[-1];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[3];
cx q[7],q[14];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[8];
tdg q[-1];
cx q[9],q[3];
t q[-1];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[8];
tdg q[-1];
tdg q[-1];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[8];
cx q[9],q[3];
h q[-1];
cx q[15],q[9];
cx q[9],q[15];
cx q[15],q[9];
cx q[8],q[15];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
tdg q[-1];
cx q[8],q[14];
t q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
tdg q[-1];
tdg q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
cx q[8],q[14];
h q[-1];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[8];
cx q[7],q[14];
t q[-1];
t q[-1];
t q[-1];
cx q[8],q[15];
cx q[7],q[14];
cx q[3],q[8];
tdg q[-1];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[3];
t q[-1];
cx q[8],q[15];
tdg q[-1];
tdg q[-1];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[15];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[9];
h q[-1];
cx q[8],q[15];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
tdg q[-1];
cx q[8],q[14];
t q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
tdg q[-1];
tdg q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
cx q[8],q[14];
h q[-1];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[8];
cx q[7],q[14];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[9];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
cx q[8],q[15];
tdg q[-1];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[8];
t q[-1];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[15];
tdg q[-1];
tdg q[-1];
cx q[8],q[15];
cx q[3],q[8];
cx q[8],q[3];
cx q[3],q[8];
cx q[9],q[3];
h q[-1];
cx q[15],q[9];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[14];
tdg q[-1];
cx q[7],q[14];
cx q[14],q[7];
cx q[7],q[14];
cx q[14],q[8];
t q[-1];
cx q[14],q[7];
tdg q[-1];
tdg q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
cx q[8],q[14];
h q[-1];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[8];
cx q[7],q[14];
t q[-1];
t q[-1];
t q[-1];
cx q[7],q[14];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[9];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[15];
tdg q[-1];
cx q[3],q[9];
t q[-1];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[15];
tdg q[-1];
tdg q[-1];
cx q[3],q[9];
cx q[9],q[3];
cx q[3],q[9];
cx q[9],q[15];
cx q[3],q[9];
h q[-1];
cx q[15],q[8];
cx q[8],q[15];
cx q[15],q[8];
cx q[8],q[3];
h q[-1];
t q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
tdg q[-1];
cx q[8],q[14];
t q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
tdg q[-1];
tdg q[-1];
cx q[8],q[14];
cx q[14],q[8];
cx q[8],q[14];
cx q[14],q[7];
cx q[8],q[14];
h q[-1];
cx q[7],q[14];
cx q[14],q[7];
cx q[7],q[14];
cx q[14],q[8];
