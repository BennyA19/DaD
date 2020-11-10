from django.shortcuts import render

# Create your views here.

from catalog.models import tag, language, active, word, ipa

def index(request):
    """View function for home page of site."""

    # Generate counts of some of the main objects
    num_words = word.objects.all().count()
    num_ipas = ipa.objects.all().count()
    
    # Available books (status = 'a')
    num_words_available = word.objects.filter(status__exact='a').count()
    
    # The 'all()' is implied by default.    
    num_tag = tag.objects.count()
    
    context = {
        'num_words': num_words,
        'num_ipas': num_ipas,
        'num_words_available': num_words_available,
        'num_tag': num_tag,
    }

    # Render the HTML template index.html with the data in the context variable
    return render(request, 'index.html', context=context)


from django.views import generic

class WordListView(generic.ListView):
    model = word

class WordDetailView(generic.DetailView):
    model = word