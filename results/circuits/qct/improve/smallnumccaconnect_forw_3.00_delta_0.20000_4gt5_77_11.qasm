OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
x q[0];
t q[2];
t q[3];
cx q[12],q[17];
h q[0];
cx q[17],q[12];
t q[1];
t q[0];
t q[4];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[6];
cx q[11],q[17];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[12];
tdg q[1];
cx q[13],q[6];
t q[0];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[12];
tdg q[2];
tdg q[1];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[12];
cx q[13],q[6];
h q[0];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[13];
cx q[12],q[18];
h q[1];
h q[0];
t q[2];
t q[1];
t q[0];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[11];
tdg q[3];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[11];
cx q[11],q[5];
t q[1];
cx q[11],q[17];
tdg q[4];
tdg q[3];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[17];
cx q[11],q[17];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[12];
h q[1];
cx q[11],q[17];
t q[1];
t q[4];
t q[3];
cx q[12],q[18];
cx q[11],q[17];
cx q[6],q[12];
tdg q[1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[6];
t q[0];
cx q[12],q[18];
tdg q[2];
tdg q[1];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[18];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[13];
h q[0];
cx q[12],q[18];
h q[1];
t q[0];
t q[2];
t q[1];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[11];
tdg q[3];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[11];
cx q[11],q[5];
t q[1];
cx q[11],q[17];
tdg q[4];
tdg q[3];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[17];
cx q[11],q[17];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[12];
h q[1];
cx q[11],q[17];
h q[4];
t q[1];
t q[3];
t q[4];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[13];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
cx q[12],q[18];
tdg q[1];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[12];
t q[4];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[18];
tdg q[0];
tdg q[1];
cx q[12],q[18];
cx q[6],q[12];
cx q[12],q[6];
cx q[6],q[12];
cx q[13],q[6];
h q[4];
cx q[18],q[13];
h q[1];
h q[4];
t q[0];
t q[1];
t q[4];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[17];
tdg q[2];
cx q[11],q[17];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[12];
t q[1];
cx q[17],q[11];
tdg q[3];
tdg q[2];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[11];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[17],q[12];
h q[1];
cx q[11],q[17];
t q[1];
t q[3];
t q[2];
cx q[11],q[17];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[13];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[18];
tdg q[1];
cx q[6],q[13];
t q[4];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[18];
tdg q[0];
tdg q[1];
cx q[6],q[13];
cx q[13],q[6];
cx q[6],q[13];
cx q[13],q[18];
cx q[6],q[13];
h q[4];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[6];
h q[1];
t q[1];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[11];
tdg q[2];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[11];
cx q[11],q[5];
t q[1];
cx q[11],q[17];
tdg q[3];
tdg q[2];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[5],q[12];
cx q[11],q[5];
h q[1];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[11];
