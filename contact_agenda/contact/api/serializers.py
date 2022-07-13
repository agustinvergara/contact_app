from dataclasses import field
from rest_framework import serializers
from contact.models import *

class ContactSerializer(serializers.ModelSerializer):
    class Meta:
        model = Contact
        fields = ['contact_relation', 'contact_name', 'contact_lastname', 'phone_number', 'contact_email']

class ContactAdressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ContactAddress
        fields = ['contact', 'address_1', 'address_2', 'city']
