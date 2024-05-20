from django.http import HttpResponse
from django.shortcuts import render
from .models import base_users

# Create your views here.
def home(request):
   return render(request, 'home.html')


# def getuser():
#    data=User.objects.all()