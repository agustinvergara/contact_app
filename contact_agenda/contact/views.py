from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect
from django.urls import reverse

from .models import *

# Create your views here.
def index(request):
    contact_list = Contact.objects.all()
    return render(request, 'index.html', {
        'contact_list': contact_list
    })

def detail(request, contact_id):
    contact_id = get_object_or_404(Contact, pk=contact_id)
    return render(request, 'contact-profile.html', {
        'contact': contact_id
    })

def addContactView(request):
    return render(request, 'new.html')

def contactSaver(request):
    name = Contact(contact_name=request.POST["fullname"], contact_lastname=request.POST["fullname"], phone_number=request.POST["phone-number"])
    name.save()

    return HttpResponseRedirect(reverse('contact:index'))

def deleteContact(request):
    pass

