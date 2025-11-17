/*
 
 Exemplo de uso do Observer:
 
 let enzosChannel = YouTubeChannel(name: "Enzo Code")

 let john = Subscriber(name: "John")
 let mary = Subscriber(name: "Mary")

 john.subscribe(to: enzosChannel)
 mary.subscribe(to: enzosChannel)
 
 // Saída:
 // ✅ John inscrito no Enzo Code
 // ✅ Mary inscrito no Enzo Code

 enzosChannel.uploadVideo(title: "Learning Design Patterns")
 
 // Saída:
 // 🔴 [CANAL Enzo Code]: Subindo vídeo 'Learning Design Patterns'...
 // 👤 John recebeu notificação: Assistindo 'Learning Design Patterns'
 // 👤 Mary recebeu notificação: Assistindo 'Learning Design Patterns'

 john.subscriptions.removeAll()

 enzosChannel.uploadVideo(title: "Advanced Combine")
 
 // Saída:
 // 🔴 [CANAL Enzo Code]: Subindo vídeo 'Advanced Combine'...
 // 👤 Mary recebeu notificação: Assistindo 'Advanced Combine'
 
 */
