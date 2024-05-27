from django.db import models

# Create your models here.
class base_users(models.Model):
    username = models.CharField(max_length=100)
    password = models.CharField(max_length=100)
    
    
class rooms(models.Model):
    room_name = models.CharField(max_length=100)
    room_password = models.CharField(max_length=100)
    
    

class data(models.Model):
    room_name = models.CharField(max_length=100)
    room_password = models.CharField(max_length=100)
    
class blogs(models.Model):
    title = models.CharField(max_length=100)
    content = models.TextField()
    
    