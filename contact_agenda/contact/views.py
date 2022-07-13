from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse, HttpResponseRedirect
from django.urls import reverse

from .models import *

# Create your views here.
def index(request):
    contact_list = Contact.objects.all()
    return render(request, 'index.html', {
        'contact_list' : contact_list
    })

def detail(request, contact_id):
    contact = get_object_or_404(Contact, pk=contact_id)
    contact_address = get_object_or_404(ContactAddress, contact_id=contact_id)
    return render(request, 'contact-profile.html', {
        'contact': contact ,
        'contact_address': contact_address ,
    })

def addContactView(request):
    relatinoship_list = ContactRelation.objects.all()
    return render(request, 'new.html', {
        'relationship_list' : relatinoship_list
    })


def contactSaver(request):

    contact_fullname_str = ''.join(request.POST["fullname"])
    contact_name_surname = contact_fullname_str.split(' ')
    new_contact = Contact(
        contact_name = contact_name_surname[0] ,
        contact_lastname = contact_name_surname[1] ,
        phone_number = request.POST["phone-number"] ,
        contact_email = request.POST["email"] ,
        contact_relation_id = request.POST["relationship"] ,
        #para agregar los savingotros campos trabajar funcionalidad de vistas address, relation
    )

    new_contact.save()

    new_contact_address = ContactAddress(
        contact_id = new_contact.contact_id ,
        address_1 = request.POST["address-1"] ,
        address_2 = request.POST["address-2"] ,
        city = request.POST["city"] ,
    )

    new_contact_address.save()
    return HttpResponseRedirect(reverse('contact:index'))


# def newContactAddress(request):
#     return render(request, 'new-contact-address.html')

def editContact(request, contact_id):
#this is other form to declare the dict we need to put inside the render fucntion
    #first we create a empty dict we call it here context
    context = {}
    #like allways we call the db object we need to view
    contact = get_object_or_404(Contact, pk=contact_id)
    relationship_list = ContactRelation.objects.all()
    #we put the object inside the empy context dict passing the name of the key inside ['']
    context['contact'] = contact
    context['relation'] = relationship_list

    #to finish we just need to put the variable context (that contains the dict with the db objects
    # that the render fucntion needs)
    return render(request, 'edit.html', context)
    #{
    #     'contact': contact,
    #     'relation': relationship_list
    # })

def contactEditor(request):
    contact = get_object_or_404(Contact, pk=request.POST["button"])
    contact_address = get_object_or_404(ContactAddress, contact_id=request.POST["button"])

    contact_fullname_str = ''.join(request.POST["fullname"])
    contact_name_surname = contact_fullname_str.split(' ')
    contact.contact_name = contact_name_surname[0] 
    contact.contact_lastname = contact_name_surname[1] 
    contact.phone_number = request.POST["phone-number"] 
    contact.contact_email = request.POST["email"] 
    contact.contact_relation_id = request.POST["relationship"] 
    contact.save()


    contact_address.address_1 = request.POST["address-1"] 
    contact_address.address_2 = request.POST["address-2"]
    contact_address.city = request.POST["city"]
    contact_address.save() 
    

    return HttpResponseRedirect(reverse('contact:index'))

def deleteContact(request, contact_id):
    contact_id = get_object_or_404(Contact, pk=contact_id)
    return render(request, 'delete.html', {
        'contact': contact_id
    })

def contactDeleter(request):
    contact = get_object_or_404(Contact, pk=request.POST["delete"])
    contact_address = get_object_or_404(ContactAddress, contact_id=request.POST["delete"])
    contact_address.delete()
    contact.delete()

    return HttpResponseRedirect(reverse('contact:index'))