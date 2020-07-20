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

启动rails服务：

```bash
$ rails s
```

访问页面结果：

```bash
[vagrant@ibm-p8-kvm-03-guest-02 ~]$ http http://localhost:3000/hello/say_hello
HTTP/1.1 200 OK
Cache-Control: max-age=0, private, must-revalidate
Content-Type: text/html; charset=utf-8
ETag: W/"9b81e29f4e8892773adeabbc4dd9d41a"
Referrer-Policy: strict-origin-when-cross-origin
Set-Cookie: _vuedemo_session=AVY5iCHujuHeIpcrdcpaPxwwqjNwnEeuPLVssdzmUdZdqcWRi%2BjGBhVxKZ37Jq4TcnWBPRHztFXzRKuxWwtok5CHiCLfvEG3RHNEtMxG3ETnTLSR%2FgwxTB11bHq3ExnCO9qIfOs9WgpYESuJ9DhipxtxpH1pOs%2BgyMgYtmdTD4qr%2BI2knZpOKX5R74k2w2PJv%2FJbO1QUbM6wHBwDcJmbm3b6swnKdjZaZ9lPxxurN0nEFSOIWclAfVvIIiyk76OAKw%2BhCkqnMaSa3Rp6GLZpvolBeK8RXmX4--dyZ%2Bayx8l27XDihU--uLYGus%2Ft7%2BVRRSpjTPXDIw%3D%3D; path=/; HttpOnly
Transfer-Encoding: chunked
X-Content-Type-Options: nosniff
X-Download-Options: noopen
X-Frame-Options: SAMEORIGIN
X-Permitted-Cross-Domain-Policies: none
X-Request-Id: e0c050ec-2730-4470-bbac-a123076ccafb
X-Runtime: 2.244963
X-XSS-Protection: 1; mode=block

<!DOCTYPE html>
<html>
  <head>
    <title>Vuedemo</title>
    <meta name="csrf-param" content="authenticity_token" />
<meta name="csrf-token" content="2YMgIcvRo8tXPmL1qVMeNMK7xskbuszAKa5Tx0yNmQAx5jjvQOQUJzLgtOFFqn9bPqzX5+uXFZVoLhXtX9V/9Q==" />


    <link rel="stylesheet" media="all" href="/assets/application.debug-917813cc27fab39ff63a5769b2b65cc922b87bd3b2defae0fa7858201b71c924.css" data-turbolinks-track="reload" />
    <script src="/packs/js/application-9afcbb5693aa87623e69.js" data-turbolinks-track="reload"></script>
  </head>

  <body>
    <script src="/packs/js/hello_vue-567d309d1d4b96c19c2b.js"></script>
<div id='hello'>
  <app></app>
</div>

  </body>
</html>

[vagrant@ibm-p8-kvm-03-guest-02 ~]$
```

服务端输出：

