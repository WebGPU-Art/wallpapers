
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |reel.calcit/
      :type-slots $ {} $ :dispatch-op |app.schema/DispatchOp
  :files $ {}
    'app.comp.container $ %{} 'FileEntry
      :defs $ {}
        'Wallpaper $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct Wallpaper (:url String) (:name String)
            :address $ Option String
          :examples $ []
          :schema $ quote StructDef
        'WallpaperChild $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defunion WallpaperChild Number respo.schema/Component
          :examples $ []
          :schema $ quote UnionDef
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (reel)
            let
                store $ decode-map-as
                  .unwrap-or (get reel :store) nil
                  Map Tag Dynamic
                states $ decode-map-as
                  .unwrap-or (get store :states) nil
                  Map Tag Dynamic
                images-list $ decode-map-as (load-cirru-data)
                  List $ Map Tag Dynamic
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
                    hint-fn $ Fn Number (Map Tag Dynamic)
                      -> $ List app.comp.container/WallpaperChild
                    [] idx $ comp-image-card $ decode-wallpaper info
                space-y 120
                if dev?
                  Option :some $ comp-reel (>> states :reel) reel $ {}
                  Option :none
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> respo.schema/Component)
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
                      Fn AnyEnum $ -> Unit
                      -> Unit
                    browser/window-open url
                    , &unit
                  :style $ {} $ :background-image (str "|url(" url |?imageView2/q/80/2/w/400/h/400 "|)")
                div
                  {}
                    :class-name $ str-spaced style-image-info css/font-fancy
                    :on-click $ fn (e d!)
                      hint-fn $ Fn RespoEvent
                        Fn AnyEnum $ -> Unit
                        -> Unit
                      , &unit
                  div ({}) (<> name) (space-x 8)
                    a $ let
                        props $ {} (:target |_blank) (:inner-text |Source) (:class-name css/link)
                      match address
                        (:some source) (assoc props :href source)
                        (:none) props
          :examples $ []
          :schema $ quote $ Fn app.comp.container/Wallpaper (-> respo.schema/Component)
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
                  (:none) (Option :none)
                  (:some raw)
                    if (nil? raw) (Option :none)
                      Option :some $ decode-map-as raw String
              Wallpaper :url url :name name :address address
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) (-> app.comp.container/Wallpaper)
        'load-cirru-data $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-cirru-data ()
            &data-to-code $ parse-cirru-edn $ read-file |content/images.cirru
          :examples $ []
          :schema $ quote $ Macro
            -> $ Expr $ List (Map Tag Dynamic)
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
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.comp.container
          :require (respo-ui.css :as css)
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo.core :refer $ defcomp defeffect <> >> list-> div button textarea span input a
            respo.comp.space :refer $ space-x space-y
            reel.comp.reel :refer $ comp-reel
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
          :code $ quote $ defref *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
          :schema $ quote $ Ref (Map Tag Dynamic)
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            if (enum? op)
              do
                when config/dev? $ match op
                  (:states cursor state) &unit
                  _ $ println |Dispatch: op
                reset! *reel $ reel-updater reel-updater-adapter @*reel op
                , &unit
              raise "|Expected a Respo event tuple"
          :examples $ []
          :schema $ quote $ Fn Dynamic (-> Unit)
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            match
              browser/storage-get $ .unwrap $ get config/site :storage-key
              (:some raw)
                dispatch! $ :: :hydrate-storage $ parse-cirru-edn raw
              (:none) &unit
            browser/add-event-listener! |beforeunload $ fn (event)
              hint-fn $ Fn js-ffi.browser/EventHost $ -> Unit
              persist-storage!
            browser/add-event-listener! |visibilitychange $ fn (event)
              hint-fn $ Fn js-ffi.browser/EventHost $ -> Unit
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
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! ()
            println "|Saved at" $ :iso $ shared/date-now-snapshot
            browser/storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ .unwrap-or (get @*reel :store) nil
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            let
                show! $ unsafe-coerce hud! $ Fn String String (-> Unit)
              if (js-nullish? build-errors)
                do (remove-watch! *reel :changes) (clear-cache!)
                  add-watch! *reel :changes $ fn (reel prev) (render-app!)
                  reset! *reel $ decode-map-as (refresh-reel @*reel schema/store reel-updater-adapter) (Map Tag Dynamic)
                  show! |ok~ |Ok
                show! |error $ contract/expect-string |build-errors build-errors
            , &unit
          :examples $ []
          :schema $ quote $ Fn (-> Unit) (:features :js-ffi)
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render-with! mount-target
              fn () $ comp-container @*reel
              , dispatch!
          :examples $ []
          :schema $ quote $ Fn (-> Unit)
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render-with! clear-cache!
            app.comp.container :refer $ comp-container
            app.updater :refer $ reel-updater-adapter
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            js-ffi.contract :as contract
            respo.ffi.browser :as respo-browser
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'DispatchOp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def DispatchOp (:: :unhandled)
          :examples $ []
          :schema $ quote AnyEnum
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
          :schema $ quote $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {}
        'reel-updater-adapter $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reel-updater-adapter (store op op-id op-time)
            if (enum? op)
              updater
                decode-map-as store $ Map Tag Dynamic
                , op (decode-map-as op-id 'String) (decode-map-as op-time 'Number)
              raise "|Expected an event tuple from Reel"
          :examples $ []
          :schema $ quote $ Fn Dynamic Dynamic Dynamic Dynamic
            -> $ Map Tag Dynamic
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time)
            match op
              (:states cursor s)
                decode-map-as
                  update-states store
                    decode-map-as cursor $ List respo.schema/CoordKey
                    , s
                  Map Tag Dynamic
              (:hydrate-storage data)
                decode-map-as data $ Map Tag Dynamic
              _ $ do (eprintln "|unknown op:" op) store
          :examples $ []
          :schema $ quote $ Fn (Map Tag Dynamic) AnyEnum String Number
            -> $ Map Tag Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
