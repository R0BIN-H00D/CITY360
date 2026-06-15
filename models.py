from django.db import models

# Create your models here.

class Login(models.Model):
    email = models.EmailField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    userType = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="pending")
    
class WorkersReg(models.Model):
    worid = models.ForeignKey(Login, on_delete=models.CASCADE, null=True)
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    experience = models.CharField(max_length=100, null=True)
    location = models.CharField(max_length=100, null=True)
    image= models.ImageField(max_length=100, null=True)
    gender = models.CharField(max_length=100, null=True)
    category = models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100, null=True)
    wages = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="pending")
    
class UserReg(models.Model):
    usrid = models.ForeignKey(Login, on_delete=models.CASCADE, null=True)
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    image= models.ImageField(max_length=100, null=True)
    gender = models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="pending")
    
class Category(models.Model):
    category = models.CharField(max_length=100, null=True)
    image= models.ImageField(max_length=100, null=True)
    
class Booking(models.Model):
    usrid = models.ForeignKey(UserReg, on_delete=models.CASCADE, null=True)
    worid = models.CharField(max_length=100, null=True)
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    category = models.CharField(max_length=100, null=True)
    location = models.CharField(max_length=100, null=True)
    startingdate = models.CharField(max_length=100, null=True)
    endingdate = models.CharField(max_length=100, null=True)
    wages = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="notbooked")
    
class Useraddfeedback(models.Model):
    usrid = models.ForeignKey(UserReg, on_delete=models.CASCADE, null=True)
    worid = models.CharField(max_length=100, null=True)
    name = models.CharField(max_length=100, null=True)
    category = models.CharField(max_length=100, null=True)
    feedback = models.CharField(max_length=100, null=True)
    
class Addfeedback(models.Model):
    usrid = models.ForeignKey(UserReg, on_delete=models.CASCADE, null=True)
    feedback = models.CharField(max_length=100, null=True)
    
class Workeraddfeedback(models.Model):
    worid = models.ForeignKey(WorkersReg, on_delete=models.CASCADE, null=True)
    feedback = models.CharField(max_length=100, null=True)
    