```bash
[vagrant@ibm-p8-kvm-03-guest-02 vuedemo]$ rails s
=> Booting Puma
=> Rails 6.0.3.2 application starting in development
=> Run `rails server --help` for more startup options
Puma starting in single mode...
* Version 4.3.5 (ruby 2.7.1-p83), codename: Mysterious Traveller
* Min threads: 5, max threads: 5
* Environment: development
* Listening on tcp://127.0.0.1:3000
* Listening on tcp://[::1]:3000
Use Ctrl-C to stop
Started GET "/hello/say_hello" for ::1 at 2020-07-20 07:37:40 +0000
   (0.3ms)  SELECT sqlite_version(*)
Processing by HelloController#say_hello as */*
  Rendering hello/say_hello.html.erb within layouts/application
[Webpacker] Compiling...
[Webpacker] Compiled all packs in /home/vagrant/vuedemo/public/packs
[Webpacker] Hash: 732a4600c3b6090ed179
Version: webpack 4.43.0
Time: 1263ms
Built at: 07/20/2020 7:37:42 AM
                                     Asset       Size       Chunks                         Chunk Names
    js/application-9afcbb5693aa87623e69.js    124 KiB  application  [emitted] [immutable]  application
js/application-9afcbb5693aa87623e69.js.map    139 KiB  application  [emitted] [dev]        application
      js/hello_vue-567d309d1d4b96c19c2b.js    266 KiB    hello_vue  [emitted] [immutable]  hello_vue
  js/hello_vue-567d309d1d4b96c19c2b.js.map    312 KiB    hello_vue  [emitted] [dev]        hello_vue
                             manifest.json  689 bytes               [emitted]
Entrypoint application = js/application-9afcbb5693aa87623e69.js js/application-9afcbb5693aa87623e69.js.map
Entrypoint hello_vue = js/hello_vue-567d309d1d4b96c19c2b.js js/hello_vue-567d309d1d4b96c19c2b.js.map
[./app/javascript/app.vue] 1.15 KiB {hello_vue} [built]
[./app/javascript/app.vue?vue&type=script&lang=js&] 364 bytes {hello_vue} [built]
[./app/javascript/app.vue?vue&type=style&index=0&id=6fb8108a&scoped=true&lang=css&] 746 bytes {hello_vue} [built]
[./app/javascript/app.vue?vue&type=template&id=6fb8108a&scoped=true&] 213 bytes {hello_vue} [built]
[./app/javascript/channels sync recursive _channel\.js$] ./app/javascript/channels sync _channel\.js$ 160 bytes {application} [built]
[./app/javascript/channels/index.js] 211 bytes {application} [built]
[./app/javascript/packs/application.js] 749 bytes {application} [built]
[./app/javascript/packs/hello_vue.js] 1.89 KiB {hello_vue} [built]
[./node_modules/babel-loader/lib/index.js?!./node_modules/vue-loader/lib/index.js?!./app/javascript/app.vue?vue&type=script&lang=js&] ./node_modules/babel-loader/lib??ref--8-0!./node_modules/vue-loader/lib??vue-loader-options!./app/javascript/app.vue?vue&type=script&lang=js& 115 bytes {hello_vue} [built]
[./node_modules/css-loader/dist/cjs.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./app/javascript/app.vue?vue&type=style&index=0&id=6fb8108a&scoped=true&lang=css&] ./node_modules/css-loader/dist/cjs.js??ref--3-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--3-2!./node_modules/vue-loader/lib??vue-loader-options!./app/javascript/app.vue?vue&type=style&index=0&id=6fb8108a&scoped=true&lang=css& 770 bytes {hello_vue} [built]
[./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js?!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src/index.js?!./node_modules/vue-loader/lib/index.js?!./app/javascript/app.vue?vue&type=style&index=0&id=6fb8108a&scoped=true&lang=css&] ./node_modules/style-loader/dist/cjs.js!./node_modules/css-loader/dist/cjs.js??ref--3-1!./node_modules/vue-loader/lib/loaders/stylePostLoader.js!./node_modules/postcss-loader/src??ref--3-2!./node_modules/vue-loader/lib??vue-loader-options!./app/javascript/app.vue?vue&type=style&index=0&id=6fb8108a&scoped=true&lang=css& 771 bytes {hello_vue} [built]
[./node_modules/vue-loader/lib/loaders/templateLoader.js?!./node_modules/vue-loader/lib/index.js?!./app/javascript/app.vue?vue&type=template&id=6fb8108a&scoped=true&] ./node_modules/vue-loader/lib/loaders/templateLoader.js??vue-loader-options!./node_modules/vue-loader/lib??vue-loader-options!./app/javascript/app.vue?vue&type=template&id=6fb8108a&scoped=true& 288 bytes {hello_vue} [built]
[./node_modules/webpack/buildin/global.js] (webpack)/buildin/global.js 905 bytes {hello_vue} [built]
[./node_modules/webpack/buildin/module.js] (webpack)/buildin/module.js 552 bytes {application} [built]
    + 10 hidden modules

/usr/local/share/gems/gems/sprockets-rails-3.2.1/lib/sprockets/rails/helper.rb:355: warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
/usr/local/share/gems/gems/sprockets-4.0.2/lib/sprockets/base.rb:118: warning: The called method `[]' is defined here
  Rendered hello/say_hello.html.erb within layouts/application (Duration: 2186.1ms | Allocations: 3377)
[Webpacker] Everything's up-to-date. Nothing to do
Completed 200 OK in 2228ms (Views: 2223.4ms | ActiveRecord: 0.0ms | Allocations: 20577)
```