<p align="center">
   Un sistema camera-based per la fall detection in ambienti indoor
</p>

---


<p align="center">
<img src="https://forthebadge.com/images/badges/built-with-love.svg"/>
<img src="https://forthebadge.com/images/badges/built-for-raspberry.svg"/>
    <b>FallDetection</b> è un progetto di <b>Deep Learning</b> realizzato in <b>Google Colab</b> per la tesi di laurea magistrale in Ingegneria Informatica.
    <br><br><b>
</b></p>

# 📔 Tabella dei contenuti

- [Presentazione del progetto](#panoramica)
- [Tecnologie di base](#tecno)
- [Test eseguiti](#test)
- [Workflow Iterazioni](#workflow)
- [Obiettivi futuri](#obiettivi)
- [Autore](#autore)

# 📝 Presentazione del progetto <a name = "panoramica"></a>

<table style="width:25%">
  <tr>
    <img align="left" src="JustMeet-Frontend/components/images/INTRO.jpeg" height="300" width="160">
    <img align="left" src="JustMeet-Frontend/components/images/INTRO2.jpeg" height="300" width="160">
    <img align="left" src="JustMeet-Frontend/components/images/INTRO3.jpeg" height="300" width="160">
    <img align="left" src="JustMeet-Frontend/components/images/INTRO4.jpeg" height="300" width="160">
  </tr>
</table>


Si vuole realizzare un sistema software che permetta l’incontro tra persone al fine di svolgere attività cooperative e di squadra. L’obiettivo del sistema è dunque favorire la creazione di gruppi e di nuove amicizie e deve funzionare come una sorta di bacheca avanzata di **annunci pubblici** e di coordinamento.

<img align="right" src="JustMeet-Frontend/components/images/SCOPRI EVENTI.jpeg" height="300">

Gli utenti possono utilizzare la piattaforma per inserire eventi e per richiedere la partecipazione di altri eventi. In particolare la tipologia di evento richiederà di specificare diverse caratteristiche.
Ad esempio il sistema potrebbe permettere di organizzare una partita di calcetto inserendo specifici dati quali: **luogo, orario, titolo, descrizione, topic,nome dell'organizzatore e numero massimo di partecipanti** necessari affinché l’evento abbia luogo. Una volta raggiunto il numero di partecipanti richiesto, l'evento non sarà più disponibile agli altri utenti.
Parimenti sarà possibile organizzare seminari di studio, feste pubbliche, eventi sportivi di qualsiasi genere e molto altro. 

Una volta effettuato il Login, l'utente sarà  in grado di creare il proprio evento e di visualizzare la lista di tutti gli eventi pubblicati,anche filtrando tali eventi in base alla posizione geografica dell'utente e ottenendo così i più **vicini** a lui. Inoltre l'utente potrà anche **commentare** gli eventi, creando così una rete sociale in cui i vari utenti possono comunicare tra di loro.
Grazie al **topic** che caratterizza un Evento creato, l'utente può essere subito informato sulle attività di suo interesse che si svolgeranno e visualizzarle sulla **mappa**. Potrà altresì mettere la sua partecipazione per informare l'organizzatore della sua presenza.
Nello sviluppo dell’applicazione è stato necessario focalizzarsi e definire la lista degli eventi che la piattaforma supporta.

La **tutela della leggitimità** degli eventi è importante,infatti un **moderatore** sarà incaricato di rimuovere eventi illeggittimi o utenti che non rispettano le buone norme di comportamento.


# 🧰 Tecnologie di base <a name = "tecno"></a>

<img align="left" src="JustMeet-Frontend/components/images/HOMEPAGE.jpeg" height="300">

Il lato frontend dell’applicativo si rivolge al mondo Mobile ed è stato sviluppato nel linguaggio di programmazione **Javascript** mediante il framework Open Source **React Native**.

L'esperienza di navigazione all'interno dell'applicativo è governata da uno **Stack Navigator**, ovvero una configurazione che permette la navigazione fra i vari componenti in maniera sequenziale, dove ogni nuova schermata è posta in cima allo stack.
Ci si è affidati all'interazione con i servizi attraverso interfacce estese di JpaRepository per quanto riguarda la persistenza dei dati, che sono stati elaborati e gestiti direttamente all'interno del framework di sviluppo backend.

Una seconda implementazione della logica si è basata su un backend scritto in linguaggio **Java**. L'interazione tra frontend e backend è stata resa possibile grazie alla creazione di **API Rest**, la cui scrittura e gestione, sono state rese possibili grazie al framework **Spring Boot**. Per la persistenza dei dati del servizio ci si è affidati al database relazionale **MySQL Workbench**. Per poter rendere più agevole la scrittura del codice tramite l'uso di annotazioni, si è deciso di impiegare la libreria Java **Spring Persistence**.

<img align="right" src="JustMeet-Frontend/components/images/MAPPA EVENTI.jpeg" height="300">

Per quanto concerne l'utilizzo di alcuni servizi essenziali per gli utenti si è deciso di affidarsi ai servizi API forniti da **Google**, non correlati a quella che è la logica di backend dell'applicativo.

Basandosi su un sistema sicuro e affidabile per quanto riguarda l'autenticazione, si è deciso di impiegare il sistema **Google OAuth 2.0**.

In riferimento alla visualizzazione degli eventi nelle mappe geografiche invece, si è deciso di utilizzare le API **Google Maps**, rese accessibili grazie al modulo react-native-maps integrato nel frontend.

Infine per assicurarsi la legittimità dei luoghi degli eventi ci si è affidati a **Geolocator API**, un servizio speciale in grado di convertire un qualsiasi indirizzo civico in coordinate geografiche. 


# 🧪 Test eseguiti <a name = "test"></a>

Sono stati realizzati un complessivo di 31 test tramite la libreria **JUnit** al fine di verificare il corretto funzionamento delle principali chiamate Api Rest e per assicurarsi che le singole unità di sviluppo assolvano le sue funzioni secondo i requisiti previsti.


# 📁 Workflow Iterazioni <a name="workflow"></a>

Il workflow è stato suddiviso in 4 iterazioni dalla durata di 2 settimane ciascuna. Per semplicità di organizzazione si è deciso che la scadenza di ogni iterazione coincidesse con la domenica della seconda settimana e l'inizio di una nuova iterazione coincidesse con il lunedì successivo. Nella tabella seguente sono elencate le date di inizio e scadenza di ogni iterazione:

<table style="width:100%">
  <tr>
    <th># Iterazione</th>
    <th>Data di inizio</th> 
    <th>Data di scadenza</th>
  </tr>
  <tr>
    <td>1</td>
    <td>08/03/2020</td>
    <td>22/03/2020</td>
  </tr>
  <tr>
    <td>2</td>
    <td>23/03/2020</td>
    <td>05/04/2020</td>
  </tr>
  <tr>
    <td>3</td>
    <td>6/04/2020</td>
    <td>19/04/2020</td>
  </tr>
   <tr>
    <td>4</td>
    <td>20/04/2020</td>
    <td>03/05/2020</td>
  </tr>
</table>

Breve riassunto delle classi implementate nelle varie iterazioni:

Iterazione **I**) Implementata la classe **Event** con i relativi Controller e Repository. Implementati test JUnit sulle chiamate API di EventControlle;

Iterazione **II**) Implementata la classe **User** con i relativi Controller e Repository. Implementati test JUnit sulle chiamate API di UserController;

Iterazione **III**) Implementate le classi **Location** e **Topic** con i relativi Controller e Repository. Implementati test JUnit sulle chiamate API di LocationController e TopicController;

Iterazione **IV**) Implementate le classi **Commento** e **Scheduler** con i relativi Controller e Repository. Implementati test JUnit sulle chiamate API di CommentoController e SchedulerController ed eseguito Integration Test dei componenti.

Durante lo svolgimento di un'iterazione più avanzata sono comunque state effettuate modifiche a componenti delle iterazioni precedenti per rispettare la natura evolutiva del processo unificato.

# 🎯 Obiettivi futuri <a name = "obiettivi"></a>

Si continuerà con lo sviluppo del sistema ampliando le funzionalità e possibilità offerte, integrando le seguenti feature, che per motivi di tempo (progetto universitario) non sono state implementate:
- Implementazione di una nuova feature che permette la possibilità di **stringere amicizia** con altri utenti della piattaforma;
- Implementazione di una nuova feature che permette la possibilità di creare **eventi privati** (visibili solo dagli amici dell'organizzatore dell'evento);
- Implementazione di una nuova feature che permette la possibilità di **ricevere notifiche** in maniera automatica per tutti i partecipanti di un evento una volta che esso abbia raggiunto il numero massimo di partecipanti;
- Implementazione di una nuova feature che permette la possibilità di eseguire la Login o Registrazione con altri **Social Network**;
- Implementazione di una nuova feature che permette la possibilità di inserire **metodi di pagamento** per eventi che prevedono possibili costi.

# 🔭 Autore <a name = "autore"></a>

- [Stefano Perniola](https://github.com/xniola)
