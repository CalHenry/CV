// credits to Jonas Pleyer for the template https://github.com/jonaspleyer/cv-soft-and-hard
#import "@preview/cv-soft-and-hard:0.1.0": styling, section, entry, subsection, python, typst-logo
#import "@preview/sicons:15.13.0": *
#import "personal-info.typ"
// personal-info.typ is a module that works as secret environment variables. ex: #let phone = "0123456789"

#set text(lang: "fr")

#set document(author: personal-info.name, title: "CV" + personal-info.name)
#show: styling
#set page(margin: (top: 1.7cm))

#align(center)[
  = #personal-info.name\
  #link("https://www.github.com/calhenry", "github.com/calhenry") |
  #link("mailto:" + personal-info.email, personal-info.email) |
  #link("https://www.linkedin.com/in/" + personal-info.name_lower, "linkedin.com/" + personal-info.name_lower) |
  #link(personal-info.phone_fr)
]

//Experience
#section("Expérience")
// #set list(spacing: 0.5em)
#entry(
  [
    *Projets professionnalisants* (_OpenClassrooms_) #python \
  //
  - Développement et déploiement de modèles ML supervisés/non-supervisés avec optimisation d'hyperparamètres
  - Segmentation de clients
    ], []
)
#v(-1.3em) // Réduire l'espace interligne
- #entry(
  [
  *Moteur de classification multimodal* _(images + texte)_ \
  Contexte : Étude de faisabilité d'un système de classification automatique combinant analyse visuelle et textuelle pour la catégorisation de produits e-commerce. \ NLP : BERT pour classification de texte avec tokenisation et optimisation des hyperparamètres \ Computer Vision : Implémentation VGG16 pré-entraîné avec data augmentation. \
  Résultats : Précision de 95% sur dataset de test, modèle NLP meilleur que multimodal. \
  Librairies : #link("https://www.tensorflow.org", `tensorflow`) et #link("https://huggingface.co/docs/transformers/index", `transformers`)
  ], []
)
#v(-1.3em)
- #entry(
  [
  *#link("https://github.com/CalHenry/OC-Projet7", `MLOps`)* _(versionnage MLflow, déploiement cloud, API, monitoring de drift)_\
  Objectifs : Prédire la probabilité de faillite d'un client.
  Analyser les features importantes du modèle pour assurer la transparence des calculs pour les clients.
  Déployer le modèle à l'aide d'une API \
  Librairies : #link("https://scikit-learn.org", `scikit-learn`), #link("https://mlflow.org", `mlflow`) et #link("https://fastapi.tiangolo.com", `fastapi`)
  ], []
)
#v(-1.3em)
- #entry(
  [
  *Traitement dans un environnement BigData Cloud* _(AWS, Databicks)_: \
  Contexte : Développement d’un pipeline Big Data pour l’extraction et l’analyse de features d’images à partir de grands volumes de données, en utilisant cluster et des outils cloud. \
  Librairies : #link("https://spark.apache.org/docs/latest/api/python/index.html", `pyspark`), #link("https://www.tensorflow.org", `tensorflow`)
  ], []
)

#entry(
  [
    *Chargé d'étude et d'évaluation* (_Ministère du Travail et de la Santé_) #box(baseline: 20%, [#sicon(slug: "r", size: 1.2em, icon-color: "default") ])
    - Études statistiques, traitement, analyse des données RH.
    - Création d'un modèle de prévision de l'âge de départ à la retraite (modèle de survie Cox)
  ],
    [_09/2023 - 08/2024_]
)

#entry(
  [
    *Stage Chargé d'étude de données sociales* (_Ministère du Travail et de la Santé_) #box(baseline: 20%, [#sicon(slug: "r", size: 1.2em, icon-color: "default") ])
    - Étude empirique des inégalités de genre et de rémunération au sein du ministère. Présentation devant la direction.
  ],
  [_05/2023 - 09/2023_]
)

