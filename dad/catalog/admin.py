from django.contrib import admin

# Register your models here.

from .models import tag, language, active, word, ipa

#admin.site.register(tag)
# Register the Admin classes for tag using the decorator
@admin.register(tag)
class TAGAdmin(admin.ModelAdmin):
    pass

admin.site.register(language)

admin.site.register(active)

#admin.site.register(Word)
# Register the Admin classes for word using the decorator
@admin.register(word)
class WORDAdmin(admin.ModelAdmin):
    list_display = ('id','entry', 'index','display_tag','updated')


#admin.site.register(ipa)

# Define the ipa class
class IPAAdmin(admin.ModelAdmin):
    list_filter = ('activity','word',)

# Register the admin class with the associated model
admin.site.register(ipa, IPAAdmin)

