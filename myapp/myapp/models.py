from django.db import models

class Register(models.Model):
	regid = models.AutoField(primary_key=True)
	name=models.CharField(max_length=20)
	email=models.CharField(max_length=50)
	password=models.CharField(max_length=10)
	address=models.CharField(max_length=1000)
	city=models.CharField(max_length=10)
	mobile=models.CharField(max_length=20)
	dob=models.CharField(max_length=20)
	gender=models.CharField(max_length=20)
	role=models.CharField(max_length=20)
	status=models.IntegerField()
	
class State(models.Model):
	sid = models.AutoField(primary_key=True)
	snm=models.CharField(max_length=100)
	
class City(models.Model):
	cid = models.AutoField(primary_key=True)
	sid=models.IntegerField()
	cnm=models.CharField(max_length=100)		
