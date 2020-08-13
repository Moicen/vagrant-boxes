## USAGE

```bash
$ vagrant up

```

```bash
$ vagrant ssh                                                                                                                                                                                                                   00:24:30
[vagrant@ibm-p8-kvm-03-guest-02 ~]$ ls
hello_world.py
```

```bash
[vagrant@ibm-p8-kvm-03-guest-02 ~]$ sudo ./hello_world.py &
[1] 13139
[vagrant@ibm-p8-kvm-03-guest-02 ~]$ ls
b'            bash-13074 [000] ....   385.321550: 0: Hello, World!'
hello_world.py
[vagrant@ibm-p8-kvm-03-guest-02 ~]$
```

## csysdig

```bash
$ sudo csysdig
```
