## Psel PATOS - FIREWALL

Essa será minha tentativa para o processo seletivo do PATOS, onde implementei um firewall que atua em um IP diferente do da minha máquina, criando uma interface de rede virtual e roteando o tráfego de uma subrede inteira para ela.

Tratando agora sobre a minha trajetória do próprio psel, começei tentando, ainda no psel 1.0 a implementar o reverse proxy, mas acabei não indo tão afundo por outros motivos. Quando lançado o 2.0, me interessei pelo firewall e me arrisquei a fazer, pesquisei bastante, quebrei a cabeça para entender e, no final, o mais importante, aprendi bastante.

### Tutorias e Guias utilizados
- **Beej's Guide to Network Programming** - https://beej.us/guide/bgnet/pdf/bgnet_usl_c_1.pdf
- **"Tun/Tap interface tutorial"** por Waldner
- **Gemni** para eventuais dúvidas e alguns momentos que eu travava e descobria coisas novas, por exemplo, a função "checksum" era algo novo que aprendi por conta da IA.

Foi muito divertido me aventurar por um assunto tão diferente do que estou acostumado e me desafiar a melhorar, tanto como pessoa e como programador. Aprendi muitas coisas!

O repositório que desenvolvi o psel e a construção do meu conhecimento foi https://github.com/GabrielVerissimoL/Network-studies, deveria ter feito direto no fork mas acabei por fazer lá.

### O que o firewall faz
- Interface TUN virtual (10.0.0.x/24)
- Resposta a PING (ICMP echo reply)
- Bloqueio de IP específico (10.0.0.50)
- Filtragem UDP/TCP de palavras proibidas

### Como utilizar o código
Fiz um arquivo .sh para ficar mais fácil de rodar o código como um todo. Apenas digite:
- sudo ./start.sh
Que tudo deve seguir bem.
