OPENQASM 2.0;
include "qelib1.inc";
qreg q[53];
creg c[53];
h q[0];
cx q[37],q[31];
cx q[26],q[19];
cx q[19],q[26];
cx q[26],q[19];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[13];
cx q[13],q[18];
t q[4];
t q[1];
t q[0];
t q[3];
t q[2];
cx q[31],q[37];
cx q[18],q[13];
cx q[25],q[31];
tdg q[1];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[25];
t q[0];
cx q[31],q[37];
tdg q[4];
tdg q[1];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[37];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[37];
cx q[37],q[30];
h q[0];
cx q[31],q[37];
h q[1];
t q[4];
t q[0];
t q[1];
cx q[31],q[25];
cx q[25],q[31];
cx q[31],q[25];
cx q[25],q[18];
tdg q[2];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[25];
t q[1];
cx q[18],q[13];
tdg q[3];
tdg q[2];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[13];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[19];
h q[1];
cx q[18],q[13];
h q[3];
t q[2];
t q[1];
t q[3];
cx q[31],q[37];
cx q[37],q[31];
cx q[31],q[37];
cx q[25],q[31];
cx q[31],q[25];
cx q[25],q[31];
cx q[18],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[30],q[25];
cx q[13],q[18];
tdg q[2];
cx q[19],q[13];
t q[3];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
tdg q[4];
tdg q[2];
cx q[13],q[18];
cx q[19],q[13];
cx q[13],q[19];
cx q[19],q[13];
cx q[25],q[19];
h q[3];
cx q[18],q[25];
h q[2];
h q[3];
t q[4];
t q[2];
t q[3];
cx q[24],q[30];
cx q[30],q[24];
cx q[24],q[30];
cx q[18],q[24];
tdg q[0];
cx q[13],q[18];
t q[2];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[24];
tdg q[1];
tdg q[0];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[24];
cx q[13],q[18];
h q[2];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[13];
cx q[24],q[18];
t q[2];
t q[1];
t q[0];
cx q[24],q[18];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[25];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
tdg q[2];
cx q[19],q[25];
t q[3];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
tdg q[4];
tdg q[2];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
cx q[19],q[25];
h q[3];
cx q[13],q[19];
cx q[19],q[13];
cx q[13],q[19];
cx q[18],q[13];
h q[2];
h q[4];
t q[3];
t q[2];
t q[4];
cx q[18],q[24];
tdg q[0];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
t q[2];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[24];
tdg q[1];
tdg q[0];
cx q[18],q[24];
cx q[30],q[24];
cx q[24],q[30];
cx q[30],q[24];
cx q[24],q[18];
h q[2];
cx q[30],q[24];
t q[0];
h q[2];
t q[1];
t q[2];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[19];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[25];
tdg q[0];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
t q[4];
cx q[25],q[19];
tdg q[3];
tdg q[0];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[19];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[13];
h q[4];
cx q[25],q[19];
t q[0];
t q[3];
cx q[19],q[25];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[19];
tdg q[3];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[13];
t q[2];
cx q[19],q[25];
tdg q[0];
tdg q[3];
cx q[13],q[18];
cx q[18],q[13];
cx q[13],q[18];
cx q[18],q[25];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[18];
h q[2];
cx q[19],q[25];
h q[3];
t q[2];
t q[3];
cx q[24],q[18];
cx q[19],q[25];
cx q[25],q[19];
cx q[19],q[25];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[24];
tdg q[1];
cx q[18],q[24];
cx q[24],q[18];
cx q[18],q[24];
cx q[24],q[30];
t q[3];
cx q[24],q[18];
tdg q[2];
tdg q[1];
cx q[25],q[18];
cx q[18],q[25];
cx q[25],q[18];
cx q[30],q[25];
cx q[24],q[30];
h q[3];
cx q[25],q[30];
cx q[30],q[25];
cx q[25],q[30];
cx q[30],q[24];