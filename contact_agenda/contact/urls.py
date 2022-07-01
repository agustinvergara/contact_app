from django.urls import path
from . import views

app_name = 'contact'

urlpatterns = [
    #index path ex: contact/
    path('', views.index , name = 'index') ,
    #add contact path ex: contact/add-contact/
    path('add-contact/', views.addContactView , name = 'add-contact') ,
    #contact saver path ex: contact/contactSaver/
    path('contactSaver/' , views.contactSaver , name = 'contactSaver') ,
    #contact profile path ex: contact/contact-detail/
    path('<int:contact_id>/contact-detail/', views.detail , name = 'contact-detail') ,
    #delete contact path ex: contact/2/delete/
    path('<int:contact_id>/delete/' , views.deleteContact , name = 'delete') ,
    #edit contact view path ex: contact/2/edit/
    path('<int:contact_id>/edit/' , views.editContact , name = 'edit-contact') ,
    #edit contact in db path ex: contact/contact-editer/
    path('contact-editer', views.contactEditor, name='contact-editor') ,
    # #new contact address render view path ex: contact/new-contact-address/
    # path('new-contact-address/' , views.newContactAddress , name = 'new-contact-address') ,
    #new contact address reciever path ex: contact/new-contact-address-reciever/
     #path('new-contact-address-reciever/' , views.newContactAddressReciever , name = 'new-contact-address-reciever') ,
    path('contact-deleter/', views.contactDeleter, name = 'contact-deleter')
]
