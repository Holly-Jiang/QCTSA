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
cx q[5],q[12];
cx q[11],q[17];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
tdg q[-1];
cx q[18],q[12];
t q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
tdg q[-1];
tdg q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
cx q[18],q[12];
h q[-1];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[5],q[12];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[5],q[11];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
t q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
tdg q[-1];
tdg q[-1];
cx q[5],q[11];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[17],q[12];
h q[-1];
cx q[11],q[17];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[5];
cx q[11],q[17];
cx q[18],q[12];
tdg q[-1];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[18];
t q[-1];
cx q[12],q[5];
tdg q[-1];
tdg q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
cx q[18],q[12];
h q[-1];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[5],q[12];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[5],q[11];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
t q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
tdg q[-1];
tdg q[-1];
cx q[5],q[11];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[17],q[12];
h q[-1];
cx q[11],q[17];
t q[-1];
cx q[11],q[17];
h q[-1];
t q[-1];
t q[-1];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[17];
cx q[5],q[11];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[5];
t q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
tdg q[-1];
tdg q[-1];
cx q[5],q[11];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[17],q[12];
h q[-1];
cx q[11],q[17];
h q[-1];
cx q[12],q[17];
t q[-1];
t q[-1];
t q[-1];
cx q[5],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[18],q[12];
cx q[11],q[5];
tdg q[-1];
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
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[5],q[12];
tdg q[-1];
cx q[11],q[5];
t q[-1];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[12];
tdg q[-1];
tdg q[-1];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[12];
cx q[11],q[5];
h q[-1];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[11];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[18];
cx q[5],q[11];
cx q[17],q[12];
tdg q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[17];
t q[-1];
cx q[12],q[18];
tdg q[-1];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
cx q[17],q[12];
h q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[17];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[12],q[5];
tdg q[-1];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[12];
t q[-1];
cx q[5],q[11];
tdg q[-1];
tdg q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[11];
cx q[5],q[11];
cx q[11],q[5];
cx q[5],q[11];
cx q[11],q[17];
h q[-1];
cx q[5],q[11];
t q[-1];
h q[-1];
t q[-1];
cx q[17],q[11];
cx q[11],q[17];
cx q[17],q[11];
cx q[12],q[17];
cx q[18],q[12];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
t q[-1];
cx q[12],q[17];
tdg q[-1];
tdg q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[17];
cx q[18],q[12];
h q[-1];
cx q[17],q[24];
cx q[24],q[17];
cx q[17],q[24];
cx q[24],q[18];
t q[-1];
t q[-1];
cx q[12],q[18];
cx q[5],q[12];
tdg q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
t q[-1];
cx q[12],q[18];
tdg q[-1];
tdg q[-1];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[18];
cx q[5],q[12];
h q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
cx q[18],q[12];
tdg q[-1];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[18];
t q[-1];
cx q[12],q[5];
tdg q[-1];
tdg q[-1];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[18],q[12];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[18];
h q[-1];
cx q[5],q[12];
h q[-1];
cx q[24],q[18];
t q[-1];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[5],q[12];
t q[-1];
t q[-1];
cx q[12],q[5];
cx q[18],q[12];
tdg q[-1];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[18];
t q[-1];
cx q[12],q[5];
tdg q[-1];
tdg q[-1];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[5];
cx q[18],q[12];
h q[-1];
cx q[5],q[12];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[18];
cx q[5],q[12];
x q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[24];
cx q[17],q[24];
cx q[24],q[17];
cx q[17],q[24];
cx q[24],q[18];
cx q[12],q[5];
cx q[5],q[12];
cx q[12],q[5];
cx q[17],q[12];