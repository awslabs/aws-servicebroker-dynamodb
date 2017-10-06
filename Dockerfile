FROM ansibleplaybookbundle/apb-base
MAINTAINER Ansible Playbook Bundle Community

RUN yum -y install python-boto3 && yum clean all

COPY roles /opt/ansible/roles
COPY playbooks /opt/apb/actions

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IGR5bmFtb2RiLWFwYgpkZXNjcmlwdGlvbjogJ0R5bmFtb0RCIFRh\
YmxlJwp0YWdzOgogIC0gYW1hem9uCiAgLSBkeW5hbW9kYgpiaW5kYWJsZTogdHJ1ZQphc3luYzog\
b3B0aW9uYWwKbWV0YWRhdGE6CiAgZGlzcGxheU5hbWU6ICJBbWF6b24gRHluYW1vREIiCiAgbG9u\
Z0Rlc2NyaXB0aW9uOiAiQW1hem9uIER5bmFtb0RCIGlzIGEgZnVsbHkgbWFuYWdlZCBOb1NRTCBk\
YXRhYmFzZSBzZXJ2aWNlIHRoYXQgcHJvdmlkZXMgZmFzdCBhbmQgcHJlZGljdGFibGUgcGVyZm9y\
bWFuY2Ugd2l0aCBzZWFtbGVzcyBzY2FsYWJpbGl0eS4gWW91IGNhbiB1c2UgQW1hem9uIER5bmFt\
b0RCIHRvIGNyZWF0ZSBhIGRhdGFiYXNlIHRhYmxlIHRoYXQgY2FuIHN0b3JlIGFuZCByZXRyaWV2\
ZSBhbnkgYW1vdW50IG9mIGRhdGEsIGFuZCBzZXJ2ZSBhbnkgbGV2ZWwgb2YgcmVxdWVzdCB0cmFm\
ZmljLiBBbWF6b24gRHluYW1vREIgYXV0b21hdGljYWxseSBzcHJlYWRzIHRoZSBkYXRhIGFuZCB0\
cmFmZmljIGZvciB0aGUgdGFibGUgb3ZlciBhIHN1ZmZpY2llbnQgbnVtYmVyIG9mIHNlcnZlcnMg\
dG8gaGFuZGxlIHRoZSByZXF1ZXN0IGNhcGFjaXR5IHNwZWNpZmllZCBieSB0aGUgY3VzdG9tZXIg\
YW5kIHRoZSBhbW91bnQgb2YgZGF0YSBzdG9yZWQsIHdoaWxlIG1haW50YWluaW5nIGNvbnNpc3Rl\
bnQgYW5kIGZhc3QgcGVyZm9ybWFuY2UuIgogIGltYWdlVXJsOiAiaHR0cHM6Ly9zMy5hbWF6b25h\
d3MuY29tL3RocC1hd3MtaWNvbnMtZGV2L0RhdGFiYXNlX0FtYXpvbkR5bmFtb0RCX0xBUkdFLnBu\
ZyIKICBkb2N1bWVudGF0aW9uVXJsOiBodHRwczovL2F3cy5hbWF6b24uY29tL2RvY3VtZW50YXRp\
b24vZHluYW1vZGIvCnBsYW5zOgogIC0gbmFtZTogZGVmYXVsdAogICAgZGVzY3JpcHRpb246ICdE\
eW5hbW9EQiBUYWJsZScKICAgIGZyZWU6IGZhbHNlCiAgICBwYXJhbWV0ZXJzOgogICAgICAtIG5h\
bWU6IHN0YWNrX2lkZW50aWZpZXIKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAgIHRpdGxl\
OiBVbmlxdWUgU3RhY2sgSWRlbnRpZmllcgogICAgICAgIGRlc2NyaXB0aW9uOiAnVW5pcXVlIGlk\
ZW50aWZpZXIgdG8gYmUgaW5jbHVkZWQgaW4gdGhlIENsb3VkRm9ybWF0aW9uIFN0YWNrIE5hbWUg\
dG8gcHJldmVudCBuYW1pbmcgY29sbGlzaW9ucy4gTXVzdCBvbmx5IGNvbnRhaW4gYWxwaGFudW1l\
cmljIGNoYXJhY3RlcnMgYW5kIGh5cGhlbnMuIChlLmcuICJzYW1wbGUtZHluYW1vZGItc3RhY2si\
LCAicHJvZHVjdGlvbi1keW5hbW9kYi0wOS0yMDE3IiknCiAgICAgICAgdHlwZTogc3RyaW5nCiAg\
ICAgIC0gbmFtZTogYXdzX2FjY2Vzc19rZXkKICAgICAgICByZXF1aXJlZDogdHJ1ZQogICAgICAg\
IHRpdGxlOiBBV1MgQWNjZXNzIEtleQogICAgICAgIGRlc2NyaXB0aW9uOiAnQVdTIEFjY2VzcyBL\
ZXkgdG8gYXV0aGVudGljYXRlIHRvIEFXUyB3aXRoLicKICAgICAgICB0eXBlOiBzdHJpbmcKICAg\
ICAgLSBuYW1lOiBhd3Nfc2VjcmV0X2tleQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAg\
dGl0bGU6IEFXUyBTZWNyZXQgS2V5CiAgICAgICAgZGVzY3JpcHRpb246ICdBV1MgU2VjcmV0IEtl\
eSB0byBhdXRoZW50aWNhdGUgdG8gQVdTIHdpdGguJwogICAgICAgIHR5cGU6IHN0cmluZwogICAg\
ICAtIG5hbWU6IHJlZ2lvbgogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IEFX\
UyBSZWdpb24KICAgICAgICBkZXNjcmlwdGlvbjogJ0FXUyBSZWdpb24gdG8gY3JlYXRlIHRoZSBi\
dWNrZXQgaW4uJwogICAgICAgIHR5cGU6IGVudW0KICAgICAgICBlbnVtOgogICAgICAgICAgLSBh\
cC1ub3J0aGVhc3QtMQogICAgICAgICAgLSBhcC1ub3J0aGVhc3QtMgogICAgICAgICAgLSBhcC1z\
b3V0aC0xCiAgICAgICAgICAtIGFwLXNvdXRoZWFzdC0xCiAgICAgICAgICAtIGFwLXNvdXRoZWFz\
dC0yCiAgICAgICAgICAtIGNhLWNlbnRyYWwtMQogICAgICAgICAgLSBldS1jZW50cmFsLTEKICAg\
ICAgICAgIC0gZXUtd2VzdC0xCiAgICAgICAgICAtIGV1LXdlc3QtMgogICAgICAgICAgLSBzYS1l\
YXN0LTEKICAgICAgICAgIC0gdXMtZWFzdC0xCiAgICAgICAgICAtIHVzLWVhc3QtMgogICAgICAg\
ICAgLSB1cy13ZXN0LTEKICAgICAgICAgIC0gdXMtd2VzdC0yCiAgICAgICAgZGVmYXVsdDogInVz\
LXdlc3QtMiIKICAgICAgLSBuYW1lOiBBcHBsaWNhdGlvbk5hbWUKICAgICAgICByZXF1aXJlZDog\
dHJ1ZQogICAgICAgIHRpdGxlOiBBcHBsaWNhdGlvbiBOYW1lCiAgICAgICAgZGVzY3JpcHRpb246\
ICdUaGlzIHdpbGwgYmUgc2V0IGFzIHRoZSB2YWx1ZSBmb3IgdGhlIFwiQVBQTElDQVRJT05fTkFN\
RVwiIHRhZyBvbiBhbGwgc3VwcG9ydGVkIHJlc291cmNlcycKICAgICAgICB0eXBlOiBzdHJpbmcK\
ICAgICAgLSBuYW1lOiBIYXNoQXR0cmlidXRlTmFtZQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAg\
ICAgICAgdGl0bGU6IEhhc2ggQXR0cmlidXRlIE5hbWUKICAgICAgICBkZXNjcmlwdGlvbjogJ1Ro\
ZSBhdHRyaWJ1dGUgbmFtZSB0aGF0IGlzIHVzZWQgYXMgdGhlIHByaW1hcnkga2V5IGZvciB0aGlz\
IHRhYmxlLiBQcmltYXJ5IGtleSBlbGVtZW50IG5hbWVzIGNhbiBiZSAxIOKAkyAyNTUgY2hhcmFj\
dGVycyBsb25nIGFuZCBoYXZlIG5vIGNoYXJhY3RlciByZXN0cmljdGlvbnMuJwogICAgICAgIHR5\
cGU6IHN0cmluZwogICAgICAtIG5hbWU6IEhhc2hBdHRyaWJ1dGVUeXBlCiAgICAgICAgcmVxdWly\
ZWQ6IHRydWUKICAgICAgICB0aXRsZTogSGFzaCBBdHRyaWJ1dGUgVHlwZQogICAgICAgIGRlc2Ny\
aXB0aW9uOiAnVGhlIGRhdGEgdHlwZSBmb3IgdGhlIGF0dHJpYnV0ZS4gWW91IGNhbiBzcGVjaWZ5\
IFMgZm9yIHN0cmluZyBkYXRhLCBOIGZvciBudW1lcmljIGRhdGEsIG9yIEIgZm9yIGJpbmFyeSBk\
YXRhLicKICAgICAgICBlbnVtOiBbIlMiLCAiTiIsICJCIl0KICAgICAgICB0eXBlOiBlbnVtCiAg\
ICAgICAgZGVmYXVsdDogIlMiCiAgICAgIC0gbmFtZTogUmFuZ2VBdHRyaWJ1dGVOYW1lCiAgICAg\
ICAgcmVxdWlyZWQ6IHRydWUKICAgICAgICB0aXRsZTogUmFuZ2UgQXR0cmlidXRlIE5hbWUKICAg\
ICAgICBkZXNjcmlwdGlvbjogJ1RoZSBhdHRyaWJ1dGUgbmFtZSB0aGF0IGlzIHVzZWQgYXMgdGhl\
IHNvcnQga2V5IGZvciB0aGlzIHRhYmxlLiBTb3J0IGtleSBlbGVtZW50IG5hbWVzIGNhbiBiZSAx\
IOKAkyAyNTUgY2hhcmFjdGVycyBsb25nIGFuZCBoYXZlIG5vIGNoYXJhY3RlciByZXN0cmljdGlv\
bnMuJwogICAgICAgIHR5cGU6IHN0cmluZwogICAgICAtIG5hbWU6IFJhbmdlQXR0cmlidXRlVHlw\
ZQogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IFJhbmdlIEF0dHJpYnV0ZSBU\
eXBlCiAgICAgICAgZGVzY3JpcHRpb246ICdUaGUgZGF0YSB0eXBlIGZvciB0aGUgYXR0cmlidXRl\
LiBZb3UgY2FuIHNwZWNpZnkgUyBmb3Igc3RyaW5nIGRhdGEsIE4gZm9yIG51bWVyaWMgZGF0YSwg\
b3IgQiBmb3IgYmluYXJ5IGRhdGEuJwogICAgICAgIGVudW06IFsiUyIsICJOIiwgIkIiXQogICAg\
ICAgIHR5cGU6IGVudW0KICAgICAgICBkZWZhdWx0OiAiUyIKICAgICAgLSBuYW1lOiBSZWFkQ2Fw\
YWNpdHlVbml0cwogICAgICAgIHJlcXVpcmVkOiB0cnVlCiAgICAgICAgdGl0bGU6IFJlYWQgQ2Fw\
YWNpdHkgVW5pdHMKICAgICAgICBkZXNjcmlwdGlvbjogJ1NldHMgdGhlIGRlc2lyZWQgbWluaW11\
bSBudW1iZXIgb2YgY29uc2lzdGVudCByZWFkcyBvZiBpdGVtcyAodXAgdG8gMUtCIGluIHNpemUp\
IHBlciBzZWNvbmQgZm9yIHRoZSBzcGVjaWZpZWQgdGFibGUgYmVmb3JlIEFtYXpvbiBEeW5hbW9E\
QiBiYWxhbmNlcyB0aGUgbG9hZC4nCiAgICAgICAgdHlwZTogaW50CiAgICAgICAgZGVmYXVsdDog\
NQogICAgICAtIG5hbWU6IFdyaXRlQ2FwYWNpdHlVbml0cwogICAgICAgIHJlcXVpcmVkOiB0cnVl\
CiAgICAgICAgdGl0bGU6IFdyaXRlIENhcGFjaXR5IFVuaXRzCiAgICAgICAgZGVzY3JpcHRpb246\
ICdTZXRzIHRoZSBkZXNpcmVkIG1pbmltdW0gbnVtYmVyIG9mIGNvbnNpc3RlbnQgd3JpdGVzIG9m\
IGl0ZW1zICh1cCB0byAxS0IgaW4gc2l6ZSkgcGVyIHNlY29uZCBmb3IgdGhlIHNwZWNpZmllZCB0\
YWJsZSBiZWZvcmUgQW1hem9uIER5bmFtb0RCIGJhbGFuY2VzIHRoZSBsb2FkLicKICAgICAgICB0\
eXBlOiBpbnQKICAgICAgICBkZWZhdWx0OiA1CiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5h\
bWU6ICJBbWF6b24gZHluYW1vZGIiCiAgICAgIGxvbmdEZXNjcmlwdGlvbjogIkFtYXpvbiBEeW5h\
bW9EQiBpcyBhIGZ1bGx5IG1hbmFnZWQgTm9TUUwgZGF0YWJhc2Ugc2VydmljZSB0aGF0IHByb3Zp\
ZGVzIGZhc3QgYW5kIHByZWRpY3RhYmxlIHBlcmZvcm1hbmNlIHdpdGggc2VhbWxlc3Mgc2NhbGFi\
aWxpdHkuIFlvdSBjYW4gdXNlIEFtYXpvbiBEeW5hbW9EQiB0byBjcmVhdGUgYSBkYXRhYmFzZSB0\
YWJsZSB0aGF0IGNhbiBzdG9yZSBhbmQgcmV0cmlldmUgYW55IGFtb3VudCBvZiBkYXRhLCBhbmQg\
c2VydmUgYW55IGxldmVsIG9mIHJlcXVlc3QgdHJhZmZpYy4gQW1hem9uIER5bmFtb0RCIGF1dG9t\
YXRpY2FsbHkgc3ByZWFkcyB0aGUgZGF0YSBhbmQgdHJhZmZpYyBmb3IgdGhlIHRhYmxlIG92ZXIg\
YSBzdWZmaWNpZW50IG51bWJlciBvZiBzZXJ2ZXJzIHRvIGhhbmRsZSB0aGUgcmVxdWVzdCBjYXBh\
Y2l0eSBzcGVjaWZpZWQgYnkgdGhlIGN1c3RvbWVyIGFuZCB0aGUgYW1vdW50IG9mIGRhdGEgc3Rv\
cmVkLCB3aGlsZSBtYWludGFpbmluZyBjb25zaXN0ZW50IGFuZCBmYXN0IHBlcmZvcm1hbmNlLiIK\
ICAgICAgY29zdDogJDAuMDAK"


USER apb
