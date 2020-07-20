对应文档：

* [rails6+vue的集成使用 (rev.3)](https://weinan.io/2020/07/20/rails.html)

编译vm：

```bash
$ vagrant up
```

登录容器：

```bash
$ vagrant ssh
```

项目目录：

```bash
$ pwd
/home/vagrant/vuedemo
```

编译vue模版：

```bash
$ bin/webpack-dev-server
```

编译输出：


![](https://raw.githubusercontent.com/alchemy-studio/vagrant-boxes/master/railsvue/screenshots/29EE8F9D-CD22-460C-ACCC-36F3D655A9AC.png)

启动rails服务：

```bash
$ rails s
```

启动输出：

```bash
[vagrant@ibm-p8-kvm-03-guest-02 vuedemo]$ rails s
=> Booting Puma
=> Rails 6.0.3.2 application starting in development
=> Run `rails server --help` for more startup options
Puma starting in single mode...
```

访问页面结果：

```bash
$ http http://localhost:3000/hello/say_hello
```

输出结果：

![](https://raw.githubusercontent.com/alchemy-studio/vagrant-boxes/master/railsvue/screenshots/A42DAA10-4BDB-4BF3-8C52-941CE101B359.png)
