require 'pagy/extras/bootstrap' # Optional: for Bootstrap styling
require 'pagy/extras/overflow'

Pagy::DEFAULT[:limit] = 8
Pagy::DEFAULT[:size]  = 3
Pagy::DEFAULT[:overflow] = :empty_page
