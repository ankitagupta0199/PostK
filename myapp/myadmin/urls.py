from django.contrib import admin
from django.urls import path,include

from . import views

urlpatterns = [
    path('', views.adminhome),
    path('adminhome/',views.adminhome),
    path('addcat/',views.addcat),
    path('addsubcat/',views.addsubcat),
    path('manageusers/',views.manageusers),
    path('manageuserstatus/',views.manageuserstatus)
]
