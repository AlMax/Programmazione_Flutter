# Programmazione Flutter
  Esercizi per imparare ad utilizzare Flutter

# Info di base
  Bisogna scaricare il Flutter SDK e seguire tutte le procedure sul sito ufficiale.
  Scaricare xcode ed andorid studio.
  Settare nel file della shell il path del bin di flutter.

  Eliminare la cartella web.


# Comandi
  flutter create "nome dell'app"
  flutter run
  sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
  sudo xcodebuild -runFirstLaunch

# Appunti
  1. In una dichiarazione del costruttore di una classe, i parametri possono divenire opzionali se messi in parentesi graffe:
    class Person {
      String name;
      int age;

      Person({this.nam, int this.age}){ }
    }

    1. E' possibile creare dei costruttori speciali, per inizializzare in modo più particolare:
      Person.veryOld(this.name){
        age = 60;
      }
    2. I parametri nel costruttore possono diventare obbligatori con il @required, ma ricordarsi di importare flutter/foundamentals

  2. Mettendo il "_" davanti una variabile/classe/metodo, la facciamo diventare privata.

  3. Array mappato:
    var questions = [
    {
      'questionText': 'Favuorite color?',
      'answers': [
        'Black',
        'Red',
        'Green',
      ]
    },
    {
      'questionText': 'Favuorite animal?',
      'answers': [
        'Dog',
        'Cat',
        'Dragon',
      ]
    },
    {
      'questionText': 'Favourite city?',
      'answers': [
        'Milan',
        'Rome',
        'Naples',
      ]
    },
  ];

  Come iterare l'array mappato:
    ...(questions[qIndex]['answers'] as List<String>).map((answer) {
      return Answer(answer, answerQ);
    }).toList(),

    1. Un altro Esempio più semplice per creare tanti oggetti Card quanti sono gli elementi di una lista:
      Column(
        children: transactions.map((tx) {
          return Card(
            child: Text(tx.title),
          );
        }).toList()
      )

  4. Column:
    La proprietà mainAxisAlignment permette di allineare verticalmente tutti gli elementi a piacimento.
    La proprietà crossAxisAlignment permette di allineare orizzontalmente tutti gli elementi a piacimento.

  5. Stile: Per lo stile, l'utilizzo di margin, padding, ecc.. serve utilizzare EdgeInsets, che contiene tutta una serie di attributi dedicati.

  6. Input:
    1. Posso usare il metodo OnChanged di alcuni componenti, definendo una funzione che memorizza in una mia variabile ciò che viene inserito.
    2. Posso definire una variabile di tipo TextEditingController(), che se richiamata nell'attributo 'controller' di un componente (tipo TextField), automaticamente memorizza il valore digitato nella suddetta variabile e per stamparla basta richiamare il parametro 'text' della variabile.
    3. OnSubmit richiede sempre almeno 1 input nel richiamare la funzione anonima. Con (_) indichiamo la presenza di un input che non ci serve utilizzare.

  7. Tipi di Widget:
    1. StateLessWidget serve per creare delle strutture dei vari componenti.
    2. StateFulWidget invece ha proprio degli "stati" ed è dove è possibile eseguire degli eventi. Infatti con setState(() {}) è possibile lavorare con gli elementi presenti nel widget e modificarli. (aggiungere un elemento ad un array)

  8. Scroll.
    1. SingleChildScrollView permette di rendere Scrollabile un determinato container. Influenza su tutti i child sotto di sè.
    2. ListView puoi decidere dove scrollare ed è infinito, senza limiti.
      1. Se usato con il builder, renderizza solamente ciò che è visibile.

  9. MediaQuery.of(context).size serve per accedere dinamicamente alle dimensione dello schermo
    1. app_bar.preferredSize.height - MediaQuery.of(context).padding.top -> Altezza della barra superiore del telefono
    2. SafeArea(child: ...) -> Sopratutto su IOS fa in modo che il child non sia posizionato negli spazi inutilizzabili di un iphone (tipo barra superiore oppure la barra inferiore)
