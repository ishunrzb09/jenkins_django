import email

from django.shortcuts import HttpResponse
from django.shortcuts import HttpResponseRedirect
from django.shortcuts import render
# Create your views here.


def index(request):
    xyz = [1, 2, 3, 4, 5, 6, 7, 8]
    return HttpResponse("purji url")
