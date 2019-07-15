.class synthetic Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;
.super Ljava/lang/Object;
.source "PhicommPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/device/custom/music/PhicommPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

.field static final synthetic $SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 416
    invoke-static {}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->values()[Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    :try_start_0
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$playitem$PlayItem$ItemType:[I

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 222
    :goto_2
    invoke-static {}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->values()[Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    :try_start_3
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_RANDOM:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_SINGLE_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcom/phicomm/speaker/device/custom/music/PhicommPlayer$3;->$SwitchMap$com$unisound$vui$handler$session$music$kuwo$MusicPlayMode:[I

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-virtual {v1}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 416
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
