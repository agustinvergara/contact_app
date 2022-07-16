from dataclasses import field
from rest_framework import serializers
from contact.models import *


class ContactAdressSerializer(serializers.ModelSerializer):
    class Meta:
        model = ContactAddress
        fields = ['contact', 'address_1', 'address_2', 'city']


class ContactSerializer(serializers.Serializer):
    # class ContactAdressSerializer(serializers.ModelSerializer):
    #     class Meta:
    #         model = ContactAddress
    #         fields = ['contact', 'address_1', 'address_2', 'city']

    contact_relation = serializers.PrimaryKeyRelatedField(allow_null=True, queryset=ContactRelation.objects.all(), required=False)
    contact_name = serializers.CharField(max_length=30)
    contact_lastname = serializers.CharField(max_length=30)
    phone_number = serializers.IntegerField(max_value=2147483647, min_value=-2147483648)
    contact_email = serializers.CharField(allow_blank=True, allow_null=True, max_length=40, required=False)
    contact_address = ContactAdressSerializer()
    


# class ContactRelatedModelsSerializers(serializers.Serializer):