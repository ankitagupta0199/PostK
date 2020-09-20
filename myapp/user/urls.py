from django.contrib import admin
from django.urls import path,include

from . import views

urlpatterns = [
    path('', views.home),
    path('addproduct/', views.addproduct),
    path('editprofileuser/', views.editprofileuser),
    path('buyproduct/', views.buyproduct),
    path('payment/', views.payment),
    path('managebidding/', views.managebidding),
    path('bidding/', views.bidding),
]
