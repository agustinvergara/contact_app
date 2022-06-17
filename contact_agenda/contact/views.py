from django.shortcuts import render, get_object_or_404
from django.http import HttpResponseRedirect
from django.urls import reverse

from .models import *

# Create your views here.
def index(request):
    contact_list = Contact.objects.all()
    return render(request, 'index.html', {
        'contact_list' : contact_list
    })

def detail(request, contact_id):
    contact_id = get_object_or_404(Contact, pk=contact_id)
    return render(request, 'contact-profile.html', {
        'contact': contact_id
    })

def addContactView(request):
    relatinoship_list = ContactRelation.objects.all()
    return render(request, 'new.html', {
        'relationship_list' : relatinoship_list
    })

#not a view - just a function
#def nameSplitter():

#manejo de errores - si no se introduce un surname con un ' ' explicito va a enviar un error
#'''manejo de errores - si algun campo no se llena va a enviar error(verificar si pasa solo cono los NOT NULL)
# o si sucede tambien con los que no tienen este constraint en la db'''
def contactSaver(request):
    contact_fullname_str = ''.join(request.POST["fullname"])
    contact_name_surname = contact_fullname_str.split(' ')
    new_contact = Contact(
        contact_name = contact_name_surname[0] , 
        contact_lastname = contact_name_surname[1] , 
        phone_number = request.POST["phone-number"] , 
        contact_email = request.POST["email"] ,
        contact_relation_id = request.POST["relationship"] ,
        #para agregar los otros campos trabajar funcionalidad de vistas address, relation
    )
    
    new_contact.save()

    return HttpResponseRedirect(reverse('contact:index'))

def deleteContact(request, contact_id):
    contact_id = get_object_or_404(Contact, pk=contact_id)
    return render(request, 'delete.html', {
        'contact': contact_id
    })

def editContact(request, contact_id):
    contact_id = get_object_or_404(Contact, pk=contact_id)
    return render(request, 'edit.html', {
        'contact': contact_id
    })

