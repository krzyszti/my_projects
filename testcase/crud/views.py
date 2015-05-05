from django.core.urlresolvers import reverse_lazy
from django.shortcuts import redirect
from django.views.generic import CreateView, TemplateView, ListView, UpdateView, DeleteView, FormView
from django.contrib.messages.views import SuccessMessageMixin
from crud.forms import CreateBandForm, ChoiceBandForm
from crud import models
from rest_framework import generics
from crud.serializers import GenreSerializer


class Index(TemplateView):
    template_name = 'index.html'


index = Index.as_view()


class CreateBand(SuccessMessageMixin, CreateView):
    template_name = 'createBand.html'
    form_class = CreateBandForm
    model = models.Band
    success_url = reverse_lazy('index')
    success_message = "%(name)s %(city)s %(country)s %(website)s was added to the database successfully."


createBand = CreateBand.as_view()


class ReadBand(ListView):
    template_name = 'readBand.html'
    model = models.Band


readBand = ReadBand.as_view()


class UpdateBandPk(FormView):
    template_name = 'updateBandPk.html'
    form_class = ChoiceBandForm
    success_url = reverse_lazy('updateBand', kwargs={"pk": 1})

    def post(self, request, *args, **kwargs):
        pk = request.POST["choice"]
        return redirect("updateBand", pk=pk)


updateBandPk = UpdateBandPk.as_view()


class DeleteBandPk(FormView):
    template_name = 'deleteBandPk.html'
    form_class = ChoiceBandForm
    success_url = reverse_lazy('deleteBand', kwargs={"pk": 1})

    def post(self, request, *args, **kwargs):
        pk = request.POST["choice"]
        return redirect("deleteBand", pk=pk)


deleteBandPk = DeleteBandPk.as_view()


class UpdateBand(SuccessMessageMixin, UpdateView):
    model = models.Band
    template_name = 'createBand.html'
    form_class = CreateBandForm
    success_url = reverse_lazy('index')
    success_message = "%(name)s %(city)s %(country)s %(website)s was updated successfully."


updateBand = UpdateBand.as_view()


class DeleteBand(SuccessMessageMixin, DeleteView):
    model = models.Band
    template_name = 'deleteBand.html'
    success_url = reverse_lazy('index')
    success_message = "Band was deleted successfully."


deleteBand = DeleteBand.as_view()


class GenreList(generics.ListCreateAPIView):
    queryset = models.Genre.objects.all()
    serializer_class = GenreSerializer


genreList = GenreList.as_view()


class GenreDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Genre.objects.all()
    serializer_class = GenreSerializer


genreDetail = GenreDetail.as_view()