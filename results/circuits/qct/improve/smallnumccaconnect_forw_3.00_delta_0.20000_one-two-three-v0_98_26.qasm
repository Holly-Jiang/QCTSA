OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[0];
cx q[12],q[17];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[29],q[24];
t q[4];
t q[1];
t q[0];
t q[3];
t q[2];
cx q[24],q[29];
cx q[17],q[12];
cx q[18],q[24];
tdg q[1];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[18];
t q[0];
cx q[24],q[29];
tdg q[4];
tdg q[1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[29];
cx q[18],q[24];
h q[0];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[18];
h q[1];
t q[4];
t q[0];
t q[1];
cx q[24],q[17];
tdg q[2];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[24];
t q[1];
cx q[17],q[12];
tdg q[3];
tdg q[2];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[17],q[24];
h q[1];
cx q[12],q[17];
h q[3];
t q[2];
t q[1];
t q[3];
cx q[12],q[18];
cx q[29],q[24];
cx q[17],q[12];
tdg q[2];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
t q[3];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
tdg q[4];
tdg q[2];
cx q[17],q[12];
cx q[24],q[17];
cx q[17],q[24];
cx q[24],q[17];
cx q[18],q[24];
h q[3];
cx q[12],q[18];
h q[2];
h q[3];
t q[4];
t q[2];
t q[3];
cx q[23],q[29];
cx q[29],q[23];
cx q[23],q[29];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
tdg q[0];
cx q[12],q[17];
t q[2];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
tdg q[1];
tdg q[0];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
cx q[12],q[17];
h q[2];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[23],q[17];
t q[2];
t q[1];
t q[0];
cx q[12],q[18];
cx q[23],q[17];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
tdg q[2];
cx q[24],q[18];
t q[3];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
tdg q[4];
tdg q[2];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
cx q[24],q[18];
h q[3];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[24];
h q[2];
h q[4];
t q[3];
t q[2];
t q[4];
cx q[17],q[23];
tdg q[0];
cx q[12],q[17];
t q[2];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
tdg q[1];
tdg q[0];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
cx q[12],q[17];
h q[2];
cx q[23],q[17];
cx q[17],q[23];
cx q[23],q[17];
cx q[17],q[12];
t q[0];
h q[2];
t q[1];
t q[2];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
tdg q[0];
cx q[24],q[18];
t q[4];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
tdg q[3];
tdg q[0];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
cx q[24],q[18];
h q[4];
cx q[17],q[24];
cx q[24],q[17];
cx q[17],q[24];
cx q[12],q[17];
t q[0];
t q[3];
cx q[17],q[12];
cx q[23],q[17];
tdg q[3];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
t q[2];
cx q[17],q[12];
tdg q[0];
tdg q[3];
cx q[23],q[17];
cx q[17],q[23];
cx q[23],q[17];
cx q[17],q[12];
cx q[23],q[17];
h q[2];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
h q[3];
t q[2];
t q[3];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
tdg q[1];
cx q[17],q[12];
t q[3];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
tdg q[2];
tdg q[1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
cx q[17],q[12];
h q[3];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];