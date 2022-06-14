from django.urls import path
from . import views

app_name = 'contact'

urlpatterns = [
    #index path ex: contact/
    path('', views.index, name='index'),
    #add contact path ex: contact/add-contact/
    path('add-contact/', views.addContactView, name = 'add-contact'),
    #contact saver path ex: contact/contactSaver/
    path('contactSaver/', views.contactSaver, name= 'contactSaver'),
    #contact profile path ex: contact/contact-detail/
    path('<int:contact_id>/contact-detail/', views.detail, name='contact-detail'),
    #delete contact path ex: contact/2/delete/
    path('<int:contact_id>/delete/', views.deleteContact , name='delete'),
    #edit contact path ex: contact/2/edit/
    path('<int:contact_id>/edit/', views.editContact , name='edit-contact'),
]
