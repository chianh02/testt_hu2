<p align="center">
    <img src="https://s-cart.org/logo.png" width="150"><br>
</p>
<p align="center">Open source e-commerce for business use laravel framework</p>
<p align="center">
<a href="http://demo.s-cart.org">Demo</a> | <a href="https://s-cart.org">Home page</a> | <a href="https://s-cart.org/page/installation.html">Installation</a> | <a href="https://s-cart.org/guide.html">Document</a>
</p>
<p align="center">
<a href="https://packagist.org/packages/lanhktc/s-cart"><img src="https://poser.pugx.org/lanhktc/s-cart/d/total.svg" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/lanhktc/s-cart"><img src="https://poser.pugx.org/lanhktc/s-cart/v/stable.svg" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/lanhktc/s-cart"><img src="https://poser.pugx.org/lanhktc/s-cart/license.svg" alt="License"></a>
</p>
<p align="center"><img src="https://s-cart.org/images/s-cart-1.jpg"></p>
<p align="center"><img src="https://s-cart.org/images/s-cart-4-1.jpg"></p>
<p align="center"><img src="https://s-cart.org/images/s-cart-4-2.jpg"></p>


## About S-cart
Free Open source E-commerce use Laravel framework for Business

## Technology
- Core Laravel framework: https://laravel.com/
- Laravel-admin : http://laravel-admin.org/
- In addition, s-cart also integrates other free open source libraries.

## List Functions of S-cart

======= CMS CONTENT =======

- Manage blogs and news
- Manage pages: contact, introduction ...
- Multi-language

======= SHOPPING =======
- Customer sign up
- Purchase history
- Process cart
- Discount
- Shipping fee
- Payment: paypal
- Manage product: price sale, cost price, promotion price, quantity, multi images ..
- Categories product
- Brand product

======= SYSTEM MANAGEMENT =======

- Manage & permission users, groups
- Customer management
- Image management
- Order management: edit orders, update payment status, shipping status ...
- Order history
- Report:  chart, statistics, export csv, pdf...
- Generate image thumbnail, watermark
- Manage banner, logo
- Configure email SMTP
- System configuration: turn off website, hide / show products


## Requirements:

Version 2.0.4, 2.0.3, 2.0.2 & 1.6:

> Core laravel framework 5.6. Requirements::

```
- PHP >= 7.1.3
- OpenSSL PHP Extension
- PDO PHP Extension
- Mbstring PHP Extension
- Tokenizer PHP Extension
- XML PHP Extension
- Ctype PHP Extension
- JSON PHP Extension
```
Version 1.5:

> Core laravel framework 5.5. Requirements:

```
- PHP >= 7.0.0
- OpenSSL PHP Extension
- PDO PHP Extension
- Mbstring PHP Extension
- Tokenizer PHP Extension
- XML PHP Extension
```


## Installation & configuration:

Install last version S-cart

```
composer create-project lanhktc/s-cart
```

or, install a specific version of S-cart, ex 1.5.0

```
composer create-project lanhktc/s-cart your-project "1.5.0"
```


- Chmod -R 777 public/documents/website
- Folder thumbnail: public/documents/website/thumb.

```
- Create a new database. Then, import file sql database/s-cart.sql.
- Link admin: your-domain/system_admin. User/pass admin/admin
```



## Demo:

- Font-end : http://demo.s-cart.org
- Back-end: http://demo.s-cart.org/system_admin   <code>User/pass: user/123456</code>

