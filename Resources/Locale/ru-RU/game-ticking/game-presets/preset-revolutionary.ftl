## Rev Head

roles-antag-rev-head-name = Главный Революционер
roles-antag-rev-head-objective = Ваша цель - захватить станцию, переманив людей на свою сторону и убив весь Командный состав станции.
head-rev-role-greeting =
    Вы Главный Революционер.
    Вам поручено убрать всё Командование со станции через смерть или изгнание.
    Синдикат спонсировал вас вспышкой, которая переманивает экипаж на вашу сторону.
    Учтите, что это не сработает на сотрудниках Службы Безопасности, Командования или на тех, кто носит солнцезащитные очки.
    Да здравствует революция!
head-rev-briefing =
    Используйте вспышки для переманивания людей на свою сторону.
    Убейте всех глав, чтобы захватить станцию.
head-rev-break-mindshield = Имплант защиты разума был уничтожен!

## Rev

roles-antag-rev-name = Революционер
roles-antag-rev-objective = Ваша задача - обеспечить безопасность и выполнять приказы Главного Революционера, а также уничтожить весь Командный состав на станции.
rev-break-control = { $name } вспомнил(а) о своей истинной верности!
rev-role-greeting =
    Вы - Революционер.
    Перед вами стоит задача захватить станцию и защитить Главных Революционеров.
    Ликвидировать весь Командный состав.
    Да здравствует революция!
rev-briefing = Помогите революционерам убить всех глав, чтобы захватить станцию.

## General

rev-title = Революционеры
rev-description = Революционеры среди нас.
rev-not-enough-ready-players = Недостаточно игроков готовы к игре. { $readyPlayersCount } игроков из необходимых { $minimumPlayers } готовы. Невозможно начать Революця.
rev-no-one-ready = Нет готовых игроков! Невозможно начать Революция.
rev-no-heads = Не удалось выбрать Главного Революционера. Невозможно начать Революция.
rev-all-heads-dead = Все главы мертвы, теперь добейте остальных членов экипажа!
rev-won = Главные Революционеры выжили и убили всё Командование.
rev-lost = Командование выжило и убило всех Главных Революционеров.
rev-stalemate = Все Главные Революционеры и члены Командования погибли. Это ничья.
rev-reverse-stalemate = Выжили как Командование, так и Главные Революционеры.
rev-headrev-count =
    { $initialCount ->
        [one] Был один Главный Революционер:
       *[other] Было { $initialCount } Главных Революционеров:
    }
rev-headrev-name-user =
    [color=#5e9cff]{$name}[/color] ([color=gray]{$username}[/color]) завербовал { $count } { $count ->
        [one] человека
       *[other] людей
    }.
rev-headrev-name =
    [color=#5e9cff]{ $name }[/color] завербовал { $count } { $count ->
        [one] человека
       *[other] людей
    }
