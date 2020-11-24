from django.contrib import admin

# Register your models here.

from .models import Tag, Language, Active, Word, IPA

#admin.site.register(tag)
# Register the Admin classes for tag using the decorator
@admin.register(Tag)
class TAGAdmin(admin.ModelAdmin):
    pass

admin.site.register(Language)

admin.site.register(Active)

#admin.site.register(Word)
# Register the Admin classes for word using the decorator
@admin.register(Word)
class WORDAdmin(admin.ModelAdmin):
    list_display = ('id','entry', 'index','display_tag','updated')


#admin.site.register(ipa)

# Define the ipa class
class IPAAdmin(admin.ModelAdmin):
    list_filter = ('activity','word',)

# Register the admin class with the associated model
admin.site.register(IPA, IPAAdmin)

