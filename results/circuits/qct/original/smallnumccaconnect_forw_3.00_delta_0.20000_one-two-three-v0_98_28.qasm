OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[-1];
cx q[36],q[30];
cx q[25],q[18];
cx q[18],q[25];
cx q[25],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[17];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[30],q[36];
cx q[17],q[12];
cx q[24],q[30];
tdg q[-1];
cx q[36],q[30];
cx q[30],q[36];
cx q[36],q[30];
cx q[30],q[24];
t q[-1];
cx q[30],q[36];
tdg q[-1];
tdg q[-1];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[36];
cx q[30],q[36];
cx q[36],q[30];
cx q[30],q[36];
cx q[36],q[29];
h q[-1];
cx q[30],q[36];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[30],q[24];
cx q[24],q[30];
cx q[30],q[24];
cx q[24],q[17];
tdg q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[24];
t q[-1];
cx q[17],q[12];
tdg q[-1];
tdg q[-1];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
h q[-1];
cx q[17],q[12];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[30],q[36];
cx q[36],q[30];
cx q[30],q[36];
cx q[24],q[30];
cx q[30],q[24];
cx q[24],q[30];
cx q[17],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[29],q[24];
cx q[12],q[17];
tdg q[-1];
cx q[18],q[12];
t q[-1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
tdg q[-1];
tdg q[-1];
cx q[12],q[17];
cx q[18],q[12];
cx q[12],q[18];
cx q[18],q[12];
cx q[24],q[18];
h q[-1];
cx q[17],q[24];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[23],q[29];
cx q[29],q[23];
cx q[23],q[29];
cx q[17],q[23];
tdg q[-1];
cx q[12],q[17];
t q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
tdg q[-1];
tdg q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[23];
cx q[12],q[17];
h q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[23],q[17];
t q[-1];
t q[-1];
t q[-1];
cx q[23],q[17];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[24];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
tdg q[-1];
cx q[18],q[24];
t q[-1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
tdg q[-1];
tdg q[-1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
cx q[18],q[24];
h q[-1];
cx q[12],q[18];
cx q[18],q[12];
cx q[12],q[18];
cx q[17],q[12];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[17],q[23];
tdg q[-1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
t q[-1];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[23];
tdg q[-1];
tdg q[-1];
cx q[17],q[23];
cx q[29],q[23];
cx q[23],q[29];
cx q[29],q[23];
cx q[23],q[17];
h q[-1];
cx q[29],q[23];
t q[-1];
h q[-1];
t q[-1];
t q[-1];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[18];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[24];
tdg q[-1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
t q[-1];
cx q[24],q[18];
tdg q[-1];
tdg q[-1];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
h q[-1];
cx q[24],q[18];
t q[-1];
t q[-1];
cx q[18],q[24];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[18];
tdg q[-1];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[12];
t q[-1];
cx q[18],q[24];
tdg q[-1];
tdg q[-1];
cx q[12],q[17];
cx q[17],q[12];
cx q[12],q[17];
cx q[17],q[24];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[17];
h q[-1];
cx q[18],q[24];
h q[-1];
t q[-1];
t q[-1];
cx q[23],q[17];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[23];
tdg q[-1];
cx q[17],q[23];
cx q[23],q[17];
cx q[17],q[23];
cx q[23],q[29];
t q[-1];
cx q[23],q[17];
tdg q[-1];
tdg q[-1];
cx q[24],q[17];
cx q[17],q[24];
cx q[24],q[17];
cx q[29],q[24];
cx q[23],q[29];
h q[-1];
cx q[24],q[29];
cx q[29],q[24];
cx q[24],q[29];
cx q[29],q[23];
