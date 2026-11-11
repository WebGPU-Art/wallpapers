
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op 'app.schema/Op
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'Wallpaper $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Wallpaper (:url String) (:name String)
            :address $ Option String
          :examples $ []
          :schema $ quote StructDef
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel on-control)
            let
                states $ :states $ :store reel
              div
                {} $ :class-name $ str-spaced css/global
                div
                  {} $ :class-name $ str-spaced style-title css/font-fancy
                  <> "|WebGPU Art"
                keyed->
                  {}
                    :class-name $ str-spaced css/row style-list
                    :style $ {} (:flex-wrap :wrap) (:margin |40px)
                  -> wallpapers $ map-indexed $ fn (idx info)
                    keyed-component idx $ comp-image-card info
                space-y 120
                if dev?
                  Some $ comp-typed-reel (>> states :reel) reel ({}) on-control
                  , None
          :examples $ []
          :schema $ quote $ Fn (reel.typed/State app.schema/Op app.schema/Store)
            Fn reel.typed/Control $ -> Unit
            -> respo.schema/Component
        'comp-image-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-image-card (info)
            let
                url $ :url info
                name $ :name info
                address $ :address info
              div
                {} (:class-name style-image-card)
                  :on-click $ fn (e d!)
                    hint-fn $ Fn RespoEvent
                      Fn app.schema/Op $ -> Unit
                      -> Unit
                    browser/window-open url
                    , &unit
                  :style $ {} $ :background-image (str "|url(" url |?imageView2/q/80/2/w/400/h/400 "|)")
                div
                  {}
                    :class-name $ str-spaced style-image-info css/font-fancy
                    :on-click $ fn (e d!)
                      hint-fn $ Fn RespoEvent
                        Fn app.schema/Op $ -> Unit
                        -> Unit
                      , &unit
                  div ({}) (<> name) (space-x 8)
                    a $ let
                        props $ {} (:target |_blank) (:inner-text |Source) (:class-name css/link)
                      match address
                        (:some source) (assoc props :href source)
                        (:none) props
          :examples $ []
          :schema $ quote $ Fn Wallpaper (-> respo.schema/Component)
        'decode-wallpaper $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-wallpaper (info)
            let
                url $ decode-map-as
                  .unwrap $ get info :url
                  , String
                name $ decode-map-as
                  .unwrap $ get info :name
                  , String
                address $ match (get info :address)
                  (:none) None
                  (:some raw)
                    if (nil? raw) None $ Some $ decode-map-as raw String
              Wallpaper :url url :name name :address address
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> Wallpaper)
        'load-wallpapers $ %{} 'CodeEntry
          :doc "|Checks the local catalog during compilation and emits typed Wallpaper constructors."
          :code $ quote $ defmacro load-wallpapers ()
            let
                rows $ decode-map-as
                  parse-cirru-edn $ read-file |content/images.cirru
                  List $ Map Tag Dynamic
                forms $ map rows $ fn (row)
                  let
                      info $ decode-wallpaper row
                      url $ :url info
                      name $ :name info
                      address $ match (:address info)
                        (:some source)
                          quasiquote $ calcit.core/Option :some ~source
                        (:none)
                          quote $ calcit.core/Option :none
                    quasiquote $ app.comp.container/Wallpaper :url ~url :name ~name :address ~address
              quasiquote $ [] ~@forms
          :examples $ []
          :schema $ quote $ Macro
            -> $ Expr $ List Wallpaper
            :capabilities :fs-read
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
          :schema $ quote String
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
          :schema $ quote String
        'style-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-list
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(480px, 1fr))") (:gap |12px)
          :examples $ []
          :schema $ quote String
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
          :schema $ quote String
        'wallpapers $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def wallpapers
            .reverse $ load-wallpapers
          :examples $ []
          :schema $ quote $ List Wallpaper
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> keyed-> keyed-component div button textarea span input a
            respo.comp.space :refer $ space-x space-y
            reel.comp.reel :refer $ comp-typed-reel
            app.config :refer $ dev?
            js-ffi.browser :as browser
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ quote Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
          :schema $ quote $ Map Tag String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ quote $ Ref (typed/State schema/Op schema/Store)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ match op
              (:states _ _) &unit
              _ $ println |Dispatch: op
            reset! *reel $ typed/record-op updater @*reel op (generate-id!) (shared/now-ms)
            , &unit
          :examples $ []
          :schema $ quote $ Fn schema/Op (-> Unit) (:features :js-ffi)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k on-control!
            match
              browser/storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                dispatch! $ schema/Op :hydrate-storage $ schema/decode-store
                  decode-map-as (parse-cirru-edn raw) (Map Tag Dynamic)
              (:none) &unit
            browser/add-event-listener! |beforeunload $ fn (event) (persist-storage!)
            browser/add-event-listener! |visibilitychange $ fn (event)
              match (browser/visibility-state)
                (:hidden) (persist-storage!)
                _ &unit
            browser/set-interval! persist-storage! 60000
            println "|App started."
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target
            .unwrap $ respo-browser/query-selector |.app
          :examples $ []
          :schema $ quote respo.dom/DomElement
        'on-control! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-control! (control)
            reset! *reel $ typed/apply-control updater @*reel control
            , &unit
          :examples $ []
          :schema $ quote $ Fn typed/Control (-> Unit)
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ shared/date-now-snapshot
            browser/storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ app.schema/encode-store $ :store @*reel
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            let
                show! $ unsafe-coerce hud! $ Fn String String (-> Unit)
              if (js-nullish? build-errors)
                do (remove-watch! *reel :changes) (clear-cache!)
                  add-watch! *reel :changes $ fn (reel prev) (render-app!)
                  reset! *reel $ typed/refresh updater @*reel schema/store
                  show! |ok~ |Ok
                show! |error $ contract/expect-string |build-errors build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel on-control!
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.typed :as typed
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            js-ffi.contract :as contract
            respo.ffi.browser :as respo-browser
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'Op $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum Op
            :states (List respo.schema/CoordKey) Dynamic
            :hydrate-storage app.schema/Store
          :examples $ []
          :schema $ quote EnumDef
        'Store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Store
            :states $ Map Tag Dynamic
            :extras $ Map Tag Dynamic
          :examples $ []
          :schema $ quote StructDef
        'decode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn decode-store (archive)
            Store :states
              decode-map-as
                .unwrap $ get archive :states
                Map Tag Dynamic
              , :extras $ dissoc archive :states
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> Store)
        'encode-store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn encode-store (store)
            assoc (:extras store) :states $ :states store
          :examples $ []
          :schema $ quote $ Fn Store
            -> $ Map Tag Dynamic
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :states
              {} $ :cursor $ []
              , :extras $ {}
          :examples $ []
          :schema $ quote Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                app.schema/Store :states
                  decode-map-as
                    respo.cursor/update-state-tree (:states store) cursor s
                    Map Tag Dynamic
                  , :extras $ :extras store
              (:hydrate-storage data) data
          :examples $ []
          :schema $ quote $ Fn app.schema/Store app.schema/Op String Number (-> app.schema/Store)
          :tests $ [] $ %{} 'TestEntry (:name |typed-reel-keeps-legacy-store)
            :code $ quote $ let
                archive $ {}
                  :states $ {} $ :cursor ([])
                  :extra |keep
                restore $ app.schema/Op :hydrate-storage $ app.schema/decode-store archive
                state $ app.schema/Op :states ([] :menu |row 1) true
                reel $ assert-type (reel.typed/new-reel app.schema/store) (reel.typed/State app.schema/Op app.schema/Store)
                restored $ reel.typed/record-op updater reel restore |restore 0
                edited $ reel.typed/record-op updater restored state |state 1
                archive-text $ format-cirru-edn $ app.schema/encode-store (:store edited)
                reload-op $ app.schema/Op :hydrate-storage $ app.schema/decode-store
                  decode-map-as (parse-cirru-edn archive-text) (Map Tag Dynamic)
              assert= archive $ app.schema/encode-store $ :store restored
              assert= (Result :ok true)
                get-in
                  app.schema/encode-store $ :store edited
                  [] :states :menu |row 1 :data
              assert= (:store edited)
                :store $ reel.typed/refresh updater edited app.schema/store
              assert= (:store edited) (updater app.schema/store reload-op |reload 2)
              assert |missing-states-must-fail $ try
                do
                  app.schema/decode-store $ {}
                  , false
                fn (_error) true
              assert |non-map-states-must-fail $ try
                do
                  app.schema/decode-store $ {} $ :states |invalid
                  , false
                fn (_error) true
            :tags $ #{} :unit
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
