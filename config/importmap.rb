# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true
pin_all_from "app/javascript/controllers", under: "controllers"
pin "stimulus_reflex", to: "https://ga.jspm.io/npm:stimulus_reflex@3.5.0-pre8/javascript/stimulus_reflex.js"
pin "@rails/actioncable", to: "https://ga.jspm.io/npm:@rails/actioncable@7.0.5/app/assets/javascripts/actioncable.esm.js"
pin "cable_ready", to: "https://ga.jspm.io/npm:cable_ready@5.0.0-pre8/javascript/index.js"
pin "morphdom", to: "https://ga.jspm.io/npm:morphdom@2.7.0/dist/morphdom-esm.js"
pin "stimulus", to: "https://ga.jspm.io/npm:stimulus@3.2.1/dist/stimulus.js"
pin "tailwindcss-animated", to: "https://ga.jspm.io/npm:tailwindcss-animated@1.0.1/src/index.js"
pin "tailwindcss/plugin", to: "https://ga.jspm.io/npm:tailwindcss@3.3.2/plugin.js"
pin "chart.js", to: "https://ga.jspm.io/npm:chart.js@4.4.0/dist/chart.js"
pin "@kurkle/color", to: "https://ga.jspm.io/npm:@kurkle/color@0.3.2/dist/color.esm.js"
pin "chartkick", to: "https://ga.jspm.io/npm:chartkick@5.0.1/dist/chartkick.esm.js"
