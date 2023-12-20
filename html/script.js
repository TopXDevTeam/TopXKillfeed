$(function () {
    let killFeedCount = 0;

    function CreateKillFeed(Killer, Victim, Weapon, Headshot, Distance, VictimIsPlayer, KillerIsPlayer, Killfeed) {
        const killFeedItem = $('<div>').addClass(`killfeed-item`);
        
        if (Killfeed.Distance) {
            const KillDistance = $('<div>').addClass(`kill-distance`).text(Distance + "M");

            killFeedItem.append(KillDistance);
        }

        const killerDiv = $('<div>').addClass('killer').append($('<h5>').text(Killer));
        const imagesDiv = $('<div>').addClass('images');
        const weaponImage = $('<img>').attr('src', 'assests/' + Weapon + '.png').attr('alt', '');

        imagesDiv.append(weaponImage);

        if (Headshot) {
            const weaponImage = $('<img>').attr('src', 'assests/headshot.png').attr('alt', '').addClass('headshot');

            imagesDiv.append(weaponImage);
        }

        const victimDiv = $('<div>').addClass('victm').append($('<h5>').text(Victim));

        killFeedItem.append(killerDiv).append(imagesDiv).append(victimDiv);

        if (VictimIsPlayer) {
            killFeedItem.addClass('player-victim');
        }

        if (KillerIsPlayer) {
            killFeedItem.addClass('player-killer');
        }

        $('.container').prepend(killFeedItem);

        killFeedCount++;

        if (killFeedCount >  Killfeed.maxLines) {
            const oldestItem = $('.killfeed-item').last();

            oldestItem.addClass('remove-animation');
            setTimeout(() => {
                oldestItem.remove();
                killFeedCount--;
            }, 300);
        }

        setTimeout(() => {
            killFeedItem.addClass('remove-animation');
            setTimeout(() => {
                killFeedItem.remove();
                killFeedCount--;
            }, 300);
        }, Killfeed.time);
    }

    window.addEventListener('message', function (e) {
        const data = e.data;

        if (data.type === 'showKillFeed') {
            CreateKillFeed(data.Killer, data.Victim, data.Weapon, data.Headshot, data.Distance, data.VictimIsPlayer, data.KillerIsPlayer, data.Killfeed);
        }
    });
});