#entry(
  [
    *Assistant de recherche* (_LIEPP - SciencesPo Paris_) #python #box(baseline: 20%, [#sicon(slug: "r", size: 1.2em, icon-color: "default") ])
    - Recherche sur les discriminations de genre et ethniques
    - Collecte et traitement des données. Statistiques descriptives
  ],
  [_12/2023 - 04/2024_ #linebreak(justify: false) _05/2022 - 08/2022_],
)

#section("Formation")
#entry(
  [
    *Expert en ingénierie et science des données* (_OpenClassrooms_)
  - 9 projets professionnalisants de machine learning
  ],
  [_2025 - 2026_]
)

#entry(
  [
    *Master 2 Development Economics* (_Université Paris 1 Panthéon Sorbonne_)
    - Formation en analyse économique appliquée au développement : évaluation de politiques, enjeux de mondialisation et développement durable
    - Cours d'économétrie, théorie économique,
    - Traitements BigData
  ],
  [_2023 - 2024_]
)

#entry(
  [
    *Master 1 Économie Quantitative* (_CY Cergy-Paris Université_)
    - Économétrie, évaluation de politiques publiques, mathématiques, séries temporelles
  ],
  [_2022 - 2023_],
)


#section("Compétences")
#table(
  align: left,
  columns: (auto, 1fr),
  stroke: none,
  row-gutter: 0pt,
  column-gutter: 5pt,
  inset: (left: 0pt, top: 2pt),
  text("Programmation", weight: 600),
  [Python, R, SQL, VBA],
  text("Statistiques", weight: 600),
  [Machine learning, Économétrie, Deep learning],
  text("Machine learning", weight: 600),
  [Scikit-learn, PyTorch, Tensorflow, MLFlow],
  text("Dashboards", weight: 600),
  [Shiny, Streamlit, Marimo],
  text("Developpement", weight: 600),
  [Git, GitHub Actions],
  text("Documentation & Publication", weight: 600),
  [Github-pages, LaTeX, Typst, PackOffice],
)

// #pagebreak()

#section("Projects personnels")

#entry(
  [
    *#link("https://github.com/CalHenry/job-scraper-llm-comparison", `Wildchat-1M clustering`)* -
    _NLP sur un dataset d'1 million de conversations ChatGPT _ #python \
  - Objectifs : Segmenter les conversations par similitude sémantique. Optimiser le pipeline pour un volume de données supérieur à la RAM disponible.
  - Librairies : #link("https://duckdb.org/", `Duckdb`), #link("https://docs.pola.rs", `polars`), #link("https://scikit-learn.org", `scikit-learn`)
  ],
  [_11/2025_]
)

#entry(
  [
    *#link("https://github.com/CalHenry/job-scraper-llm-comparison", `job-scraper-llm-vs-tradition`)* -
    _web scrapping et LLM en local_ #python \
  - Objectifs : Automatiser l'extraction et le traitement d'offres d'emplois. Tester les performances d'un petit LLM contre les méthodes traditionnelles de traitement des données.
  - Scrapper des données et rétro-ingénierie d'API publique
  - Avec #link("https://www.langchain.com", `langchain`), #link("https://docs.crawl4ai.com", `crawl4ai`), #link("https://docs.pola.rs", `polars`)
  ],
  [_08/2025_]
)


#entry(
  [
    *#link("https://github.com/CalHenry/commit-ai", `commit-ai`)* -
  _Assistant IA pour git commits_ #python\
    - Objectifs : Développer un outil accessible dans le terminal qui génère un draft de commit via LLM local (éditable). Faire une interface CLI
    - Avec #link("https://ollama.com", `ollama`) pour le LLM en local, #link("https://textual.textualize.io", `textual`) et #link("https://typer.tiangolo.com", `typer`) pour l'application CLI
  ],
  [_09/2025_],
)

#section("Langues")

- *Anglais* C1
- *Espagnol* A2


#section("Centre d'intérêts")

- Escalade
- Course à pied
- Cyclisme
