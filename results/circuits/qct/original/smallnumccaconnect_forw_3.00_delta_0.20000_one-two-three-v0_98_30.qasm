OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[-1];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[20];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[20],q[14];
cx q[18],q[25];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[20];
tdg q[-1];
cx q[19],q[14];
t q[-1];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[20];
tdg q[-1];
tdg q[-1];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[20];
cx q[19],q[14];
h q[-1];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[26];
cx q[26],q[19];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[25];
cx q[25],q[31];
cx q[31],q[25];
cx q[25],q[18];
tdg q[-1];
cx q[31],q[25];
t q[-1];
cx q[31],q[25];
cx q[25],q[31];
cx q[31],q[25];
cx q[25],q[18];
tdg q[-1];
tdg q[-1];
cx q[31],q[25];
cx q[25],q[31];
cx q[31],q[25];
cx q[25],q[18];
cx q[31],q[25];
h q[-1];
cx q[18],q[25];
cx q[25],q[18];
cx q[18],q[25];
cx q[25],q[31];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[25],q[19];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[14],q[7];
cx q[7],q[14];
cx q[14],q[7];
cx q[7],q[13];
cx q[31],q[25];
tdg q[-1];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[31];
t q[-1];
cx q[25],q[19];
tdg q[-1];
tdg q[-1];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[19];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[26];
h q[-1];
cx q[25],q[19];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[14],q[7];
cx q[7],q[14];
cx q[14],q[7];
cx q[19],q[14];
tdg q[-1];
cx q[13],q[19];
t q[-1];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[14];
tdg q[-1];
tdg q[-1];
cx q[19],q[14];
cx q[7],q[14];
cx q[14],q[7];
cx q[7],q[14];
cx q[14],q[19];
h q[-1];
cx q[7],q[14];
t q[-1];
t q[-1];
t q[-1];
cx q[19],q[25];
cx q[7],q[14];
cx q[26],q[19];
tdg q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[26];
t q[-1];
cx q[19],q[25];
tdg q[-1];
tdg q[-1];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[25];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[31];
h q[-1];
cx q[19],q[25];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[7];
tdg q[-1];
cx q[19],q[14];
t q[-1];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[7];
tdg q[-1];
tdg q[-1];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[7];
cx q[19],q[14];
h q[-1];
cx q[7],q[13];
cx q[13],q[7];
cx q[7],q[13];
cx q[13],q[19];
t q[-1];
h q[-1];
t q[-1];
t q[-1];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[25];
cx q[25],q[18];
cx q[18],q[25];
cx q[25],q[31];
cx q[18],q[25];
tdg q[-1];
cx q[31],q[25];
cx q[25],q[31];
cx q[31],q[25];
cx q[25],q[18];
t q[-1];
cx q[25],q[31];
tdg q[-1];
tdg q[-1];
cx q[18],q[25];
cx q[25],q[18];
cx q[18],q[25];
cx q[25],q[31];
cx q[18],q[25];
h q[-1];
cx q[25],q[18];
cx q[18],q[25];
cx q[25],q[18];
cx q[31],q[25];
t q[-1];
t q[-1];
cx q[25],q[31];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[25];
tdg q[-1];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[19];
t q[-1];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[25];
tdg q[-1];
tdg q[-1];
cx q[19],q[25];
cx q[31],q[25];
cx q[25],q[31];
cx q[31],q[25];
cx q[25],q[19];
h q[-1];
cx q[31],q[25];
h q[-1];
t q[-1];
t q[-1];
cx q[14],q[19];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[20];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[14];
tdg q[-1];
cx q[19],q[14];
cx q[14],q[19];
cx q[19],q[14];
cx q[14],q[20];
t q[-1];
cx q[14],q[19];
tdg q[-1];
tdg q[-1];
cx q[26],q[19];
cx q[19],q[26];
cx q[26],q[19];
cx q[20],q[26];
cx q[14],q[20];
h q[-1];
cx q[26],q[20];
cx q[20],q[26];
cx q[26],q[20];
cx q[20],q[14];