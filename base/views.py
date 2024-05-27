from django.http import HttpResponse
from django.shortcuts import render
from .models import blogs

# Create your views here.
def home(request):
   data=blogs.objects.all().values()
   return render(request, 'home.html',{"data":data})


