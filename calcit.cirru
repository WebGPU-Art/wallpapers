
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {}
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ assert-type (&map:get reel :store) (:: 'Map 'Tag 'Dynamic)
                states $ assert-type (&map:get store :states) (:: 'Map 'Tag 'Dynamic)
                images-list $ assert-type (load-cirru-data)
                  :: 'List $ :: 'Map 'Tag 'Dynamic
              div
                {} $ :class-name $ str-spaced css/global
                div
                  {} $ :class-name $ str-spaced style-title css/font-fancy
                  <> "|WebGPU Art"
                list->
                  {}
                    :class-name $ str-spaced css/row style-list
                    :style $ {} (:flex-wrap :wrap) (:margin |40px)
                  -> images-list .reverse $ map-indexed $ fn (idx info)
                    hint-fn $ {}
                      :args $ [] 'Number $ :: 'Map 'Tag 'Dynamic
                      :return $ :: 'List 'Dynamic
                    [] idx $ comp-image-card info
                =< nil 120
                when dev? $ comp-reel (>> states :reel) reel $ {}
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'comp-image-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-image-card (info)
            let
                url $ assert-type (&map:get info :url) 'String
                name $ assert-type (&map:get info :name) 'String
                address $ let
                    raw $ &map:get info :address
                  if (nil? raw) nil $ assert-type raw 'String
              div
                {} (:class-name style-image-card)
                  :on-click $ fn (e d!)
                    hint-fn $ {}
                      :args $ [] 'RespoEvent $ :: 'Fn
                        {}
                          :args $ [] 'Enum
                          :return 'Unit
                      :return 'Unit
                    browser/window-open url
                    , &unit
                  :style $ {} $ :background-image (str "|url(" url |?imageView2/q/80/2/w/400/h/400 "|)")
                div
                  {}
                    :class-name $ str-spaced style-image-info css/font-fancy
                    :on-click $ fn (e d!)
                      hint-fn $ {}
                        :args $ [] 'RespoEvent $ :: 'Fn
                          {}
                            :args $ [] 'Enum
                            :return 'Unit
                        :return 'Unit
                      , &unit
                  div ({}) (<> name) (=< 8 nil)
                    a $ {} (:href address) (:target |_blank) (:inner-text |Source) (:class-name css/link)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Map 'Tag 'Dynamic
        'load-cirru-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-cirru-data ()
            &data-to-code $ parse-cirru-edn $ read-file |content/images.cirru
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr $ :: 'List (:: 'Map 'Tag 'Dynamic)
            :required $ []
        'style-image-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-image-card
            {}
              |& $ {} (:width 480) (:background-position |center) (:background-size |480px) (:height 270) (:position :relative) (:border-radius |8px) (:cursor :pointer) (:transition-duration |400ms)
                :box-shadow $ str "|0 0 4px " $ hsl 0 0 100 0.4
                :max-width "|calc(90vw - 40px)"
                :justify-self :center
              |&:hover $ {} (:background-size |520px)
                :box-shadow $ str "|0 0 4px " $ hsl 0 0 100 0.8
          :examples $ []
          :schema $ :: 'String
        'style-image-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-image-info
            {}
              |& $ {} (:position :absolute) (:bottom 0) (:left 0) (:width |100%) (:height 40)
                :background-color $ hsl 0 0 0 0.7
                :color :white
                :padding "|4px 8px"
                :opacity 0.6
                :transition-duration |200ms
                :border-radius "|0px 0px 8px 8px"
                :cursor :default
                :transition-delay |0ms
              |&:hover $ {} (:opacity 1) (; :height 80) (; :transition-delay |200ms)
          :examples $ []
          :schema $ :: 'String
        'style-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-list
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(480px, 1fr))") (:gap |12px)
          :examples $ []
          :schema $ :: 'String
        'style-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title
            {}
              |& $ {} (:text-align :center) (:padding "|80px 0 20px")
                :color $ hsl 0 0 100 0.5
                :font-size 80
                :font-weight 100
                :user-select :none
              "|& span:hover" $ {} $ :text-shadow
                str "|2px 2px 8px " $ hsl 0 0 100 0.5
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> list-> div button textarea span input a
            respo.comp.space :refer $ =<
            reel.comp.reel :refer $ comp-reel
            app.config :refer $ dev?
            js-ffi.browser :as browser
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'Map 'Tag 'Dynamic
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ match op
              (:states cursor state) &unit
              _ $ println |Dispatch: op
            reset! *reel $ reel-updater updater @*reel op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            browser/add-event-listener! |beforeunload $ fn (event)
              hint-fn $ {}
                :args $ [] 'js-ffi.browser/EventHost
                :return 'Unit
              persist-storage!
            browser/add-event-listener! |visibilitychange $ fn (event)
              hint-fn $ {}
                :args $ [] 'js-ffi.browser/EventHost
                :return 'Unit
              match (browser/visibility-state)
                (:hidden) (persist-storage!)
                _ &unit
            browser/set-interval! persist-storage! 60000
            match
              browser/storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                dispatch! $ :: :hydrate-storage $ parse-cirru-edn raw
              (:none) &unit
            println "|App started."
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ browser/query-selector |.app
          :examples $ []
          :schema $ :: 'js-ffi.browser/DomElementHost
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ shared/date-now-snapshot
            browser/storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ &map:get @*reel :store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            let
                show! $ unsafe-coerce hud! $ :: 'Fn
                  {}
                    :args $ [] 'String 'String
                    :return 'Unit
              if (js-nullish? build-errors)
                do (remove-watch *reel :changes) (clear-cache!)
                  add-watch *reel :changes $ fn (reel prev) (render-app!)
                  reset! *reel $ assert-type (refresh-reel @*reel schema/store updater) (:: 'Map 'Tag 'Dynamic)
                  show! |ok~ |Ok
                show! |error $ unsafe-coerce build-errors 'String
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'app.schema $ %{} 'FileEntry
      :defs $ {} $ 'store
        %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                assert-type (update-states store cursor s) (:: 'Map 'Tag 'Dynamic)
              (:hydrate-storage data)
                assert-type data $ :: 'Map 'Tag 'Dynamic
              _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) 'Enum 'String 'Number
            :return $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
