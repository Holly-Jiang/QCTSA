OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[26];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[24];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[26],q[19];
cx q[24],q[30];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[26];
tdg q[-1];
cx q[25],q[19];
t q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[26];
tdg q[-1];
tdg q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[26];
cx q[25],q[19];
h q[-1];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[25];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[30];
cx q[30],q[37];
cx q[37],q[30];
cx q[30],q[24];
tdg q[-1];
cx q[37],q[30];
t q[-1];
cx q[37],q[30];
cx q[30],q[37];
cx q[37],q[30];
cx q[30],q[24];
tdg q[-1];
tdg q[-1];
cx q[37],q[30];
cx q[30],q[37];
cx q[37],q[30];
cx q[30],q[24];
cx q[37],q[30];
h q[-1];
cx q[24],q[30];
cx q[30],q[24];
cx q[24],q[30];
cx q[30],q[37];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[30],q[25];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[13];
cx q[13],q[18];
cx q[37],q[30];
tdg q[-1];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[37];
t q[-1];
cx q[30],q[25];
tdg q[-1];
tdg q[-1];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[25];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[31];
h q[-1];
cx q[30],q[25];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[25];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[13];
cx q[25],q[19];
tdg q[-1];
cx q[18],q[25];
t q[-1];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[19];
tdg q[-1];
tdg q[-1];
cx q[25],q[19];
cx q[13],q[19];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[25];
h q[-1];
cx q[13],q[19];
t q[-1];
t q[-1];
t q[-1];
cx q[25],q[30];
cx q[13],q[19];
cx q[31],q[25];
tdg q[-1];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[31];
t q[-1];
cx q[25],q[30];
tdg q[-1];
tdg q[-1];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[30];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[37];
h q[-1];
cx q[25],q[30];
h q[-1];
h q[-1];
t q[-1];
t q[-1];
t q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[13];
tdg q[-1];
cx q[25],q[19];
t q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[13];
tdg q[-1];
tdg q[-1];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[13];
cx q[25],q[19];
h q[-1];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[25];
t q[-1];
h q[-1];
t q[-1];
t q[-1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[30];
cx q[30],q[24];
cx q[24],q[30];
cx q[30],q[37];
cx q[24],q[30];
tdg q[-1];
cx q[37],q[30];
cx q[30],q[37];
cx q[37],q[30];
cx q[30],q[24];
t q[-1];
cx q[30],q[37];
tdg q[-1];
tdg q[-1];
cx q[24],q[30];
cx q[30],q[24];
cx q[24],q[30];
cx q[30],q[37];
cx q[24],q[30];
h q[-1];
cx q[30],q[24];
cx q[24],q[30];
cx q[30],q[24];
cx q[37],q[30];
t q[-1];
t q[-1];
cx q[30],q[37];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[30];
tdg q[-1];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[25];
t q[-1];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[30];
tdg q[-1];
tdg q[-1];
cx q[25],q[30];
cx q[37],q[30];
cx q[30],q[37];
cx q[37],q[30];
cx q[30],q[25];
h q[-1];
cx q[37],q[30];
h q[-1];
t q[-1];
t q[-1];
cx q[19],q[25];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[26];
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
cx q[31],q[25];
cx q[25],q[31];
cx q[31],q[25];
cx q[26],q[31];
cx q[19],q[26];
h q[-1];
cx q[31],q[26];
cx q[26],q[31];
cx q[31],q[26];
cx q[26],q[19];
