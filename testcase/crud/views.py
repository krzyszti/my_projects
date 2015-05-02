from django.core.urlresolvers import reverse_lazy
from django.views.generic import CreateView, TemplateView, ListView, UpdateView
from django.contrib.messages.views import SuccessMessageMixin
from crud.forms import CreateBandForm
from crud import models


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

class UpdateBandPk(ListView):
    template_name = 'updateBandPk.html'
    model = models.Band

updateBandPk = UpdateBandPk.as_view()

class UpdateBand(SuccessMessageMixin, UpdateView):
    model = models.Band
    template_name = 'createBand.html'
    form_class = CreateBandForm
    fields = ['name', 'city', 'country', 'website']
    success_url = reverse_lazy('index')
    success_message = "%(name)s %(city)s %(country)s %(website)s was updated successfully."

updateBand = UpdateBand.as_view()