Para a avaliación desta parte da materia tedes estas dúas prácticas,
con distintas opcións/nota en función do tempo que lle
queirades/poidades adicar.

Lembrade que non haberá preguntas no(s) exame(s) final(is). As
prácticas serán recuperables para a segunda oportunidade, de ser
preciso.

* Práctica OpenGL: Iluminación con Phong

  -> Prazo entrega: 23:59h domingo *23 de xaneiro* 2022

  -> Práctica OpenGL para grupos de 1 a 3 estudantes.

  A partir do esqueleto de código do arquivo
  =spinningcube_withlight_SKEL.cpp= que podedes atopar neste repositorio
  (rama /practicaOpenGL/) tedes que implementar unha iluminación
  simple con Phong sobre un cubo 3D en movemento. A implementación ten
  que funcionar para cámara, punto(s) de luz e cubo 3D en posicións
  arbitrarias.

** Primeira parte (ata 4 puntos sobre 10)

   Cunha soa fonte de luz (luz punto) e co cubo cun único material
   homoxéneo (comportamento idéntico fronte á luz en todos os puntos
   da superficie do cubo), trátase de aplicar Phong shading básico.

   Ver ata diapositiva 11 en =igm_render_teoria3.pdf=

** Segunda parte (ata +2 puntos sobre o anterior)

   Engadide un segundo cubo rotando, máis pequeno, (aproveitade a
   estrutura de datos xa existente), e un segundo punto de luz. No
   tiro de cámara téñense que apreciar as dúas luces.

** Terceira parte (ata +2 puntos sobre o anterior)

   Engadide un mapa difuso nas caras do(s) cubo(s) para o cálculo de
   Phong, o que permite ter distintas propiedades de reflexión difusa
   por fragmento.

   Diapositiva 12 en =igm_render_teoria3.pdf=

** Cuarta parte (ata + 2 puntos sobre o anterior)

   Engadide tamén un mapa especular, que permita distintos
   comportamentos da compoñente especular da luz en función do punto
   iluminado do cubo. O mapa especular ten que ser distinto do mapa
   difuso empregado.

   Diapositiva 13 en =igm_render_teoria3.pdf=

   Ver tamén mapeado de texturas a partir de diapositiva 30 en
   =igm_render_lab2.pdf=

** Entregables

   -> URL a repositorio git co código, no que se vexa o progreso nas
   versións do traballo.

   No repositorio ten que haber:
   - Os arquivos co código fonte e un makefile que constrúa o(s) binario(s)
   - Capturas de pantalla nas que se vexan renders da práctica e,
     ademais, a versión de OpenGL na saída estándar.

   Para a evaluación da práctica é posible que se requira unha defensa
   interactiva da mesma con todas as persoas do grupo de prácticas.

* Práctica de Ray Tracing

  Empregaremos como base este simple proxecto de ray tracer:
  https://gist.github.com/rossant/6046463

  -> é python2 ¯\_ (ツ)_/¯
  -> Precisaredes numpy e matplotlib

** Primeira parte (ata 4 puntos sobre 10)

   Engadirlla a este motor a posibilidade de traballar cun número
   arbitrario de fontes de luz, cada unha delas coas súas propias
   características (posición, cor).

   Modificade a escena predeterminada a renderizar para que inclúa
   novas luces con distintas cores, mostrando a nova /feature/
   incorporada.

** Segunda parte (ata +3 puntos sobre o anterior)

   Engadir ao motor unha nova primitiva gráfica coa que traballar: triángulo.

   O código orixinal deste raytracer unicamente emprega esferas ou
   planos para construír unha escena e iluminala. Tedes que engadir
   a posibilidade de ter tamén triángulos na escena.

   Modifica a escena predeterminada para que inclúa algún triángulo,
   ademais de esferas e planos como a escena orixinal.

   ->Consello: Podedes reutilizar a función para calcular a
   intersección raio-plano que xa está no código, e a maiores
   precisades outra función que, unha vez sabemos que o raio choca co
   plano, comprobe se este punto de intesección está dentro do
   triángulo co que estamos a comprobar a intersección raio-triángulo.

** Terceira parte (ata +3 puntos sobre o anterior)

   Engade ao motor unha primitiva Triangle Strip (tira de triángulos
   veciños que comparten vértices):
   https://en.wikipedia.org/wiki/Triangle_strip.

   É dicir, o motor ten que poder traballar cun número arbitrario de
   vértices que formarán unha tira de triángulos veciños (que non
   teñen por que ser co-planares):

     3 vértices: 1 triángulo

     4 vértices: 2 triángulos

     5 vértices: 3 triángulos

     6 vértices: 4 triángulos...

   Modificade a escea predeterminada a renderizar para que inclúa
   algunha tira de triángulos, que terá que ser correctamente
   iluminada.

** Entregables

   -> URL a repositorio git co código, no que se vexa o progreso nas
   versións do traballo.

   -> Etiquetade (=git tag=) as distintas versións que correspondan a
   cada unha das partes.

   No repositorio ten que haber tamén exemplos de renders obtidos
   coas características incorporadas.

   Tamén podedes achegar algún texto aclarativo/explicativo se o
   considerades preciso.

   Para a evaluación da práctica é posible que se requira unha defensa
   interactiva da mesma con todas as persoas do grupo de prácticas.