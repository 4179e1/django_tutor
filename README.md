# Django tutorial
- [Django tutorial](#django-tutorial)
  - [Create Project](#create-project)
    - [Init Project](#init-project)
    - [Python Virtualenv](#python-virtualenv)
    - [configuration](#configuration)
    - [Testing](#testing)

## Create Project

### Init Project

```
django-admin startproject mysite
```

```
mysite
├── manage.py
└── mysite
    ├── asgi.py
    ├── __init__.py
    ├── settings.py
    ├── urls.py
    └── wsgi.py
```
These files are:

The outer mysite/ root directory is a container for your project. Its name doesn’t matter to Django; you can rename it to anything you like.
- manage.py: A command-line utility that lets you interact with this Django project in various ways. You can read all the details about manage.py in django-admin and manage.py.
- The inner mysite/ directory is the actual Python package for your project. Its name is the Python package name you’ll need to use to import anything inside it (e.g. mysite.urls).
- mysite/__init__.py: An empty file that tells Python that this directory should be considered a Python package. If you’re a Python beginner, read more about packages in the official Python docs.
- mysite/settings.py: Settings/configuration for this Django project. Django settings will tell you all about how settings work.
- mysite/urls.py: The URL declarations for this Django project; a “table of contents” of your Django-powered site. You can read more about URLs in URL dispatcher.
- mysite/asgi.py: An entry-point for ASGI-compatible web servers to serve your project. See How to deploy with ASGI for more details.
- mysite/wsgi.py: An entry-point for WSGI-compatible web servers to serve your project. See How to deploy with WSGI for more details.

### Python Virtualenv

```
virtualenv venv
source venv/bin/activate
vim requirements.txt
pip install -r requirements.txt
```

### configuration

```
vim mysite/settings.py
```

```diff
$ git diff mysite/settings.py 
diff --git a/mysite/settings.py b/mysite/settings.py
index 2f737ba..92e82b8 100644
--- a/mysite/settings.py
+++ b/mysite/settings.py
@@ -25,7 +25,7 @@ SECRET_KEY = 'django-insecure-cl*-fu&y+-=65ykkqe_w+1s*r3ye=jz#fdg&8jd!v1pkf+pt1(
 # SECURITY WARNING: don't run with debug turned on in production!
 DEBUG = True
 
-ALLOWED_HOSTS = []
+ALLOWED_HOSTS = ['*']
 
 
 # Application definition
@@ -75,8 +75,8 @@ WSGI_APPLICATION = 'mysite.wsgi.application'
 
 DATABASES = {
     'default': {
-        'ENGINE': 'django.db.backends.sqlite3',
-        'NAME': BASE_DIR / 'db.sqlite3',
+        #    'ENGINE': 'django.db.backends.sqlite3',
+        #    'NAME': BASE_DIR / 'db.sqlite3',
     }
 }
 ```

 ### Testing

```
python manage.py runserver 0:8000
```
