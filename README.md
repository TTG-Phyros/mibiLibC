# miniLibC

**miniLibC** est une bibliothèque écrite en assembleur ayant pour objectif d'optimiser la performance de certaines fonctions de base du langage C. L'assemblage permet de rendre ces fonctions plus rapides et adaptées à des situations où la performance est critique. La bibliothèque inclut des implémentations de fonctions courantes comme `memcpy`, `memmove`, `strlen`, `strstr`, `strcmp`, et bien d'autres.

## 🚀 Objectif

L'objectif de **miniLibC** est d'optimiser la vitesse d'exécution de fonctions standards du langage C en réécrivant certaines d'entre elles en assembleur, un langage bien plus proche du matériel. Cela permet d'obtenir une meilleure performance que les implémentations classiques en C.

### Fonctions optimisées

Voici quelques exemples des fonctions incluses dans **miniLibC** et optimisées en assembleur :

- **memcpy** : Copie rapide d'une zone de mémoire vers une autre.
- **memmove** : Copie de mémoire avec gestion des zones qui se chevauchent.
- **strlen** : Calcul de la longueur d'une chaîne de caractères.
- **strstr** : Recherche d'une sous-chaîne dans une autre chaîne.
- **strcmp** : Comparaison de deux chaînes de caractères.

## 🕹️ Utilisation

**miniLibC** s'intègre facilement à vos projets en remplaçant les fonctions standard de la bibliothèque C par leurs équivalents optimisés.

### Exemple d'intégration :

1. Inclure la bibliothèque dans votre projet.
2. Lors de l'édition des liens, remplacez les appels aux fonctions C standard (`memcpy`, `strlen`, etc.) par ceux de **miniLibC**.

Voici un exemple de code utilisant **miniLibC** :

```c
#include "miniLibC.h"

int main() {
    char src[50] = "Hello, World!";
    char dest[50];

    // Utilisation de memcpy optimisé
    mini_memcpy(dest, src, mini_strlen(src) + 1);

    return 0;
}
```

## 📈 Performances

Grâce à son implémentation en assembleur, miniLibC propose une meilleure performance que les fonctions équivalentes en C standard, en particulier sur des systèmes où l'accès direct au matériel permet un gain de temps d'exécution significatif.

## 🚧 Fonctionnalités à venir

- [ ] Ajout de nouvelles fonctions C optimisées en assembleur.
- [ ] Optimisation de malloc et free pour la gestion de mémoire dynamique.
- [ ] Support de plus d'architectures matérielles (ARM, RISC-V, etc.).

## 🚀 Installation
### Prérequis

    [MakeFile, GCC, Nasm]

## Instructions

### Clone le dépôt :

    git clone https://github.com/ton-compte/MyNavy.git

### Accède au dossier du projet :

    cd MyNavy

### Compile le projet :

    make

### Accéder aux fonctions :

    Compiler avec la lib libasm.so créé par le MakeFile

### Pour Nettoyer les fichiers :

    make fclean