
{} (:package |app)
  :configs $ {} (:init-fn |app.main/main!) (:output |src) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |reel.calcit/
  :entries $ {}
  :files $ {}
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768022046126) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |defcomp)
              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |comp-container)
              |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |reel)
              |Z $ %{} :Expr (:at 1768022046126) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |let)
                  |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                    :data $ {}
                      |T $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |store)
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:store)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |reel)
                      |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |states)
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:states)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |store)
                      |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |cursor)
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |or)
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:cursor)
                                  |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |[])
                      |Z $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |state)
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |or)
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:data)
                                  |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |states)
                              |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                                  |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:content)
                                      |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"")
                      |b $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |images-list)
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |load-cirru-data)
                  |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |div)
                      |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:class-name)
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |str-spaced)
                                  |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |css/global)
                      |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |div)
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:class-name)
                                  |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |str-spaced)
                                      |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |style-title)
                                      |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |css/font-fancy)
                          |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |<>)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "||WebGPU Art")
                      |Z $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |list->)
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:class-name)
                                  |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |str-spaced)
                                      |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |css/row)
                                      |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |style-list)
                              |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:style)
                                  |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                                      |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:flex-wrap)
                                          |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:wrap)
                                      |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:margin)
                                          |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"40px")
                          |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |->)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |images-list)
                              |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |.reverse)
                              |Z $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |map-indexed)
                                  |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |fn)
                                      |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |idx)
                                          |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |info)
                                      |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |[])
                                          |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |idx)
                                          |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |comp-image-card)
                                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |info)
                      |b $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |=<)
                          |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |nil)
                          |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |120)
                      |d $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |when)
                          |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |dev?)
                          |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |comp-reel)
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |>>)
                                  |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |states)
                                  |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:reel)
                              |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |reel)
                              |Z $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
          :examples $ []
        |comp-image-card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1698254670712) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1698254672285) (:by |rJG4IHzWf) (:text |defcomp)
              |b $ %{} :Leaf (:at 1698254670712) (:by |rJG4IHzWf) (:text |comp-image-card)
              |h $ %{} :Expr (:at 1698254670712) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1698254670712) (:by |rJG4IHzWf) (:text |info)
              |l $ %{} :Expr (:at 1698254675623) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1698254676623) (:by |rJG4IHzWf) (:text |div)
                  |b $ %{} :Expr (:at 1698254676936) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1698254677274) (:by |rJG4IHzWf) (:text |{})
                      |b $ %{} :Expr (:at 1698254678145) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698254679677) (:by |rJG4IHzWf) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1698254686081) (:by |rJG4IHzWf) (:text |style-image-card)
                      |e $ %{} :Expr (:at 1698255517626) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698255518929) (:by |rJG4IHzWf) (:text |:on-click)
                          |b $ %{} :Expr (:at 1698255519269) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255520190) (:by |rJG4IHzWf) (:text |fn)
                              |b $ %{} :Expr (:at 1698255520434) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1698255520614) (:by |rJG4IHzWf) (:text |e)
                                  |b $ %{} :Leaf (:at 1698255521864) (:by |rJG4IHzWf) (:text |d!)
                              |h $ %{} :Expr (:at 1698255527922) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1698255531233) (:by |rJG4IHzWf) (:text |js/window.open)
                                  |b $ %{} :Expr (:at 1698255537561) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1698255536523) (:by |rJG4IHzWf) (:text |:url)
                                      |b $ %{} :Leaf (:at 1698255539227) (:by |rJG4IHzWf) (:text |info)
                                  |h $ %{} :Leaf (:at 1698255542403) (:by |rJG4IHzWf) (:text "|\"_blank")
                      |h $ %{} :Expr (:at 1698254780887) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698254783772) (:by |rJG4IHzWf) (:text |:style)
                          |b $ %{} :Expr (:at 1698254784136) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698254784504) (:by |rJG4IHzWf) (:text |{})
                              |b $ %{} :Expr (:at 1698254784976) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1698254789084) (:by |rJG4IHzWf) (:text |:background-image)
                                  |b $ %{} :Expr (:at 1698254790805) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1698254791339) (:by |rJG4IHzWf) (:text |str)
                                      |b $ %{} :Leaf (:at 1698254792963) (:by |rJG4IHzWf) (:text "|\"url(")
                                      |c $ %{} :Expr (:at 1698254802144) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1698254801879) (:by |rJG4IHzWf) (:text |:url)
                                          |b $ %{} :Leaf (:at 1698254804431) (:by |rJG4IHzWf) (:text |info)
                                      |e $ %{} :Leaf (:at 1698255258547) (:by |rJG4IHzWf) (:text "|\"?imageView2/q/80/2/w/400/h/400")
                                      |h $ %{} :Leaf (:at 1698254795473) (:by |rJG4IHzWf) (:text "|\")")
                  |h $ %{} :Expr (:at 1698255104475) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1698255105140) (:by |rJG4IHzWf) (:text |div)
                      |L $ %{} :Expr (:at 1698255105353) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698255105644) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1698255105923) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255108229) (:by |rJG4IHzWf) (:text |:class-name)
                              |b $ %{} :Expr (:at 1698255172047) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1698255174008) (:by |rJG4IHzWf) (:text |str-spaced)
                                  |T $ %{} :Leaf (:at 1698255111288) (:by |rJG4IHzWf) (:text |style-image-info)
                                  |b $ %{} :Leaf (:at 1698255177745) (:by |rJG4IHzWf) (:text |css/font-fancy)
                          |h $ %{} :Expr (:at 1698255547519) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255551087) (:by |rJG4IHzWf) (:text |:on-click)
                              |b $ %{} :Expr (:at 1698255551436) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1698255551654) (:by |rJG4IHzWf) (:text |fn)
                                  |b $ %{} :Expr (:at 1698255551913) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1698255552075) (:by |rJG4IHzWf) (:text |e)
                                      |b $ %{} :Leaf (:at 1698255552630) (:by |rJG4IHzWf) (:text |d!)
                                  |h $ %{} :Leaf (:at 1698255560062) (:by |rJG4IHzWf) (:text |:skip)
                      |T $ %{} :Expr (:at 1698255492750) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1698255494585) (:by |rJG4IHzWf) (:text |div)
                          |L $ %{} :Expr (:at 1698255495259) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255496246) (:by |rJG4IHzWf) (:text |{})
                          |T $ %{} :Expr (:at 1698254719203) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698254722783) (:by |rJG4IHzWf) (:text |<>)
                              |b $ %{} :Expr (:at 1698255491685) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1698255475124) (:by |rJG4IHzWf) (:text |:name)
                                  |b $ %{} :Leaf (:at 1698255472077) (:by |rJG4IHzWf) (:text |info)
                          |b $ %{} :Expr (:at 1698255501278) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255501815) (:by |rJG4IHzWf) (:text |=<)
                              |b $ %{} :Leaf (:at 1698255503039) (:by |rJG4IHzWf) (:text |8)
                              |h $ %{} :Leaf (:at 1698255503573) (:by |rJG4IHzWf) (:text |nil)
                          |h $ %{} :Expr (:at 1698255504821) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255505234) (:by |rJG4IHzWf) (:text |a)
                              |b $ %{} :Expr (:at 1698255564906) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1698255565297) (:by |rJG4IHzWf) (:text |{})
                                  |T $ %{} :Expr (:at 1698255562230) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1698255566382) (:by |rJG4IHzWf) (:text |:href)
                                      |b $ %{} :Expr (:at 1698255568513) (:by |rJG4IHzWf)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1698255570736) (:by |rJG4IHzWf) (:text |:address)
                                          |b $ %{} :Leaf (:at 1698255571371) (:by |rJG4IHzWf) (:text |info)
                                  |b $ %{} :Expr (:at 1698255573885) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1698255575066) (:by |rJG4IHzWf) (:text |:target)
                                      |b $ %{} :Leaf (:at 1698255578764) (:by |rJG4IHzWf) (:text "|\"_blank")
                                  |h $ %{} :Expr (:at 1698255580995) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1698255582940) (:by |rJG4IHzWf) (:text |:inner-text)
                                      |b $ %{} :Leaf (:at 1698255587793) (:by |rJG4IHzWf) (:text "|\"Source")
                                  |l $ %{} :Expr (:at 1698255588289) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1698255590268) (:by |rJG4IHzWf) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1698255591582) (:by |rJG4IHzWf) (:text |css/link)
          :examples $ []
        |load-cirru-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1698254226425) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1698254228381) (:by |rJG4IHzWf) (:text |defmacro)
              |b $ %{} :Leaf (:at 1698254226425) (:by |rJG4IHzWf) (:text |load-cirru-data)
              |h $ %{} :Expr (:at 1698254226425) (:by |rJG4IHzWf)
                :data $ {}
              |l $ %{} :Expr (:at 1698254242656) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1698254251229) (:by |rJG4IHzWf) (:text |&data-to-code)
                  |T $ %{} :Expr (:at 1698254239696) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1698254241832) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                      |T $ %{} :Expr (:at 1698254232152) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698254235222) (:by |rJG4IHzWf) (:text |read-file)
                          |b $ %{} :Leaf (:at 1698254277495) (:by |rJG4IHzWf) (:text "|\"content/images.cirru")
          :examples $ []
        |style-image-card $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1768022046126) (:by |sync)
            :data $ {}
              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |defstyle)
              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |style-image-card)
              |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                :data $ {}
                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                  |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"&")
                      |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:width)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |480)
                          |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:background-position)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"center")
                          |Z $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:background-size)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"480px")
                          |b $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:height)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |270)
                          |d $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:position)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:relative)
                          |f $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:border-radius)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"8px")
                          |h $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:cursor)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:pointer)
                          |j $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:transition-duration)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"400ms")
                          |l $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:box-shadow)
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |str)
                                  |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"0 0 4px ")
                                  |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |hsl)
                                      |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |0)
                                      |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |0)
                                      |Z $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |100)
                                      |b $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |0.4)
                          |n $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:max-width)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"calc(90vw - 40px)")
                          |p $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:justify-self)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:center)
                  |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"&:hover")
                      |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |{})
                          |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:background-size)
                              |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"520px")
                          |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |:box-shadow)
                              |V $ %{} :Expr (:at 1768022046126) (:by |sync)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |str)
                                  |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text "|\"0 0 4px ")
                                  |X $ %{} :Expr (:at 1768022046126) (:by |sync)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |hsl)
                                      |V $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |0)
                                      |X $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |0)
                                      |Z $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |100)
                                      |b $ %{} :Leaf (:at 1768022046126) (:by |sync) (:text |0.8)
          :examples $ []
        |style-image-info $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1698255111853) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1698255113001) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1698255111853) (:by |rJG4IHzWf) (:text |style-image-info)
              |h $ %{} :Expr (:at 1698255111853) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1698255114564) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1698255115125) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1698255115756) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1698255116142) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698255116419) (:by |rJG4IHzWf) (:text |{})
                          |X $ %{} :Expr (:at 1698255149107) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255152651) (:by |rJG4IHzWf) (:text |:position)
                              |b $ %{} :Leaf (:at 1698255154003) (:by |rJG4IHzWf) (:text |:absolute)
                          |b $ %{} :Expr (:at 1698255118423) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255122239) (:by |rJG4IHzWf) (:text |:bottom)
                              |b $ %{} :Leaf (:at 1698255123184) (:by |rJG4IHzWf) (:text |0)
                          |h $ %{} :Expr (:at 1698255123832) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255124726) (:by |rJG4IHzWf) (:text |:left)
                              |b $ %{} :Leaf (:at 1698255125565) (:by |rJG4IHzWf) (:text |0)
                          |l $ %{} :Expr (:at 1698255126575) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255127429) (:by |rJG4IHzWf) (:text |:width)
                              |b $ %{} :Leaf (:at 1698255128804) (:by |rJG4IHzWf) (:text "|\"100%")
                          |o $ %{} :Expr (:at 1698255129487) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255131664) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1698255214596) (:by |rJG4IHzWf) (:text |40)
                          |q $ %{} :Expr (:at 1698255135985) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255138425) (:by |rJG4IHzWf) (:text |:background-color)
                              |b $ %{} :Expr (:at 1698255138672) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1698255138978) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1698255139247) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1698255139473) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1698255139749) (:by |rJG4IHzWf) (:text |0)
                                  |o $ %{} :Leaf (:at 1698255144795) (:by |rJG4IHzWf) (:text |0.7)
                          |s $ %{} :Expr (:at 1698255159265) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255163937) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Leaf (:at 1698255164691) (:by |rJG4IHzWf) (:text |:white)
                          |t $ %{} :Expr (:at 1698255182241) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255183414) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1698255187516) (:by |rJG4IHzWf) (:text "|\"4px 8px")
                          |u $ %{} :Expr (:at 1698255197395) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255198659) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1698255199705) (:by |rJG4IHzWf) (:text |0.6)
                          |v $ %{} :Expr (:at 1698255224916) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255229125) (:by |rJG4IHzWf) (:text |:transition-duration)
                              |b $ %{} :Leaf (:at 1698255230486) (:by |rJG4IHzWf) (:text "|\"200ms")
                          |w $ %{} :Expr (:at 1698256056498) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256058642) (:by |rJG4IHzWf) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1698256066191) (:by |rJG4IHzWf) (:text "|\"0px 0px 8px 8px")
                          |x $ %{} :Expr (:at 1698256103921) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256103921) (:by |rJG4IHzWf) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1698256105355) (:by |rJG4IHzWf) (:text |:default)
                          |y $ %{} :Expr (:at 1698256206538) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256210289) (:by |rJG4IHzWf) (:text |:transition-delay)
                              |b $ %{} :Leaf (:at 1698256221761) (:by |rJG4IHzWf) (:text "|\"0ms")
                  |h $ %{} :Expr (:at 1698255203695) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1698255205736) (:by |rJG4IHzWf) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1698255205994) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698255206305) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1698255206618) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255207861) (:by |rJG4IHzWf) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1698255208839) (:by |rJG4IHzWf) (:text |1)
                          |h $ %{} :Expr (:at 1698255218582) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1698256338408) (:by |rJG4IHzWf) (:text |;)
                              |T $ %{} :Leaf (:at 1698255218582) (:by |rJG4IHzWf) (:text |:height)
                              |b $ %{} :Leaf (:at 1698255223612) (:by |rJG4IHzWf) (:text |80)
                          |l $ %{} :Expr (:at 1698256220518) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1698256916218) (:by |rJG4IHzWf) (:text |;)
                              |T $ %{} :Leaf (:at 1698256220518) (:by |rJG4IHzWf) (:text |:transition-delay)
                              |b $ %{} :Leaf (:at 1698256826757) (:by |rJG4IHzWf) (:text "|\"200ms")
          :examples $ []
        |style-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1698255694809) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1698255696575) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1698255694809) (:by |rJG4IHzWf) (:text |style-list)
              |h $ %{} :Expr (:at 1698255694809) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1698255698477) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1698255698774) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1698255699428) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1698255702858) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1698255703271) (:by |rJG4IHzWf) (:text |{})
                          |L $ %{} :Expr (:at 1698255714129) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255716179) (:by |rJG4IHzWf) (:text |:display)
                              |b $ %{} :Leaf (:at 1698255717844) (:by |rJG4IHzWf) (:text |:grid)
                          |T $ %{} :Expr (:at 1698255699968) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255702378) (:by |rJG4IHzWf) (:text |:grid-template-columns)
                              |b $ %{} :Leaf (:at 1698255756328) (:by |rJG4IHzWf) (:text "|\"repeat(auto-fit, minmax(480px, 1fr))")
                          |b $ %{} :Expr (:at 1698255720704) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698255721996) (:by |rJG4IHzWf) (:text |:gap)
                              |b $ %{} :Leaf (:at 1698255725276) (:by |rJG4IHzWf) (:text "|\"12px")
          :examples $ []
        |style-title $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1698256623076) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1698256624118) (:by |rJG4IHzWf) (:text |defstyle)
              |b $ %{} :Leaf (:at 1698256623076) (:by |rJG4IHzWf) (:text |style-title)
              |h $ %{} :Expr (:at 1698256623076) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1698256626287) (:by |rJG4IHzWf) (:text |{})
                  |b $ %{} :Expr (:at 1698256626618) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1698256627632) (:by |rJG4IHzWf) (:text "|\"&")
                      |b $ %{} :Expr (:at 1698256627948) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1698256628250) (:by |rJG4IHzWf) (:text |{})
                          |b $ %{} :Expr (:at 1698256628549) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256634882) (:by |rJG4IHzWf) (:text |:text-align)
                              |b $ %{} :Leaf (:at 1698256635889) (:by |rJG4IHzWf) (:text |:center)
                          |e $ %{} :Expr (:at 1698256674702) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256675904) (:by |rJG4IHzWf) (:text |:padding)
                              |b $ %{} :Leaf (:at 1698256700290) (:by |rJG4IHzWf) (:text "|\"80px 0 20px")
                          |h $ %{} :Expr (:at 1698256637177) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256640086) (:by |rJG4IHzWf) (:text |:color)
                              |b $ %{} :Expr (:at 1698256760428) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1698256761442) (:by |rJG4IHzWf) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1698256761743) (:by |rJG4IHzWf) (:text |0)
                                  |h $ %{} :Leaf (:at 1698256762121) (:by |rJG4IHzWf) (:text |0)
                                  |l $ %{} :Leaf (:at 1698256765424) (:by |rJG4IHzWf) (:text |100)
                                  |o $ %{} :Leaf (:at 1699119327934) (:by |rJG4IHzWf) (:text |0.5)
                          |l $ %{} :Expr (:at 1698256642081) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256644324) (:by |rJG4IHzWf) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1698256690152) (:by |rJG4IHzWf) (:text |80)
                          |o $ %{} :Expr (:at 1698256657682) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1698256660955) (:by |rJG4IHzWf) (:text |:font-weight)
                              |b $ %{} :Leaf (:at 1699119318763) (:by |rJG4IHzWf) (:text |100)
                          |q $ %{} :Expr (:at 1699119299128) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1699119302916) (:by |rJG4IHzWf) (:text |:user-select)
                              |b $ %{} :Leaf (:at 1699119304165) (:by |rJG4IHzWf) (:text |:none)
                  |h $ %{} :Expr (:at 1699119331210) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1699119383238) (:by |rJG4IHzWf) (:text "|\"& span:hover")
                      |b $ %{} :Expr (:at 1699119333200) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1699119333718) (:by |rJG4IHzWf) (:text |{})
                          |T $ %{} :Expr (:at 1699119332650) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1699119340195) (:by |rJG4IHzWf) (:text |:text-shadow)
                              |b $ %{} :Expr (:at 1699119341405) (:by |rJG4IHzWf)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1699119342679) (:by |rJG4IHzWf) (:text |str)
                                  |L $ %{} :Leaf (:at 1699119481591) (:by |rJG4IHzWf) (:text "|\"2px 2px 8px ")
                                  |T $ %{} :Expr (:at 1699119332650) (:by |rJG4IHzWf)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1699119332650) (:by |rJG4IHzWf) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1699119332650) (:by |rJG4IHzWf) (:text |0)
                                      |h $ %{} :Leaf (:at 1699119332650) (:by |rJG4IHzWf) (:text |0)
                                      |l $ %{} :Leaf (:at 1699119332650) (:by |rJG4IHzWf) (:text |100)
                                      |o $ %{} :Leaf (:at 1699119485631) (:by |rJG4IHzWf) (:text |0.5)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by |)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1499755354983) (:by |)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1499755354983) (:by |)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1695659797743) (:by |rJG4IHzWf) (:text |respo-ui.css)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1695659799627) (:by |rJG4IHzWf) (:text |css)
                |s $ %{} :Expr (:at 1698254728209) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1698254730989) (:by |rJG4IHzWf) (:text |respo.util.format)
                    |b $ %{} :Leaf (:at 1698254731817) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1698254732052) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1698254732432) (:by |rJG4IHzWf) (:text |hsl)
                |t $ %{} :Expr (:at 1695659844346) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1695659847085) (:by |rJG4IHzWf) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1695659847949) (:by |rJG4IHzWf) (:text |:refer)
                    |h $ %{} :Expr (:at 1695659848197) (:by |rJG4IHzWf)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1695659850247) (:by |rJG4IHzWf) (:text |defstyle)
                |v $ %{} :Expr (:at 1499755354983) (:by |)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1540958704705) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1508946162679) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by |)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defcomp)
                        |l $ %{} :Leaf (:at 1573355389740) (:by |rJG4IHzWf) (:text |defeffect)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1584780606618) (:by |rJG4IHzWf) (:text |>>)
                        |u $ %{} :Leaf (:at 1698254655266) (:by |rJG4IHzWf) (:text |list->)
                        |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |button)
                        |xT $ %{} :Leaf (:at 1512359490531) (:by |rJG4IHzWf) (:text |textarea)
                        |y $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1552321107012) (:by |rJG4IHzWf) (:text |input)
                        |z $ %{} :Leaf (:at 1698255594472) (:by |rJG4IHzWf) (:text |a)
                |x $ %{} :Expr (:at 1499755354983) (:by |)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by |)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1507461845717) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507461855480) (:by |root) (:text |reel.comp.reel)
                    |r $ %{} :Leaf (:at 1507461856264) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507461856484) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507461858342) (:by |root) (:text |comp-reel)
                |yj $ %{} :Expr (:at 1521954061310) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788377809) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521954064826) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521954065004) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521954067604) (:by |root) (:text |dev?)
        :examples $ []
    |app.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1544873875614) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |def)
              |j $ %{} :Leaf (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?)
              |r $ %{} :Expr (:at 1624469709435) (:by |rJG4IHzWf)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1624469715390) (:by |rJG4IHzWf) (:text |=)
                  |D $ %{} :Leaf (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev")
                  |T $ %{} :Expr (:at 1624469701389) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env)
                      |T $ %{} :Leaf (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode")
                      |b $ %{} :Leaf (:at 1658121345573) (:by |rJG4IHzWf) (:text "|\"release")
          :examples $ []
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1545933382603) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1518157345496) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1518157327696) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1518157327696) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157346643) (:by |root) (:text |{})
                  |yf $ %{} :Expr (:at 1544956719115) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788237503) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788237503) (:by |root) (:text |app.config)
        :examples $ []
    |app.main $ %{} :FileEntry
      :defs $ {}
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507399777531) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1507399778895) (:by |root) (:text |->)
                  |T $ %{} :Leaf (:at 1507399776350) (:by |root) (:text |reel-schema/reel)
                  |j $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507401405076) (:by |root) (:text |:base)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
                  |r $ %{} :Expr (:at 1507399779656) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399781682) (:by |root) (:text |assoc)
                      |j $ %{} :Leaf (:at 1507399793097) (:by |root) (:text |:store)
                      |r $ %{} :Leaf (:at 1507399787471) (:by |root) (:text |schema/store)
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
              |t $ %{} :Expr (:at 1547437686766) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1547437687530) (:by |root) (:text |when)
                  |L $ %{} :Expr (:at 1584874661674) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1584874662518) (:by |rJG4IHzWf) (:text |and)
                      |T $ %{} :Leaf (:at 1547437691006) (:by |root) (:text |config/dev?)
                      |j $ %{} :Expr (:at 1584874663522) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=)
                          |j $ %{} :Leaf (:at 1584874665829) (:by |rJG4IHzWf) (:text |op)
                          |r $ %{} :Leaf (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states)
                  |T $ %{} :Expr (:at 1518156274050) (:by |root)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1692546015701) (:by |rJG4IHzWf) (:text |js/console.log)
                      |r $ %{} :Leaf (:at 1547437698992) (:by |root) (:text "|\"Dispatch:")
                      |v $ %{} :Leaf (:at 1518156280471) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1584780634192) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |reset!)
                  |j $ %{} :Leaf (:at 1507399899641) (:by |root) (:text |*reel)
                  |r $ %{} :Expr (:at 1507399884621) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507399887573) (:by |root) (:text |reel-updater)
                      |j $ %{} :Leaf (:at 1507399888500) (:by |root) (:text |updater)
                      |r $ %{} :Leaf (:at 1507399891576) (:by |root) (:text |@*reel)
                      |v $ %{} :Leaf (:at 1507399892687) (:by |root) (:text |op)
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
              |t $ %{} :Expr (:at 1544874433785) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1544874434638) (:by |rJG4IHzWf) (:text |println)
                  |j $ %{} :Leaf (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1544874440404) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544874440190) (:by |rJG4IHzWf) (:text |if)
                      |j $ %{} :Leaf (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release")
              |v $ %{} :Expr (:at 1636914348413) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1636914349962) (:by |rJG4IHzWf) (:text |if)
                  |j $ %{} :Leaf (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?)
                  |r $ %{} :Expr (:at 1636914352112) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!)
              |x $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |y $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1507399915531) (:by |root) (:text |*reel)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1499755354983) (:by |)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1499755354983) (:by |)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel)
                          |j $ %{} :Leaf (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev)
                      |r $ %{} :Expr (:at 1499755354983) (:by |)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |yD $ %{} :Expr (:at 1507461684494) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507461739167) (:by |root) (:text |listen-devtools!)
                  |j $ %{} :Leaf (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k)
                  |r $ %{} :Leaf (:at 1507461693919) (:by |root) (:text |dispatch!)
              |yL $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1518157458163) (:by |root) (:text ||beforeunload)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yM $ %{} :Expr (:at 1518157357847) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener)
                  |r $ %{} :Leaf (:at 1695833113543) (:by |rJG4IHzWf) (:text ||visibilitychange)
                  |v $ %{} :Expr (:at 1612344221583) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn)
                      |L $ %{} :Expr (:at 1612344222530) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612344223520) (:by |rJG4IHzWf) (:text |event)
                      |T $ %{} :Expr (:at 1695833124329) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833125950) (:by |rJG4IHzWf) (:text |if)
                          |L $ %{} :Expr (:at 1695833126511) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1695833145858) (:by |rJG4IHzWf) (:text |=)
                              |L $ %{} :Leaf (:at 1695833179425) (:by |rJG4IHzWf) (:text "|\"hidden")
                              |T $ %{} :Leaf (:at 1695833167249) (:by |rJG4IHzWf) (:text |js/document.visibilityState)
                          |T $ %{} :Expr (:at 1612344224533) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yO $ %{} :Expr (:at 1646150039456) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped)
                  |T $ %{} :Leaf (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval)
                  |b $ %{} :Leaf (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000)
                  |h $ %{} :Leaf (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!)
              |yP $ %{} :Expr (:at 1518157492640) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1518157495438) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1518157495644) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1518157495826) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157496930) (:by |root) (:text |raw)
                          |j $ %{} :Expr (:at 1518157497615) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1518157506313) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1527788293499) (:by |root) (:text |config/site)
                  |r $ %{} :Expr (:at 1518157514334) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1533919640958) (:by |rJG4IHzWf) (:text |when)
                      |j $ %{} :Expr (:at 1518157515117) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157515786) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1518157516878) (:by |root) (:text |raw)
                      |r $ %{} :Expr (:at 1518157521635) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157523818) (:by |root) (:text |dispatch!)
                          |j $ %{} :Expr (:at 1688397806134) (:by |rJG4IHzWf)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1688397806833) (:by |rJG4IHzWf) (:text |::)
                              |T $ %{} :Leaf (:at 1518157669936) (:by |root) (:text |:hydrate-storage)
                              |b $ %{} :Expr (:at 1688397811073) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |parse-cirru-edn)
                                  |b $ %{} :Leaf (:at 1688397811073) (:by |rJG4IHzWf) (:text |raw)
              |yT $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text "||App started.")
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |j $ %{} :Leaf (:at 1695659910770) (:by |rJG4IHzWf) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text ||.app)
          :examples $ []
        |persist-storage! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
            :data $ {}
              |T $ %{} :Leaf (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn)
              |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!)
              |n $ %{} :Expr (:at 1646150052705) (:by |rJG4IHzWf)
                :data $ {}
              |r $ %{} :Expr (:at 1646150152124) (:by |rJG4IHzWf)
                :data $ {}
                  |T $ %{} :Leaf (:at 1695833186592) (:by |rJG4IHzWf) (:text |println)
                  |b $ %{} :Leaf (:at 1695833194980) (:by |rJG4IHzWf) (:text "|\"Saved at")
                  |e $ %{} :Expr (:at 1695833205162) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1695833211484) (:by |rJG4IHzWf) (:text |.!toISOString)
                      |T $ %{} :Expr (:at 1695833196620) (:by |rJG4IHzWf)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1695833204629) (:by |rJG4IHzWf) (:text |new)
                          |T $ %{} :Leaf (:at 1695833201386) (:by |rJG4IHzWf) (:text |js/Date)
              |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                :data $ {}
                  |j $ %{} :Leaf (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem)
                  |r $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site)
                  |v $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn)
                      |j $ %{} :Expr (:at 1533919515671) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store)
                          |j $ %{} :Leaf (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel)
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1626201152815) (:by |rJG4IHzWf)
            :data $ {}
              |D $ %{} :Leaf (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn)
              |L $ %{} :Leaf (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!)
              |P $ %{} :Expr (:at 1626201163076) (:by |rJG4IHzWf)
                :data $ {}
              |T $ %{} :Expr (:at 1626201191606) (:by |rJG4IHzWf)
                :data $ {}
                  |D $ %{} :Leaf (:at 1626201192115) (:by |rJG4IHzWf) (:text |if)
                  |L $ %{} :Expr (:at 1626201192626) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?)
                      |j $ %{} :Leaf (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors)
                  |T $ %{} :Expr (:at 1626201164538) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626201161775) (:by |rJG4IHzWf) (:text |do)
                      |j $ %{} :Expr (:at 1614750747553) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes)
                      |r $ %{} :Expr (:at 1507461699387) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461702453) (:by |root) (:text |clear-cache!)
                      |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel)
                          |r $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes)
                          |v $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn)
                              |j $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel)
                                  |j $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev)
                              |r $ %{} :Expr (:at 1612280627439) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!)
                      |x $ %{} :Expr (:at 1507461704162) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507461706990) (:by |root) (:text |reset!)
                          |j $ %{} :Leaf (:at 1507461708965) (:by |root) (:text |*reel)
                          |r $ %{} :Expr (:at 1507461710020) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507461730190) (:by |root) (:text |refresh-reel)
                              |j $ %{} :Leaf (:at 1507461719097) (:by |root) (:text |@*reel)
                              |r $ %{} :Leaf (:at 1507461721870) (:by |root) (:text |schema/store)
                              |v $ %{} :Leaf (:at 1507461722724) (:by |root) (:text |updater)
                      |y $ %{} :Expr (:at 1626777542168) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!)
                          |j $ %{} :Leaf (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~")
                          |r $ %{} :Leaf (:at 1679237703306) (:by |rJG4IHzWf) (:text "|\"Ok")
                  |j $ %{} :Expr (:at 1626201203433) (:by |rJG4IHzWf)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!)
                      |b $ %{} :Leaf (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error")
                      |j $ %{} :Leaf (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors)
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
              |v $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1499755354983) (:by |)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                      |j $ %{} :Leaf (:at 1507400119272) (:by |root) (:text |@*reel)
                  |v $ %{} :Leaf (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by |)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.main)
            |r $ %{} :Expr (:at 1499755354983) (:by |)
              :data $ {}
                |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1499755354983) (:by |)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by |)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |clear-cache!)
                |v $ %{} :Expr (:at 1499755354983) (:by |)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by |)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |comp-container)
                |y $ %{} :Expr (:at 1499755354983) (:by |)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1508556737455) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1499755354983) (:by |)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
                |yT $ %{} :Expr (:at 1499755354983) (:by |)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1507399674125) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399678694) (:by |root) (:text |reel.util)
                    |r $ %{} :Leaf (:at 1507399680625) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399680857) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1518156292092) (:by |root) (:text |listen-devtools!)
                |yr $ %{} :Expr (:at 1507399683930) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399687162) (:by |root) (:text |reel.core)
                    |r $ %{} :Leaf (:at 1507399688098) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507399688322) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507399691010) (:by |root) (:text |reel-updater)
                        |q $ %{} :Leaf (:at 1518156288482) (:by |root) (:text |refresh-reel)
                |yv $ %{} :Expr (:at 1507399715229) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507399717674) (:by |root) (:text |reel.schema)
                    |r $ %{} :Leaf (:at 1507399755750) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507399757678) (:by |root) (:text |reel-schema)
                |yy $ %{} :Expr (:at 1527788302920) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527788304925) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788306048) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788306884) (:by |root) (:text |config)
                |yyT $ %{} :Expr (:at 1626201173819) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors)
                |yyj $ %{} :Expr (:at 1626290808117) (:by |rJG4IHzWf)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default)
                    |r $ %{} :Leaf (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!)
        :examples $ []
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1499755354983) (:by |)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |:states)
                      |j $ %{} :Expr (:at 1499755354983) (:by |)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1584781004285) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor)
                              |j $ %{} :Expr (:at 1584781007287) (:by |rJG4IHzWf)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1584781007486) (:by |rJG4IHzWf) (:text |[])
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by |)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.schema)
        :examples $ []
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1499755354983) (:by |)
            :data $ {}
              |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |store)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1519489491135) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1519489492110) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1499755354983) (:by |)
                :data $ {}
                  |T $ %{} :Leaf (:at 1688397777636) (:by |rJG4IHzWf) (:text |tag-match)
                  |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |op)
                  |n $ %{} :Expr (:at 1507399852251) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397783265) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507399855618) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1688397785768) (:by |rJG4IHzWf) (:text |cursor)
                          |h $ %{} :Leaf (:at 1688397786090) (:by |rJG4IHzWf) (:text |s)
                      |j $ %{} :Expr (:at 1584874625235) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states)
                          |j $ %{} :Leaf (:at 1584874628374) (:by |rJG4IHzWf) (:text |store)
                          |r $ %{} :Leaf (:at 1688397788043) (:by |rJG4IHzWf) (:text |cursor)
                          |t $ %{} :Leaf (:at 1688397788324) (:by |rJG4IHzWf) (:text |s)
                  |t $ %{} :Expr (:at 1518157547521) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1688397789504) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1518157657108) (:by |root) (:text |:hydrate-storage)
                          |b $ %{} :Leaf (:at 1688397790936) (:by |rJG4IHzWf) (:text |data)
                      |j $ %{} :Leaf (:at 1584874637339) (:by |rJG4IHzWf) (:text |data)
                  |u $ %{} :Expr (:at 1688397780767) (:by |rJG4IHzWf)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1688397781225) (:by |rJG4IHzWf) (:text |_)
                      |T $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |do)
                          |b $ %{} :Expr (:at 1688397780408) (:by |rJG4IHzWf)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695659902074) (:by |rJG4IHzWf) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text "|\"unknown op:")
                              |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |op)
                          |h $ %{} :Leaf (:at 1688397780408) (:by |rJG4IHzWf) (:text |store)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1499755354983) (:by |)
          :data $ {}
            |T $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1499755354983) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1584874614885) (:by |rJG4IHzWf)
              :data $ {}
                |T $ %{} :Leaf (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require)
                |j $ %{} :Expr (:at 1584874616720) (:by |rJG4IHzWf)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer)
                    |v $ %{} :Expr (:at 1584874621524) (:by |rJG4IHzWf)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states)
        :examples $ []
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
