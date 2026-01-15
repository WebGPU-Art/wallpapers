
{} (:about "|file is generated - never edit directly; learn cr edit/tree workflows before changing") (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:reload-fn |app.main/reload!) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-container (reel)
              let
                  store $ :store reel
                  states $ :states store
                  cursor $ or (:cursor states) ([])
                  state $ or (:data states)
                    {} $ :content "\""
                  images-list $ load-cirru-data
                div
                  {} $ :class-name (str-spaced css/global)
                  div
                    {} $ :class-name (str-spaced style-title css/font-fancy)
                    <> "|WebGPU Art"
                  list->
                    {}
                      :class-name $ str-spaced css/row style-list
                      :style $ {} (:flex-wrap :wrap) (:margin "\"40px")
                    -> images-list .reverse $ map-indexed
                      fn (idx info)
                        [] idx $ comp-image-card info
                  =< nil 120
                  when dev? $ comp-reel (>> states :reel) reel ({})
          :examples $ []
        |comp-image-card $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-image-card (info)
              div
                {} (:class-name style-image-card)
                  :on-click $ fn (e d!)
                    js/window.open (:url info) "\"_blank"
                  :style $ {}
                    :background-image $ str "\"url(" (:url info) "\"?imageView2/q/80/2/w/400/h/400" "\")"
                div
                  {}
                    :class-name $ str-spaced style-image-info css/font-fancy
                    :on-click $ fn (e d!) :skip
                  div ({})
                    <> $ :name info
                    =< 8 nil
                    a $ {}
                      :href $ :address info
                      :target "\"_blank"
                      :inner-text "\"Source"
                      :class-name css/link
          :examples $ []
        |load-cirru-data $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro load-cirru-data () $ &data-to-code
              parse-cirru-edn $ read-file "\"content/images.cirru"
          :examples $ []
        |style-image-card $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-image-card $ {}
              "\"&" $ {} (:width 480) (:background-position "\"center") (:background-size "\"480px") (:height 270) (:position :relative) (:border-radius "\"8px") (:cursor :pointer) (:transition-duration "\"400ms")
                :box-shadow $ str "\"0 0 4px " (hsl 0 0 100 0.4)
                :max-width "\"calc(90vw - 40px)"
                :justify-self :center
              "\"&:hover" $ {} (:background-size "\"520px")
                :box-shadow $ str "\"0 0 4px " (hsl 0 0 100 0.8)
          :examples $ []
        |style-image-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-image-info $ {}
              "\"&" $ {} (:position :absolute) (:bottom 0) (:left 0) (:width "\"100%") (:height 40)
                :background-color $ hsl 0 0 0 0.7
                :color :white
                :padding "\"4px 8px"
                :opacity 0.6
                :transition-duration "\"200ms"
                :border-radius "\"0px 0px 8px 8px"
                :cursor :default
                :transition-delay "\"0ms"
              "\"&:hover" $ {} (:opacity 1) (; :height 80) (; :transition-delay "\"200ms")
          :examples $ []
        |style-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-list $ {}
              "\"&" $ {} (:display :grid) (:grid-template-columns "\"repeat(auto-fit, minmax(480px, 1fr))") (:gap "\"12px")
          :examples $ []
        |style-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-title $ {}
              "\"&" $ {} (:text-align :center) (:padding "\"80px 0 20px")
                :color $ hsl 0 0 100 0.5
                :font-size 80
                :font-weight 100
                :user-select :none
              "\"& span:hover" $ {}
                :text-shadow $ str "\"2px 2px 8px " (hsl 0 0 100 0.5)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.comp.container $ :require (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> list-> div button textarea span input a
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
        :examples $ []
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ = "\"dev" (get-env "\"mode" "\"release")
          :examples $ []
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:storage-key "\"workflow")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.config)
        :examples $ []
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *reel $ -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when
                and config/dev? $ not= op :states
                js/console.log "\"Dispatch:" op
              reset! *reel $ reel-updater updater @*reel op
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              if config/dev? $ load-console-formatter!
              render-app!
              add-watch *reel :changes $ fn (reel prev) (render-app!)
              listen-devtools! |k dispatch!
              js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
              js/window.addEventListener |visibilitychange $ fn (event)
                if (= "\"hidden" js/document.visibilityState) (persist-storage!)
              flipped js/setInterval 60000 persist-storage!
              let
                  raw $ js/localStorage.getItem (:storage-key config/site)
                when (some? raw)
                  dispatch! $ :: :hydrate-storage (parse-cirru-edn raw)
              println "|App started."
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn persist-storage! ()
              println "\"Saved at" $ .!toISOString (new js/Date)
              js/localStorage.setItem (:storage-key config/site)
                format-cirru-edn $ :store @*reel
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! "\"ok~" "\"Ok"
              hud! "\"error" build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.main $ :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
        :examples $ []
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {}
              :states $ {}
                :cursor $ []
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns app.schema)
        :examples $ []
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op op-id op-time)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:hydrate-storage data) data
                _ $ do (eprintln "\"unknown op:" op) store
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns app.updater $ :require
            respo.cursor :refer $ update-states
        :examples $ []
