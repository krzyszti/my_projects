from rest_framework import serializers
from crud.models import Genre


class GenreSerializer(serializers.ModelSerializer):
    url = serializers.HyperlinkedIdentityField(view_name='genreDetail', format='html')

    class Meta:
        model = Genre
        fields = ('url', 'id', 'name')