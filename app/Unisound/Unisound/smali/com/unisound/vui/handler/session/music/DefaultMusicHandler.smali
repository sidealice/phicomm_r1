.class public Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;
.super Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;
.source "DefaultMusicHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lnluparser/scheme/Intent;",
        "T::",
        "Lnluparser/scheme/Result;",
        ">",
        "Lcom/unisound/vui/handler/SimpleUserEventInboundHandler",
        "<",
        "Lnluparser/scheme/NLU",
        "<TI;TT;>;>;",
        "Landroid/content/ServiceConnection;",
        "Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;"
    }
.end annotation


# static fields
.field private static final MESSAGE_TYPE_NLU_UNIIOT:I = 0x1

.field private static final PREFIX_TENCENT:Ljava/lang/String; = "tc"

.field public static final QUERY_ALBUM_NAME:Ljava/lang/String; = "QUERY_ALBUM_NAME"

.field private static final TAG:Ljava/lang/String; = "DefaultMusicHandler"

.field private static final TYPE_COMMON:Ljava/lang/String; = "common"

.field private static final TYPE_DOWNGRADE_SINGER:Ljava/lang/String; = "downgrade_singer"

.field private static final TYPE_DOWNGRADE_SONG:Ljava/lang/String; = "downgrade_song"


# instance fields
.field private final ACT_BOOKMARK:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ACT_MODE_SET:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ACT_PLAY_COLLECTION:I

.field private final ACT_PLAY_COLLECT_LIST:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ACT_QUERY_DETAIL:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ACT_SET:I

.field private final AUDIO:I

.field private final BOOKMARK:I

.field private final BROADCAST:I

.field private final CLOSE:I

.field private final EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final MODE_ALL_REPEAT:I

.field private final MODE_LIST_REPEAT:I

.field private final MODE_ORDER:I

.field private final MODE_REPEAT_ONCE:I

.field private final MODE_SHUFFLE:I

.field private final MUSIC:I

.field private final MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unisound/vui/util/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final NEWS:I

.field private final NEXT:I

.field private final PAUSE:I

.field private final PLAY:I

.field private final PLAY_AUDIO_LIST_WITH_INDEX:I

.field private final PLAY_MUSIC_LIST_WITH_INDEX:I

.field private final PREV:I

.field private final SETTING_MP:I

.field private final STOP:I

.field private final SWITCH_PLAY_MODE:I

.field private final SWITCH_TO:I

.field private context:Landroid/content/Context;

.field private currentWakeupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlbumId:Ljava/lang/String;

.field private mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

.field private mNLU:Lnluparser/scheme/NLU;

.field private musicStateMgr:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

.field private netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

.field protected playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

.field private playMode:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private serviceType:I

.field private settingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private taskHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V
    .locals 8
    .param p1, "commonPlayer"    # Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    invoke-direct {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;-><init>()V

    .line 95
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "ACT_PLAY_COLLECT_LIST"

    .line 96
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_PLAY_COLLECT_LIST:Lcom/unisound/vui/util/AttributeKey;

    .line 97
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "ACT_BOOKMARK"

    .line 98
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_BOOKMARK:Lcom/unisound/vui/util/AttributeKey;

    .line 99
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "ACT_MODE_SET"

    .line 100
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_MODE_SET:Lcom/unisound/vui/util/AttributeKey;

    .line 101
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "ACT_QUERY_DETAIL"

    .line 102
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_QUERY_DETAIL:Lcom/unisound/vui/util/AttributeKey;

    .line 103
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "EMPTY_RESULT"

    .line 104
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    .line 105
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "EXTRA_BUTTON_CONTROL"

    .line 106
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;

    .line 108
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "MUSIC_STATUS_PAUSE"

    .line 109
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    .line 110
    const-class v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    const-string v1, "MUSIC_STATUS_STOP"

    .line 111
    invoke-static {v0, v1}, Lcom/unisound/vui/util/AttributeKey;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Lcom/unisound/vui/util/AttributeKey;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    .line 130
    iput v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC:I

    .line 131
    iput v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->AUDIO:I

    .line 132
    iput v6, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->SETTING_MP:I

    .line 133
    iput v7, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->NEWS:I

    .line 134
    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->BROADCAST:I

    .line 139
    iput v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->PREV:I

    .line 140
    iput v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->NEXT:I

    .line 141
    iput v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->PLAY:I

    .line 142
    iput v6, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->PAUSE:I

    .line 143
    iput v7, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->STOP:I

    .line 144
    const/4 v0, 0x5

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_SET:I

    .line 145
    const/4 v0, 0x6

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->BOOKMARK:I

    .line 146
    const/4 v0, 0x7

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_PLAY_COLLECTION:I

    .line 147
    const/16 v0, 0xa

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->CLOSE:I

    .line 148
    const/16 v0, 0xb

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->SWITCH_PLAY_MODE:I

    .line 149
    const/16 v0, 0xc

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->SWITCH_TO:I

    .line 151
    const/16 v0, 0xd

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->PLAY_MUSIC_LIST_WITH_INDEX:I

    .line 152
    const/16 v0, 0xe

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->PLAY_AUDIO_LIST_WITH_INDEX:I

    .line 157
    iput v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MODE_SHUFFLE:I

    .line 158
    iput v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MODE_ORDER:I

    .line 159
    iput v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MODE_ALL_REPEAT:I

    .line 160
    iput v6, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MODE_REPEAT_ONCE:I

    .line 161
    iput v7, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MODE_LIST_REPEAT:I

    .line 166
    iput v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 1436
    new-instance v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;

    invoke-direct {v0, p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$3;-><init>(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->taskHandler:Landroid/os/Handler;

    .line 186
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .line 187
    new-instance v0, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-direct {v0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    .line 188
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-static {}, Lcom/unisound/vui/util/AppGlobalConstant;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->registerNetStateReceiver(Landroid/content/Context;)V

    .line 189
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->netChangeReceiver:Lcom/unisound/ant/device/netmodule/NetChangeReceiver;

    invoke-virtual {v0, p0}, Lcom/unisound/ant/device/netmodule/NetChangeReceiver;->setAliveConnectListener(Lcom/unisound/ant/device/netmodule/NetChangeReceiver$NetAliveConnectListener;)V

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    .line 192
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PREV"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_NEXT"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PLAY"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PAUSE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_STOP"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_SET"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_BOOKMARK"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_CLOSE"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "OBJ_FAV_MUSIC_LIST"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "switchPlayMode"

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_SWITCH"

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PLAY_LIST"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    const-string v1, "ACT_PLAY_AUDIO_LIST"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    .line 207
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    const-string v1, "MODE_SHUFFLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    const-string v1, "MODE_ORDER"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    const-string v1, "MODE_ALL_REPEAT"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    const-string v1, "MODE_PLAYLIST_REPEAT"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    const-string v1, "MODE_REPEAT_ONCE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/handler/session/music/CommonPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lnluparser/scheme/NLU;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mNLU:Lnluparser/scheme/NLU;

    return-object v0
.end method

.method static synthetic access$200(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mAlbumId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/util/AttributeKey;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    return-object v0
.end method

.method static synthetic access$400(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)Lcom/unisound/vui/engine/ANTHandlerContext;
    .locals 1
    .param p0, "x0"    # Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    return-object v0
.end method

.method private compressLogContent(Lnluparser/scheme/NLU;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<TI;TT;>;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TT;>;"
    iget v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    packed-switch v12, :pswitch_data_0

    .line 544
    :cond_0
    :goto_0
    :pswitch_0
    const-string v12, ""

    invoke-virtual {p1, v12}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    .line 545
    new-instance v3, Lnluparser/scheme/Mixture;

    invoke-direct {v3}, Lnluparser/scheme/Mixture;-><init>()V

    .line 546
    .local v3, "mixture":Lnluparser/scheme/Mixture;
    new-instance v10, Ljava/util/ArrayList;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 547
    .local v10, "nlu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnluparser/scheme/NLU;>;"
    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v3, v10}, Lnluparser/scheme/Mixture;->setNluList(Ljava/util/List;)V

    .line 549
    invoke-static {v3}, Lcom/unisound/vui/util/JsonTool;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, "log":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lnluparser/scheme/NLU;->setAsrResult(Ljava/lang/String;)V

    .line 551
    return-void

    .line 512
    .end local v2    # "log":Ljava/lang/String;
    .end local v3    # "mixture":Lnluparser/scheme/Mixture;
    .end local v10    # "nlu":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnluparser/scheme/NLU;>;"
    :pswitch_1
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v12

    invoke-virtual {v12}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v11

    check-cast v11, Lnluparser/scheme/AudioResult;

    .line 514
    .local v11, "result":Lnluparser/scheme/AudioResult;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lnluparser/scheme/AudioResult;->getPlaylist()Ljava/util/List;

    move-result-object v1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 515
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/AudioResult$Music;

    .line 516
    .local v0, "audio":Lnluparser/scheme/AudioResult$Music;
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 517
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    .end local v0    # "audio":Lnluparser/scheme/AudioResult$Music;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    .end local v11    # "result":Lnluparser/scheme/AudioResult;
    :pswitch_2
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v12

    invoke-virtual {v12}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v6

    check-cast v6, Lnluparser/scheme/MusicResult;

    .line 523
    .local v6, "musicResult":Lnluparser/scheme/MusicResult;
    if-eqz v6, :cond_0

    .line 524
    invoke-virtual {v6}, Lnluparser/scheme/MusicResult;->getMusicinfo()Ljava/util/List;

    move-result-object v5

    .local v5, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    if-eqz v5, :cond_0

    .line 525
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 526
    const/4 v12, 0x0

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnluparser/scheme/MusicResult$Music;

    .line 527
    .local v4, "music":Lnluparser/scheme/MusicResult$Music;
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 528
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    .end local v4    # "music":Lnluparser/scheme/MusicResult$Music;
    .end local v5    # "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    .end local v6    # "musicResult":Lnluparser/scheme/MusicResult;
    :pswitch_3
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v12

    invoke-virtual {v12}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v9

    check-cast v9, Lnluparser/scheme/NewsResult;

    .line 534
    .local v9, "newsResult":Lnluparser/scheme/NewsResult;
    if-eqz v9, :cond_0

    .line 535
    invoke-virtual {v9}, Lnluparser/scheme/NewsResult;->getNews()Ljava/util/List;

    move-result-object v8

    .local v8, "newsList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/NewsResult$NewsBean;>;"
    if-eqz v8, :cond_0

    .line 536
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    if-le v12, v13, :cond_0

    .line 537
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnluparser/scheme/NewsResult$NewsBean;

    .line 538
    .local v7, "news":Lnluparser/scheme/NewsResult$NewsBean;
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 539
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private dealAudioPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/AudioIntent;",
            "Lnluparser/scheme/AudioResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "audios":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/AudioIntent;Lnluparser/scheme/AudioResult;>;"
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 1052
    const-string v4, ""

    .line 1053
    .local v4, "prompt":Ljava/lang/String;
    const-string v1, ""

    .line 1054
    .local v1, "artist":Ljava/lang/String;
    const-string v0, ""

    .line 1056
    .local v0, "album":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v5

    check-cast v5, Lnluparser/scheme/AudioIntent;

    move-object v2, v5

    .line 1057
    .local v2, "audioIntent":Lnluparser/scheme/AudioIntent;
    :goto_0
    if-eqz v2, :cond_1

    .line 1058
    invoke-virtual {v2}, Lnluparser/scheme/AudioIntent;->getArtist()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1059
    invoke-virtual {v2}, Lnluparser/scheme/AudioIntent;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 1061
    :cond_0
    invoke-virtual {v2}, Lnluparser/scheme/AudioIntent;->getAlbum()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1062
    invoke-virtual {v2}, Lnluparser/scheme/AudioIntent;->getAlbum()Ljava/lang/String;

    move-result-object v0

    .line 1065
    :cond_1
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v5

    check-cast v5, Lnluparser/scheme/AudioResult;

    move-object v3, v5

    .line 1066
    .local v3, "audioResult":Lnluparser/scheme/AudioResult;
    :cond_2
    if-eqz v3, :cond_5

    .line 1067
    invoke-virtual {v3}, Lnluparser/scheme/AudioResult;->getPlaylist()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1068
    invoke-virtual {v3}, Lnluparser/scheme/AudioResult;->getPlaylist()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 1069
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v5

    new-instance v6, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    invoke-direct {v6, v10}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 1070
    sget v5, Lcom/unisound/vui/handler/session/music/R$array;->tts_action_music_play_answer:I

    iget-object v6, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 1072
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 1073
    invoke-virtual {v3}, Lnluparser/scheme/AudioResult;->getPlaylist()Ljava/util/List;

    move-result-object v6

    invoke-static {v6, v0, v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 1072
    invoke-virtual {v5, v6}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlaylist(Ljava/util/List;)V

    .line 1074
    invoke-virtual {v3}, Lnluparser/scheme/AudioResult;->getPageSize()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1075
    invoke-virtual {v3}, Lnluparser/scheme/AudioResult;->getTotal()Ljava/lang/String;

    move-result-object v5

    .line 1074
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1076
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 1077
    invoke-virtual {v3}, Lnluparser/scheme/AudioResult;->getTotal()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v3}, Lnluparser/scheme/AudioResult;->getPageSize()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    .line 1076
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-virtual {v5, v10, v10, v6}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(ZII)V

    .line 1084
    :goto_1
    return-object v4

    .end local v2    # "audioIntent":Lnluparser/scheme/AudioIntent;
    .end local v3    # "audioResult":Lnluparser/scheme/AudioResult;
    :cond_3
    move-object v2, v3

    .line 1056
    goto/16 :goto_0

    .line 1079
    .restart local v2    # "audioIntent":Lnluparser/scheme/AudioIntent;
    .restart local v3    # "audioResult":Lnluparser/scheme/AudioResult;
    :cond_4
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    const/4 v6, 0x2

    invoke-virtual {v5, v10, v10, v6}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(ZII)V

    goto :goto_1

    .line 1082
    :cond_5
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v6, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_audio:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private dealBroadcastPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/BroadcastIntent;",
            "Lnluparser/scheme/BroadcastResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "broadcast":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/BroadcastIntent;Lnluparser/scheme/BroadcastResult;>;"
    const/4 v7, 0x1

    .line 1113
    const-string v1, ""

    .line 1115
    .local v1, "prompt":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v2

    check-cast v2, Lnluparser/scheme/BroadcastResult;

    move-object v0, v2

    .line 1116
    .local v0, "broadcastResult":Lnluparser/scheme/BroadcastResult;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnluparser/scheme/BroadcastResult;->getRate64TsUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1117
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v2

    new-instance v3, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    invoke-direct {v3, v7}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v2, v3}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 1119
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v2}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/unisound/vui/handler/session/music/R$string;->tts_broadcast_start_play:I

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v2

    invoke-virtual {v2}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v2

    check-cast v2, Lnluparser/scheme/BroadcastIntent;

    invoke-virtual {v2}, Lnluparser/scheme/BroadcastIntent;->getStation()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1120
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-static {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptBroadcast(Lnluparser/scheme/BroadcastResult;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlaylist(Ljava/util/List;)V

    .line 1121
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v2, v7}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(Z)V

    .line 1125
    :goto_1
    return-object v1

    .line 1115
    .end local v0    # "broadcastResult":Lnluparser/scheme/BroadcastResult;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1123
    .restart local v0    # "broadcastResult":Lnluparser/scheme/BroadcastResult;
    :cond_1
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_broadcast:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private dealDowngradeSongPlay(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "realSinger"    # Ljava/lang/String;
    .param p2, "realSong"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1026
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p3, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_empty_artist_prefix:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_empty_artist_prefix:I

    .line 1029
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1027
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1031
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_song_but_not_correct_artist:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    .line 1032
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private dealEmptyListTTS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "targetSinger"    # Ljava/lang/String;
    .param p2, "targetSong"    # Ljava/lang/String;

    .prologue
    .line 971
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_song:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 980
    :goto_0
    return-object v0

    .line 973
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 975
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_artist_not_match:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 976
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_song:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 980
    :cond_2
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_song:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private dealMediaSettingService(Lnluparser/scheme/SettingExtIntent;)Ljava/lang/String;
    .locals 15
    .param p1, "settingExtIntent"    # Lnluparser/scheme/SettingExtIntent;

    .prologue
    .line 1132
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v9, ""

    .line 1133
    .local v9, "prompt":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1134
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnluparser/scheme/SettingIntent;

    .line 1135
    .local v11, "settingIntent":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getOperator()Ljava/lang/String;

    move-result-object v8

    .line 1136
    .local v8, "operator":Ljava/lang/String;
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v6

    .line 1137
    .local v6, "operands":Ljava/lang/String;
    const-string v12, "ATTR_BUTTON"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1138
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 1140
    :cond_0
    const-string v12, "DefaultMusicHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-->>dealMediaSettingService operator11:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 1142
    invoke-direct {p0, v8, v6}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->notNeedProccessAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1143
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_empty_playlist:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 1321
    .end local v6    # "operands":Ljava/lang/String;
    .end local v8    # "operator":Ljava/lang/String;
    .end local v9    # "prompt":Ljava/lang/String;
    .end local v11    # "settingIntent":Lnluparser/scheme/SettingIntent;
    .local v10, "prompt":Ljava/lang/String;
    :goto_0
    return-object v10

    .line 1146
    .end local v10    # "prompt":Ljava/lang/String;
    .restart local v6    # "operands":Ljava/lang/String;
    .restart local v8    # "operator":Ljava/lang/String;
    .restart local v9    # "prompt":Ljava/lang/String;
    .restart local v11    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :cond_1
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 1317
    :cond_2
    :goto_1
    :pswitch_0
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isBtnControlled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1318
    const-string v9, ""

    .end local v6    # "operands":Ljava/lang/String;
    .end local v8    # "operator":Ljava/lang/String;
    .end local v11    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :cond_3
    move-object v10, v9

    .line 1321
    .end local v9    # "prompt":Ljava/lang/String;
    .restart local v10    # "prompt":Ljava/lang/String;
    goto :goto_0

    .line 1148
    .end local v10    # "prompt":Ljava/lang/String;
    .restart local v6    # "operands":Ljava/lang/String;
    .restart local v8    # "operator":Ljava/lang/String;
    .restart local v9    # "prompt":Ljava/lang/String;
    .restart local v11    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :pswitch_1
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingBroadcast()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1149
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_operatation_not_support:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 1150
    .end local v9    # "prompt":Ljava/lang/String;
    .restart local v10    # "prompt":Ljava/lang/String;
    goto :goto_0

    .line 1152
    .end local v10    # "prompt":Ljava/lang/String;
    .restart local v9    # "prompt":Ljava/lang/String;
    :cond_4
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1153
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_not_playing:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 1154
    .end local v9    # "prompt":Ljava/lang/String;
    .restart local v10    # "prompt":Ljava/lang/String;
    goto :goto_0

    .line 1156
    .end local v10    # "prompt":Ljava/lang/String;
    .restart local v9    # "prompt":Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->playPrev()V

    .line 1158
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1159
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1160
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 1162
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isBtnControlled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1163
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->resume()V

    .line 1167
    :goto_2
    sget v12, Lcom/unisound/vui/handler/session/music/R$array;->tts_action_music_play_answer:I

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 1168
    invoke-interface {v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1169
    goto :goto_1

    .line 1165
    :cond_6
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    goto :goto_2

    .line 1171
    :pswitch_2
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingBroadcast()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1172
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_operatation_not_support:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 1173
    .end local v9    # "prompt":Ljava/lang/String;
    .restart local v10    # "prompt":Ljava/lang/String;
    goto/16 :goto_0

    .line 1175
    .end local v10    # "prompt":Ljava/lang/String;
    .restart local v9    # "prompt":Ljava/lang/String;
    :cond_7
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1176
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_not_playing:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v10, v9

    .line 1177
    .end local v9    # "prompt":Ljava/lang/String;
    .restart local v10    # "prompt":Ljava/lang/String;
    goto/16 :goto_0

    .line 1179
    .end local v10    # "prompt":Ljava/lang/String;
    .restart local v9    # "prompt":Ljava/lang/String;
    :cond_8
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->playNext()V

    .line 1181
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1182
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1183
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 1185
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isBtnControlled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1186
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->resume()V

    .line 1190
    :goto_3
    sget v12, Lcom/unisound/vui/handler/session/music/R$array;->tts_action_music_play_answer:I

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 1191
    invoke-interface {v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 1192
    goto/16 :goto_1

    .line 1188
    :cond_9
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    goto :goto_3

    .line 1194
    :pswitch_3
    const-string v12, "DefaultMusicHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dealMediaSettingService: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const-string v12, "OBJ_FAV_MUSIC_LIST"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1196
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/SettingExtIntent;->getVoiceTip()Ljava/lang/String;

    move-result-object v9

    .line 1197
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_PLAY_COLLECT_LIST:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 1198
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1199
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    goto/16 :goto_1

    .line 1200
    :cond_a
    const-string v12, "OBJ_FAV_AUDIO_LIST"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 1201
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/SettingExtIntent;->getVoiceTip()Ljava/lang/String;

    move-result-object v9

    .line 1202
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_PLAY_COLLECT_LIST:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 1203
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1204
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    goto/16 :goto_1

    .line 1206
    :cond_b
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isPlaying()Z

    move-result v12

    if-nez v12, :cond_c

    .line 1207
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->startPlay()V

    goto/16 :goto_1

    .line 1209
    :cond_c
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_is_already_playing:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1212
    goto/16 :goto_1

    .line 1214
    :pswitch_4
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1215
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->pause()V

    .line 1216
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    .line 1217
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 1218
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_control_pause:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1223
    :pswitch_5
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v12

    new-instance v13, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 1225
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->stopPlay()V

    .line 1226
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_control_stop:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1227
    goto/16 :goto_1

    .line 1229
    :pswitch_6
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_MODE_SET:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 1230
    const-string v12, "ATTR_PLAY_MODE"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 1231
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingNews()Z

    move-result v12

    if-nez v12, :cond_d

    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingBroadcast()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1232
    :cond_d
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1233
    goto/16 :goto_1

    .line 1235
    :cond_e
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->switchPlayMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1236
    :cond_f
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getValueDelta()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-direct {p0, v6, v12, v13}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->seekTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1237
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1241
    :pswitch_7
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingNews()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingBroadcast()Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1242
    :cond_10
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1243
    goto/16 :goto_1

    .line 1245
    :cond_11
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getConfirm()Ljava/lang/String;

    move-result-object v0

    .line 1246
    .local v0, "confirm":Ljava/lang/String;
    const-string v12, "DefaultMusicHandler"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-->> confirm:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " status: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 1249
    invoke-virtual {v14}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlaybackStatus()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isCollected: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 1251
    invoke-virtual {v14}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isCollected()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1246
    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_BOOKMARK:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v12, v13}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 1253
    const-string v12, "CANCEL"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1254
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->cancelCollect()V

    .line 1255
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_cancel_collect:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1257
    :cond_12
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->collect()V

    .line 1258
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_collect:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1260
    goto/16 :goto_1

    .line 1263
    .end local v0    # "confirm":Ljava/lang/String;
    :pswitch_8
    const-string v12, "DefaultMusicHandler"

    const-string v13, "dealMediaSettingService: SWITCH_PLAY_MODE"

    invoke-static {v12, v13}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingNews()Z

    move-result v12

    if-nez v12, :cond_13

    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingBroadcast()Z

    move-result v12

    if-eqz v12, :cond_14

    .line 1265
    :cond_13
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1266
    goto/16 :goto_1

    .line 1268
    :cond_14
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->switchPlayMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1269
    goto/16 :goto_1

    .line 1272
    :pswitch_9
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getConfirm()Ljava/lang/String;

    move-result-object v4

    .line 1273
    .local v4, "itemId":Ljava/lang/String;
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12, v4}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->switchTo(Ljava/lang/String;)V

    .line 1274
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 1275
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1276
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    goto/16 :goto_1

    .line 1283
    .end local v4    # "itemId":Ljava/lang/String;
    :pswitch_a
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v12}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v12

    new-instance v13, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 1285
    const/4 v5, 0x0

    .line 1286
    .local v5, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v3, 0x0

    .line 1287
    .local v3, "index":I
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    invoke-virtual {v12, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1288
    .local v7, "operate":Ljava/lang/Integer;
    const/16 v12, 0xd

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_16

    .line 1290
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getConfirm()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lcom/unisound/ant/device/bean/DeviceMusicData;

    invoke-static {v12, v13}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/ant/device/bean/DeviceMusicData;

    .line 1292
    .local v2, "deviceMusicData":Lcom/unisound/ant/device/bean/DeviceMusicData;
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/DeviceMusicData;->getIndex()I

    move-result v3

    .line 1293
    invoke-virtual {v2}, Lcom/unisound/ant/device/bean/DeviceMusicData;->getMusicList()Ljava/util/List;

    move-result-object v12

    invoke-static {v12}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptMusic(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1294
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v12, v5, v3}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(Ljava/util/List;I)V

    .line 1304
    .end local v2    # "deviceMusicData":Lcom/unisound/ant/device/bean/DeviceMusicData;
    :cond_15
    :goto_4
    if-eqz v5, :cond_2

    .line 1305
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 1306
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1307
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v13, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v12, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v12

    invoke-interface {v12}, Lcom/unisound/vui/util/Attribute;->remove()V

    goto/16 :goto_1

    .line 1295
    :cond_16
    const/16 v12, 0xe

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v12, v13, :cond_15

    .line 1296
    invoke-virtual {v11}, Lnluparser/scheme/SettingIntent;->getConfirm()Ljava/lang/String;

    move-result-object v12

    const-class v13, Lcom/unisound/ant/device/bean/DeviceAudioData;

    invoke-static {v12, v13}, Lcom/unisound/vui/util/JsonTool;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unisound/ant/device/bean/DeviceAudioData;

    .line 1299
    .local v1, "data":Lcom/unisound/ant/device/bean/DeviceAudioData;
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/DeviceAudioData;->getIndex()I

    move-result v3

    .line 1300
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/DeviceAudioData;->getAlbumId()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->saveAudioReqData(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/DeviceAudioData;->getAudioList()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 1302
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/DeviceAudioData;->getPageNo()I

    move-result v13

    invoke-virtual {v1}, Lcom/unisound/ant/device/bean/DeviceAudioData;->getPageCount()I

    move-result v14

    invoke-virtual {v12, v5, v3, v13, v14}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(Ljava/util/List;III)V

    goto :goto_4

    .line 1314
    .end local v1    # "data":Lcom/unisound/ant/device/bean/DeviceAudioData;
    .end local v3    # "index":I
    .end local v5    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    .end local v7    # "operate":Ljava/lang/Integer;
    :cond_17
    iget-object v12, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v13, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 1146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method private dealMusicPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/MusicIntent;",
            "Lnluparser/scheme/MusicResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 904
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "musics":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/MusicIntent;Lnluparser/scheme/MusicResult;>;"
    const-string v11, ""

    .line 905
    .local v11, "prompt":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v7

    check-cast v7, Lnluparser/scheme/MusicIntent;

    .line 906
    .local v7, "intent":Lnluparser/scheme/MusicIntent;
    invoke-virtual {v7}, Lnluparser/scheme/MusicIntent;->getSong()Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "targetSong":Ljava/lang/String;
    invoke-virtual {v7}, Lnluparser/scheme/MusicIntent;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 908
    .local v1, "targetSinger":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v0

    invoke-virtual {v0}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/MusicResult;

    move-object v10, v0

    .line 909
    .local v10, "musicResult":Lnluparser/scheme/MusicResult;
    :goto_0
    const-string v0, "DefaultMusicHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "dealMusicPlayService: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    if-nez v10, :cond_1

    .line 911
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v12, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_song:I

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 926
    :goto_1
    return-object v11

    .line 908
    .end local v10    # "musicResult":Lnluparser/scheme/MusicResult;
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 913
    .restart local v10    # "musicResult":Lnluparser/scheme/MusicResult;
    :cond_1
    invoke-virtual {v10}, Lnluparser/scheme/MusicResult;->getMusicinfo()Ljava/util/List;

    move-result-object v9

    .line 914
    .local v9, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    invoke-virtual {v10}, Lnluparser/scheme/MusicResult;->getSearchType()Ljava/lang/String;

    move-result-object v5

    .line 915
    .local v5, "searchType":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v0

    new-instance v12, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v0, v12}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 917
    invoke-virtual {v10}, Lnluparser/scheme/MusicResult;->getMusicinfo()Ljava/util/List;

    move-result-object v8

    .line 918
    .local v8, "musicInfos":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    invoke-static {v8}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptMusic(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 919
    .local v6, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getArtist()Ljava/lang/String;

    move-result-object v3

    .line 920
    .local v3, "artist":Ljava/lang/String;
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    .local v4, "title":Ljava/lang/String;
    move-object v0, p0

    .line 921
    invoke-direct/range {v0 .. v6}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealMusicTtsAndPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 922
    goto :goto_1

    .line 923
    .end local v3    # "artist":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    .end local v6    # "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    .end local v8    # "musicInfos":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealEmptyListTTS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_1
.end method

.method private dealMusicTtsAndPlay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p1, "targetSinger"    # Ljava/lang/String;
    .param p2, "targetSong"    # Ljava/lang/String;
    .param p3, "realSinger"    # Ljava/lang/String;
    .param p4, "realSong"    # Ljava/lang/String;
    .param p5, "searchType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p6, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 935
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 936
    const/4 v0, -0x1

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 950
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_song:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 962
    :goto_1
    return-object v0

    .line 936
    :sswitch_0
    const-string v4, "common"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "downgrade_singer"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "downgrade_song"

    invoke-virtual {p5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_0

    .line 939
    :pswitch_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_song_to_play:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    aput-object p4, v3, v2

    .line 940
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-direct {p0, p3, p4, p6, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 943
    :pswitch_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_artist_but_not_correct_song:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 944
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 943
    invoke-direct {p0, p3, p4, p6, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 947
    :pswitch_2
    invoke-direct {p0, p3, p4, p6}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealDowngradeSongPlay(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 952
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_song_to_play:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    aput-object p4, v3, v2

    .line 955
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-direct {p0, p3, p4, p6, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 956
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 958
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_song_to_play:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    aput-object p4, v3, v2

    .line 959
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-direct {p0, p3, p4, p6, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 962
    :cond_3
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_song_to_play:I

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p3, v3, v1

    aput-object p4, v3, v2

    .line 963
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 962
    invoke-direct {p0, p3, p4, p6, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 936
    :sswitch_data_0
    .sparse-switch
        -0x50c0d615 -> :sswitch_0
        -0x2a1d2d7a -> :sswitch_1
        0x3b5c7e9f -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private dealNewsPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<",
            "Lnluparser/scheme/NewsIntent;",
            "Lnluparser/scheme/NewsResult;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "news":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/NewsIntent;Lnluparser/scheme/NewsResult;>;"
    const/4 v5, 0x1

    .line 1091
    const-string v1, ""

    .line 1092
    .local v1, "prompt":Ljava/lang/String;
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getData()Lnluparser/scheme/Data;

    move-result-object v3

    invoke-virtual {v3}, Lnluparser/scheme/Data;->getResult()Lnluparser/scheme/Result;

    move-result-object v3

    check-cast v3, Lnluparser/scheme/NewsResult;

    move-object v0, v3

    .line 1093
    .local v0, "newsResult":Lnluparser/scheme/NewsResult;
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult;->getNews()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult;->getNews()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 1094
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    new-instance v4, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    invoke-direct {v4, v5}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {v0}, Lnluparser/scheme/NewsResult;->getTts()Ljava/lang/String;

    move-result-object v2

    .line 1096
    .local v2, "tts":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1097
    sget v3, Lcom/unisound/vui/handler/session/music/R$array;->tts_action_music_play_answer:I

    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1101
    :goto_1
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lnluparser/scheme/NewsResult;->getNews()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptNews(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlaylist(Ljava/util/List;)V

    .line 1102
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(ZLjava/lang/String;)V

    .line 1106
    .end local v2    # "tts":Ljava/lang/String;
    :goto_2
    return-object v1

    .line 1092
    .end local v0    # "newsResult":Lnluparser/scheme/NewsResult;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1099
    .restart local v0    # "newsResult":Lnluparser/scheme/NewsResult;
    .restart local v2    # "tts":Ljava/lang/String;
    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 1104
    .end local v2    # "tts":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v4, Lcom/unisound/vui/handler/session/music/R$string;->tts_news_not_found:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method private exitSession(ZZ)V
    .locals 3
    .param p1, "isNeedRecoveryWakeup"    # Z
    .param p2, "isNeedFireResume"    # Z

    .prologue
    .line 770
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "DefaultMusicHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>exitSession isNeedRecoveryWakeup:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isNeedFireResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->reset()V

    .line 776
    if-eqz p1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 780
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 782
    :cond_1
    if-eqz p2, :cond_2

    .line 783
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->fireResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 785
    :cond_2
    return-void
.end method

.method private formatTime(Ljava/lang/String;)I
    .locals 4
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 875
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v0, 0x0

    .line 876
    .local v0, "offset":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 877
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 878
    .local v1, "timeSplit":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 879
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    const/4 v3, 0x2

    aget-object v3, v1, v3

    .line 880
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int v0, v2, v3

    .line 881
    mul-int/lit16 v0, v0, 0x3e8

    .line 883
    .end local v1    # "timeSplit":[Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private hasNoSongResult(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prompt"    # Ljava/lang/String;

    .prologue
    .line 595
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_song:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_audio:I

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_news:I

    .line 597
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_no_find_broadcast:I

    .line 598
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 597
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_artist_not_match:I

    .line 599
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 598
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 595
    :goto_0
    return v0

    .line 598
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isBtnControlled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 609
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPlayingBroadcast()Z
    .locals 3

    .prologue
    .line 1340
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v0

    .line 1341
    .local v0, "currentItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_BROADCAST:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPlayingNews()Z
    .locals 3

    .prologue
    .line 1335
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v0

    .line 1336
    .local v0, "currentItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v1

    sget-object v2, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isQueryDetailAction(Ljava/lang/String;)Z
    .locals 1
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 1369
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "QUERY_ARTISTNAME"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QUERY_NAME"

    .line 1370
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QUERY_ALBUM_NAME"

    .line 1371
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QUERY_SINGER"

    .line 1372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1369
    :goto_0
    return v0

    .line 1372
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTargetSinger(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "targetSinger"    # Ljava/lang/String;
    .param p2, "realSinger"    # Ljava/lang/String;

    .prologue
    .line 992
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notNeedProccessAction(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "operands"    # Ljava/lang/String;

    .prologue
    .line 1463
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->settingMap:Ljava/util/HashMap;

    .line 1464
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 1465
    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getPlayItemList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OBJ_FAV_MUSIC_LIST"

    .line 1466
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OBJ_FAV_AUDIO_LIST"

    .line 1467
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1463
    :goto_0
    return v0

    .line 1467
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAudioDataReq(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 316
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    new-instance v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$1;-><init>(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;I)V

    invoke-static {v0}, Lcom/unisound/vui/util/ThreadUtils;->executeInSingle(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method private processNewsDataReq(I)V
    .locals 0
    .param p1, "page"    # I

    .prologue
    .line 374
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    return-void
.end method

.method private queryDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1380
    const-string v2, ""

    .line 1381
    .local v2, "queryDetail":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isQueryDetailAction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1382
    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v4}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getCurrPlayItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v1

    .line 1383
    .local v1, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    if-eqz v1, :cond_2

    .line 1384
    invoke-interface {v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 1385
    .local v0, "artist":Ljava/lang/String;
    invoke-interface {v1}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1386
    .local v3, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1387
    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v5, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_query_no_artist_detail:I

    .line 1388
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1397
    .end local v0    # "artist":Ljava/lang/String;
    .end local v1    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1390
    .restart local v0    # "artist":Ljava/lang/String;
    .restart local v1    # "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v5, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_query_detail:I

    .line 1391
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1394
    .end local v0    # "artist":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v5, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_empty_playlist:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private realPlayMusic(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/unisound/vui/handler/session/music/playitem/PlayItem;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1004
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p3, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/unisound/vui/handler/session/music/playitem/PlayItem;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0, p3}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlaylist(Ljava/util/List;)V

    .line 1005
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(Z)V

    .line 1006
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    :cond_0
    sget v0, Lcom/unisound/vui/handler/session/music/R$array;->tts_action_music_play_answer:I

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/internal/RandomHelper;->getRandom(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p4

    .line 1009
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_both_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 1016
    .end local p4    # "prompt":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object p4

    .line 1011
    .restart local p4    # "prompt":Ljava/lang/String;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1012
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_only_song_not_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 1013
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1014
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v1, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_find_only_artist_not_empty:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    goto :goto_0
.end method

.method private removeRepeatInfo(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1040
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    const-string v2, "DefaultMusicHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeRepeatInfo old infos size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1042
    .local v1, "set":Ljava/util/Set;, "Ljava/util/Set<Lnluparser/scheme/MusicResult$Music;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1044
    .local v0, "infoSet":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    const-string v2, "DefaultMusicHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeRepeatInfo new infos size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    return-object v0
.end method

.method private reorderAudioList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/AudioResult$Music;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "audioInfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 580
    .local v3, "random":Ljava/util/Random;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 581
    .local v2, "index":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 582
    .local v0, "audioList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    move v1, v2

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 583
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 586
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 588
    :cond_1
    return-object v0
.end method

.method private reorderMusicList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lnluparser/scheme/MusicResult$Music;",
            ">;"
        }
    .end annotation

    .prologue
    .line 560
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "musicinfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 561
    .local v3, "random":Ljava/util/Random;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 562
    .local v1, "index":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v2, "musicList":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    move v0, v1

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 564
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 563
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 566
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 567
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 569
    :cond_1
    return-object v2
.end method

.method private reportMusicExitState()V
    .locals 2

    .prologue
    .line 1506
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "DefaultMusicHandler"

    const-string v1, "voice control exit music service:"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    if-eqz v0, :cond_0

    .line 1508
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->musicStateMgr:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->musicStateMgr:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->onStatusChanged(I)V

    .line 1512
    :cond_0
    return-void
.end method

.method private reportMusicPlayingState()V
    .locals 2

    .prologue
    .line 1493
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "DefaultMusicHandler"

    const-string v1, "mqtt reconnect success report playing musicInfo"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->musicStateMgr:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->musicStateMgr:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->onStatusChanged(I)V

    .line 1499
    :cond_0
    return-void
.end method

.method private reportServiceInfoToSessionLayer(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1454
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v1, "DefaultMusicHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportServiceInfoToSessionLayer message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1456
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1457
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1458
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->taskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1459
    return-void
.end method

.method private requestPlayingData(II)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "page"    # I

    .prologue
    .line 304
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "DefaultMusicHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestPlayingData() called with: type = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], page = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 313
    :goto_0
    return-void

    .line 307
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->processAudioDataReq(I)V

    goto :goto_0

    .line 310
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->processNewsDataReq(I)V

    goto :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private saveAudioReqData(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 1325
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mNLU:Lnluparser/scheme/NLU;

    .line 1326
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mAlbumId:Ljava/lang/String;

    .line 1327
    return-void
.end method

.method private saveAudioReqData(Lnluparser/scheme/NLU;)V
    .locals 1
    .param p1, "nlu"    # Lnluparser/scheme/NLU;

    .prologue
    .line 1330
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mNLU:Lnluparser/scheme/NLU;

    .line 1331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mAlbumId:Ljava/lang/String;

    .line 1332
    return-void
.end method

.method private seekTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "operands"    # Ljava/lang/String;
    .param p2, "valueDeta"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-wide/16 v6, 0x2710

    const/4 v4, 0x1

    .line 848
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v5}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->getCurrentPostion()J

    move-result-wide v0

    .line 849
    .local v0, "currentPosition":J
    const-wide/16 v2, 0x0

    .line 850
    .local v2, "offset":J
    const-string v5, "ATTR_FASTF_TIME"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 851
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 852
    invoke-direct {p0, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->formatTime(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    add-long v2, v0, v6

    .line 858
    :goto_0
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v5, v2, v3}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->seekTo(J)V

    .line 871
    :goto_1
    return v4

    .line 853
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 854
    invoke-direct {p0, p3}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->formatTime(Ljava/lang/String;)I

    move-result v5

    int-to-long v2, v5

    goto :goto_0

    .line 856
    :cond_1
    add-long v2, v0, v6

    goto :goto_0

    .line 860
    :cond_2
    const-string v5, "ATTR_FASTB_TIME"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 861
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 862
    invoke-direct {p0, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->formatTime(Ljava/lang/String;)I

    move-result v5

    int-to-long v6, v5

    sub-long v2, v0, v6

    .line 868
    :goto_2
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v5, v2, v3}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->seekTo(J)V

    goto :goto_1

    .line 863
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 864
    invoke-direct {p0, p3}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->formatTime(Ljava/lang/String;)I

    move-result v5

    int-to-long v2, v5

    goto :goto_2

    .line 866
    :cond_4
    sub-long v2, v0, v6

    goto :goto_2

    .line 871
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private startPlay()V
    .locals 2

    .prologue
    .line 1348
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->resume()V

    .line 1349
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 1350
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1351
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    .line 1353
    return-void
.end method

.method private stopPlay()V
    .locals 2

    .prologue
    .line 1359
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 1360
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->remove()V

    .line 1361
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->stop()V

    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    .line 1363
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->reportMusicExitState()V

    .line 1364
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    .line 1365
    return-void
.end method

.method private switchPlayMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1404
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v1, "DefaultMusicHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------switchPlayMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string v0, ""

    .line 1406
    .local v0, "switchPlayMode":Ljava/lang/String;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playMode:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1427
    :cond_0
    :goto_0
    return-object v0

    .line 1409
    :pswitch_0
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_mode_shuffle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1410
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    sget-object v2, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_SHUFFLED:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlayMode(Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)V

    goto :goto_0

    .line 1416
    :pswitch_1
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_mode_all_repeat:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1417
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    sget-object v2, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlayMode(Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)V

    goto :goto_0

    .line 1420
    :pswitch_2
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v2, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_mode_repeat_once:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1421
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    sget-object v2, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->SINGLE_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlayMode(Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;)V

    goto :goto_0

    .line 1407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic acceptInboundEvent0(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->acceptInboundEvent0(Lnluparser/scheme/NLU;)Z

    move-result v0

    return v0
.end method

.method protected acceptInboundEvent0(Lnluparser/scheme/NLU;)Z
    .locals 9
    .param p1, "evt"    # Lnluparser/scheme/NLU;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/16 v8, 0x12c

    const/4 v4, 0x1

    .line 225
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getService()Ljava/lang/String;

    move-result-object v2

    .line 226
    .local v2, "service":Ljava/lang/String;
    const-string v5, "DefaultMusicHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "acceptInboundEvent0 service:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v5, "cn.yunzhisheng.broadcast"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 228
    invoke-virtual {p0, v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setPriority(I)V

    .line 229
    const/4 v5, 0x5

    iput v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    .line 265
    :cond_0
    :goto_0
    return v4

    .line 232
    :cond_1
    const-string v5, "cn.yunzhisheng.news"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 233
    invoke-virtual {p0, v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setPriority(I)V

    .line 234
    const/4 v5, 0x4

    iput v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    goto :goto_0

    .line 237
    :cond_2
    const-string v5, "cn.yunzhisheng.music"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 238
    iput v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    .line 239
    invoke-virtual {p0, v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setPriority(I)V

    goto :goto_0

    .line 242
    :cond_3
    const-string v5, "cn.yunzhisheng.audio"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 243
    invoke-virtual {p0, v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setPriority(I)V

    .line 244
    const/4 v5, 0x2

    iput v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    goto :goto_0

    .line 247
    :cond_4
    const-string v5, "cn.yunzhisheng.setting.mp"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 248
    invoke-virtual {p0, v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setPriority(I)V

    .line 249
    const/4 v5, 0x3

    iput v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    .line 251
    invoke-virtual {p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v5

    invoke-virtual {v5}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v0

    check-cast v0, Lnluparser/scheme/SettingExtIntent;

    .line 252
    .local v0, "intent":Lnluparser/scheme/SettingExtIntent;
    invoke-virtual {v0}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 253
    invoke-virtual {v0}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnluparser/scheme/SettingIntent;

    .line 254
    .local v3, "settingIntent":Lnluparser/scheme/SettingIntent;
    invoke-virtual {v3}, Lnluparser/scheme/SettingIntent;->getOperands()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "operands":Ljava/lang/String;
    const-string v5, "ATTR_BUTTON"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 256
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    iget-object v6, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EXTRA_BUTTON_CONTROL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 260
    .end local v1    # "operands":Ljava/lang/String;
    .end local v3    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :cond_5
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0, v5}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isBtnControlled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 261
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v5}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v5

    new-instance v6, Lcom/unisound/ant/device/event/TurnOffWakeLightEvent;

    invoke-direct {v6}, Lcom/unisound/ant/device/event/TurnOffWakeLightEvent;-><init>()V

    invoke-interface {v5, v6}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    goto/16 :goto_0

    .line 265
    .end local v0    # "intent":Lnluparser/scheme/SettingExtIntent;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method protected doInterrupt(Lcom/unisound/vui/engine/ANTHandlerContext;Ljava/lang/String;)V
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v3, 0x0

    .line 613
    const-string v0, "DefaultMusicHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>doInterrupt type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",eventReceived:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->eventReceived:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->cancelTTS()V

    .line 615
    const-string v0, "doFinishAllInterrupt"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 616
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->stopPlay()V

    .line 617
    invoke-direct {p0, v3, v3}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->pause()V

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    goto :goto_0
.end method

.method protected doResume(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v3, 0x0

    .line 627
    const-string v0, "DefaultMusicHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>doResume shouldResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    const-string v0, "DefaultMusicHandler"

    const-string v1, "doResume: =========\u7ee7\u7eed\u64ad\u653e"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mark(Z)V

    .line 631
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->startPlay()V

    .line 632
    invoke-direct {p0, v3, v3}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0
.end method

.method protected bridge synthetic eventReceived(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1, p2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    return-void
.end method

.method protected eventReceived(Lnluparser/scheme/NLU;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 17
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<TI;TT;>;",
            "Lcom/unisound/vui/engine/ANTHandlerContext;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 381
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TT;>;"
    const-string v13, "DefaultMusicHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "DefaultMusicHandler evt :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v9, ""

    .line 383
    .local v9, "prompt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    packed-switch v13, :pswitch_data_0

    .line 477
    const-string v13, "DefaultMusicHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "eventReceived: default"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 481
    const-string v13, "DefaultMusicHandler"

    const-string v14, "--->>eventReceived get prompt is null"

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v13

    invoke-interface {v13}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 483
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    .line 484
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    .line 495
    :goto_1
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v13

    const/16 v14, 0x83b

    invoke-interface {v13, v14}, Lcom/unisound/vui/engine/ANTPipeline;->fireTTSEvent(I)Lcom/unisound/vui/engine/ANTPipeline;

    .line 504
    :goto_2
    return-void

    .line 385
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->saveAudioReqData(Lnluparser/scheme/NLU;)V

    .line 386
    move-object/from16 v3, p1

    .line 387
    .local v3, "audios":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/AudioIntent;Lnluparser/scheme/AudioResult;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealAudioPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;

    move-result-object v9

    .line 388
    const-string v13, "DefaultMusicHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "eventReceived: AUDIO"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    .end local v3    # "audios":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/AudioIntent;Lnluparser/scheme/AudioResult;>;"
    :pswitch_1
    invoke-direct/range {p0 .. p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->saveAudioReqData(Lnluparser/scheme/NLU;)V

    .line 392
    move-object/from16 v8, p1

    .line 393
    .local v8, "news":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/NewsIntent;Lnluparser/scheme/NewsResult;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealNewsPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;

    move-result-object v9

    .line 394
    goto :goto_0

    .line 396
    .end local v8    # "news":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/NewsIntent;Lnluparser/scheme/NewsResult;>;"
    :pswitch_2
    move-object/from16 v4, p1

    .line 398
    .local v4, "broadcasts":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/BroadcastIntent;Lnluparser/scheme/BroadcastResult;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealBroadcastPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;

    move-result-object v9

    .line 399
    goto :goto_0

    .line 401
    .end local v4    # "broadcasts":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/BroadcastIntent;Lnluparser/scheme/BroadcastResult;>;"
    :pswitch_3
    move-object/from16 v7, p1

    .line 402
    .local v7, "musics":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/MusicIntent;Lnluparser/scheme/MusicResult;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealMusicPlayService(Lnluparser/scheme/NLU;)Ljava/lang/String;

    move-result-object v9

    .line 403
    const-string v13, "DefaultMusicHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "eventReceived: MUSIC"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 407
    .end local v7    # "musics":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/MusicIntent;Lnluparser/scheme/MusicResult;>;"
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isPlayingNews()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isQueryDetailAction(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 408
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v14, Lcom/unisound/vui/handler/session/music/R$string;->tts_music_change_no_supported:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 409
    goto/16 :goto_0

    .line 411
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getCode()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->queryDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 412
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_QUERY_DETAIL:Lcom/unisound/vui/util/AttributeKey;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 416
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getSemantic()Lnluparser/scheme/Semantic;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/Semantic;->getIntent()Lnluparser/scheme/Intent;

    move-result-object v5

    check-cast v5, Lnluparser/scheme/SettingExtIntent;

    .line 418
    .local v5, "intent":Lnluparser/scheme/SettingExtIntent;
    invoke-virtual {v5}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 419
    invoke-virtual {v5}, Lnluparser/scheme/SettingExtIntent;->getOperations()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lnluparser/scheme/SettingIntent;

    .line 420
    .local v12, "settingIntent":Lnluparser/scheme/SettingIntent;
    const-string v13, "OBJ_MEDIA_PLAYER"

    invoke-virtual {v12}, Lnluparser/scheme/SettingIntent;->getDeviceType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 421
    invoke-virtual {v12}, Lnluparser/scheme/SettingIntent;->getTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 422
    invoke-virtual {v12}, Lnluparser/scheme/SettingIntent;->getAnchorTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 423
    invoke-virtual {v12}, Lnluparser/scheme/SettingIntent;->getOffsetTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 424
    const-string v13, "cn.yunzhisheng.music.schedule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lnluparser/scheme/NLU;->setService(Ljava/lang/String;)V

    .line 425
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 426
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    goto/16 :goto_2

    .line 431
    .end local v12    # "settingIntent":Lnluparser/scheme/SettingIntent;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 432
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getGeneral()Lnluparser/scheme/General;

    move-result-object v13

    invoke-virtual {v13}, Lnluparser/scheme/General;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lnluparser/scheme/SettingExtIntent;->setVoiceTip(Ljava/lang/String;)V

    .line 434
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getIotUniJson()Lcom/google/gson/JsonObject;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 435
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getIotUniJson()Lcom/google/gson/JsonObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->getMusicInfo(Ljava/lang/String;)Lcom/unisound/ant/device/bean/RemoteMusicInfo;

    move-result-object v11

    .line 436
    .local v11, "remoteMusicInfo":Lcom/unisound/ant/device/bean/RemoteMusicInfo;
    invoke-virtual/range {p1 .. p1}, Lnluparser/scheme/NLU;->getIotUniJson()Lcom/google/gson/JsonObject;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->getAudioInfo(Ljava/lang/String;)Lcom/unisound/ant/device/bean/RemoteAudioInfo;

    move-result-object v10

    .line 437
    .local v10, "remoteAudioInfo":Lcom/unisound/ant/device/bean/RemoteAudioInfo;
    if-eqz v11, :cond_4

    .line 438
    invoke-virtual {v11}, Lcom/unisound/ant/device/bean/RemoteMusicInfo;->getMusicinfo()Ljava/util/List;

    move-result-object v6

    .line 439
    .local v6, "musicinfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    if-eqz v6, :cond_4

    .line 441
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_6

    .line 442
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v13

    new-instance v14, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v13, v14}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->reorderMusicList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptMusic(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlaylist(Ljava/util/List;)V

    .line 445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(Z)V

    .line 449
    :goto_3
    invoke-virtual {v11}, Lcom/unisound/ant/device/bean/RemoteMusicInfo;->getVoiceTip()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 450
    invoke-virtual {v11}, Lcom/unisound/ant/device/bean/RemoteMusicInfo;->getVoiceTip()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lnluparser/scheme/SettingExtIntent;->setVoiceTip(Ljava/lang/String;)V

    .line 454
    .end local v6    # "musicinfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    :cond_4
    if-eqz v10, :cond_5

    .line 455
    invoke-virtual {v10}, Lcom/unisound/ant/device/bean/RemoteAudioInfo;->getAudioinfo()Ljava/util/List;

    move-result-object v2

    .line 456
    .local v2, "audioInfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    if-eqz v2, :cond_5

    .line 458
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_7

    .line 459
    invoke-interface/range {p2 .. p2}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v13

    new-instance v14, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Lcom/unisound/vui/handler/session/music/outputevents/MusicOutputEvents;-><init>(Z)V

    invoke-interface {v13, v14}, Lcom/unisound/vui/engine/ANTPipeline;->write(Ljava/lang/Object;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 462
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->reorderAudioList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/unisound/vui/handler/session/music/playitem/PlayItemAdapter;->adaptAudio(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    .line 461
    invoke-virtual {v13, v14}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setPlaylist(Ljava/util/List;)V

    .line 463
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->play(Z)V

    .line 467
    :goto_4
    invoke-virtual {v10}, Lcom/unisound/ant/device/bean/RemoteAudioInfo;->getVoiceTip()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 468
    invoke-virtual {v10}, Lcom/unisound/ant/device/bean/RemoteAudioInfo;->getVoiceTip()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lnluparser/scheme/SettingExtIntent;->setVoiceTip(Ljava/lang/String;)V

    .line 473
    .end local v2    # "audioInfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    .end local v10    # "remoteAudioInfo":Lcom/unisound/ant/device/bean/RemoteAudioInfo;
    .end local v11    # "remoteMusicInfo":Lcom/unisound/ant/device/bean/RemoteMusicInfo;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->dealMediaSettingService(Lnluparser/scheme/SettingExtIntent;)Ljava/lang/String;

    move-result-object v9

    .line 474
    const-string v13, "DefaultMusicHandler"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "eventReceived:SETTING_MP "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    .restart local v6    # "musicinfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    .restart local v10    # "remoteAudioInfo":Lcom/unisound/ant/device/bean/RemoteAudioInfo;
    .restart local v11    # "remoteMusicInfo":Lcom/unisound/ant/device/bean/RemoteMusicInfo;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 465
    .end local v6    # "musicinfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/MusicResult$Music;>;"
    .restart local v2    # "audioInfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    goto :goto_4

    .line 486
    .end local v2    # "audioInfo":Ljava/util/List;, "Ljava/util/List<Lnluparser/scheme/AudioResult$Music;>;"
    .end local v5    # "intent":Lnluparser/scheme/SettingExtIntent;
    .end local v10    # "remoteAudioInfo":Lcom/unisound/ant/device/bean/RemoteAudioInfo;
    .end local v11    # "remoteMusicInfo":Lcom/unisound/ant/device/bean/RemoteMusicInfo;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isBtnControlled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 487
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    .line 492
    :goto_5
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->enterWakeup(Z)V

    goto/16 :goto_1

    .line 490
    :cond_9
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    goto :goto_5

    .line 497
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->hasNoSongResult(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 498
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v13, v14}, Lcom/unisound/vui/util/Attribute;->set(Ljava/lang/Object;)V

    .line 500
    :cond_b
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Lcom/unisound/vui/engine/ANTHandlerContext;->playTTS(Ljava/lang/String;)V

    .line 501
    invoke-direct/range {p0 .. p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->compressLogContent(Lnluparser/scheme/NLU;)V

    .line 502
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->sendFullLogToDeviceCenter(Lnluparser/scheme/NLU;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 383
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected firNluMusicWakeupOperate(Ljava/lang/String;)V
    .locals 5
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    .line 703
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v3, "DefaultMusicHandler"

    const-string v4, "-->>firNluMusicWakeupOperate simulation music operate command nlu"

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const/4 v1, 0x0

    .line 705
    .local v1, "nlu":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<Lnluparser/scheme/Intent;Lnluparser/scheme/Result;>;"
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    .line 706
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-interface {v3}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->getCurrentItem()Lcom/unisound/vui/handler/session/music/playitem/PlayItem;

    move-result-object v2

    .line 707
    .local v2, "playItem":Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_wakeup_prev:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 708
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    if-eq v3, v4, :cond_0

    .line 709
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicPrevNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    .line 734
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 735
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 736
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-interface {v3}, Lcom/unisound/vui/engine/ANTHandlerContext;->pipeline()Lcom/unisound/vui/engine/ANTPipeline;

    move-result-object v3

    new-instance v4, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;

    invoke-direct {v4, p1}, Lcom/unisound/vui/transport/out/SimulateWakeupEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/unisound/vui/engine/ANTPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lcom/unisound/vui/engine/ANTPipeline;

    .line 738
    :cond_1
    return-void

    .line 711
    :cond_2
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_wakeup_next:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 712
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    if-eq v3, v4, :cond_0

    .line 713
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicNextNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_0

    .line 715
    :cond_3
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->news_wakeup_prev:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 716
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    if-ne v3, v4, :cond_0

    .line 717
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicPrevNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_0

    .line 719
    :cond_4
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->news_wakeup_next:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 720
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem;->getType()Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    move-result-object v3

    sget-object v4, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    if-ne v3, v4, :cond_0

    .line 721
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicNextNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_0

    .line 723
    :cond_5
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_wakeup_play:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 724
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicPlayNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto :goto_0

    .line 725
    :cond_6
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_wakeup_pause:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 726
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicPauseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto/16 :goto_0

    .line 727
    :cond_7
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_wakeup_stop:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 728
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/MusicNluCreator;->createMusicCloseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto/16 :goto_0

    .line 729
    :cond_8
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_volume_increase:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 730
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/SettingNluCreator;->createVolumeIncreaseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto/16 :goto_0

    .line 731
    :cond_9
    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_volume_decrease:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    invoke-static {p1}, Lcom/unisound/ant/device/nlu/SettingNluCreator;->createVolumeDecreaseNlu(Ljava/lang/String;)Lnluparser/scheme/NLU;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getAudioInfo(Ljava/lang/String;)Lcom/unisound/ant/device/bean/RemoteAudioInfo;
    .locals 3
    .param p1, "iotUniJson"    # Ljava/lang/String;

    .prologue
    .line 1480
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    invoke-static {p1}, Lcom/unisound/ant/device/sessionlayer/NluSessionLayer;->parseNluSessionContent(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 1481
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    if-nez v0, :cond_0

    .line 1482
    const/4 v2, 0x0

    .line 1485
    :goto_0
    return-object v2

    .line 1484
    :cond_0
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 1485
    .local v1, "parameter":Lcom/google/gson/JsonObject;
    const-class v2, Lcom/unisound/ant/device/bean/RemoteAudioInfo;

    invoke-static {v1, v2}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/ant/device/bean/RemoteAudioInfo;

    goto :goto_0
.end method

.method protected bridge synthetic getInterruptType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    check-cast p1, Lnluparser/scheme/NLU;

    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->getInterruptType(Lnluparser/scheme/NLU;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInterruptType(Lnluparser/scheme/NLU;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnluparser/scheme/NLU",
            "<TI;TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 789
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    .local p1, "evt":Lnluparser/scheme/NLU;, "Lnluparser/scheme/NLU<TI;TT;>;"
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    invoke-direct {p0, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isBtnControlled(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const-string v0, ""

    .line 792
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->getInterruptType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMusicInfo(Ljava/lang/String;)Lcom/unisound/ant/device/bean/RemoteMusicInfo;
    .locals 3
    .param p1, "iotUniJson"    # Ljava/lang/String;

    .prologue
    .line 1471
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    invoke-static {p1}, Lcom/unisound/ant/device/sessionlayer/NluSessionLayer;->parseNluSessionContent(Ljava/lang/String;)Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;

    move-result-object v0

    .line 1472
    .local v0, "command":Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;
    if-nez v0, :cond_0

    .line 1473
    const/4 v2, 0x0

    .line 1476
    :goto_0
    return-object v2

    .line 1475
    :cond_0
    invoke-virtual {v0}, Lcom/unisound/ant/device/bean/UnisoundDeviceCommand;->getParameter()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;

    .line 1476
    .local v1, "parameter":Lcom/google/gson/JsonObject;
    const-class v2, Lcom/unisound/ant/device/bean/RemoteMusicInfo;

    invoke-static {v1, v2}, Lcom/unisound/vui/util/JsonTool;->fromJson(Lcom/google/gson/JsonObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unisound/ant/device/bean/RemoteMusicInfo;

    goto :goto_0
.end method

.method protected initPriority()V
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setPriority(I)V

    .line 183
    return-void
.end method

.method protected isIntervalWakeupWord(Ljava/lang/String;)Z
    .locals 7
    .param p1, "wakeupWord"    # Ljava/lang/String;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v4, 0x0

    .line 804
    sget v5, Lcom/unisound/vui/handler/session/music/R$array;->music_running_wakeup_words:I

    iget-object v6, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ctx:Lcom/unisound/vui/engine/ANTHandlerContext;

    .line 805
    invoke-interface {v6}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/unisound/vui/util/SpeakerTTSUtil;->getTTSStringArray(ILandroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 806
    .local v3, "words":[Ljava/lang/String;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 807
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v6, Lcom/unisound/vui/handler/session/music/R$string;->music_avoid_wakeup_next:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "avoidWakeNext":Ljava/lang/String;
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v6, Lcom/unisound/vui/handler/session/music/R$string;->music_avoid_wakeup_prev:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "avoidWakePre":Ljava/lang/String;
    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v6, Lcom/unisound/vui/handler/session/music/R$string;->music_avoid_wakeup_random:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 810
    .local v2, "avoidWakeRandom":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 811
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 812
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 817
    .end local v0    # "avoidWakeNext":Ljava/lang/String;
    .end local v1    # "avoidWakePre":Ljava/lang/String;
    .end local v2    # "avoidWakeRandom":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 815
    .restart local v0    # "avoidWakeNext":Ljava/lang/String;
    .restart local v1    # "avoidWakePre":Ljava/lang/String;
    .restart local v2    # "avoidWakeRandom":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 4
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 215
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "DefaultMusicHandler"

    const-string v1, "DefaultMusicHandler onASREventEngineInitDone :"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    .line 217
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 218
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    const-class v3, Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 220
    new-instance v0, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    invoke-direct {v0, p1}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;-><init>(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->musicStateMgr:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    .line 221
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onASREventEngineInitDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 697
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    return-void
.end method

.method public onNetAliveConnected()V
    .locals 2

    .prologue
    .line 1518
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "DefaultMusicHandler"

    const-string v1, "onNetAliveConnected"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-direct {p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->reportMusicPlayingState()V

    .line 1520
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 741
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v1, "DefaultMusicHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->>onServiceConnected ComponentName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p2

    .line 742
    check-cast v0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;

    .line 743
    .local v0, "binder":Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->mCommonPlayer:Lcom/unisound/vui/handler/session/music/CommonPlayer;

    invoke-virtual {v0, v1}, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->setMusicPlayer(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V

    .line 745
    new-instance v1, Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v0}, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->getService()Lcom/unisound/vui/handler/session/music/MusicService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;-><init>(Lcom/unisound/vui/handler/session/music/MusicService;)V

    iput-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 746
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-static {}, Lcom/unisound/ant/device/DeviceCenterHandler;->getDeviceCenterMgr()Lcom/unisound/ant/device/DeviceCenterHandler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->setStateListener(Lcom/unisound/ant/device/listener/MusicStatusListener;)V

    .line 747
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    new-instance v2, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;

    invoke-direct {v2, p0}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler$2;-><init>(Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;)V

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->registerMusicListener(Lcom/unisound/vui/handler/session/music/listener/MusicListenerWapper;)V

    .line 757
    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->musicStateMgr:Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v1, v2}, Lcom/unisound/vui/handler/session/music/syncloud/MusicStateMgr;->bindPlayController(Lcom/unisound/vui/handler/session/music/ANTPlayController;)V

    .line 758
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 761
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const-string v0, "DefaultMusicHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-->>onServiceDisconnected ComponentName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    .line 763
    return-void
.end method

.method protected onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 5
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 640
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_9

    .line 641
    const-string v0, "DefaultMusicHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->>onTTSEventPlayingEnd serviceType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    packed-switch v0, :pswitch_data_0

    .line 688
    :goto_0
    invoke-virtual {p0, p1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V

    move v0, v1

    .line 691
    :goto_1
    return v0

    .line 647
    :pswitch_0
    iput v4, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    .line 648
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    invoke-direct {p0, v1, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 650
    goto :goto_1

    .line 652
    :cond_0
    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    .line 653
    invoke-direct {p0, v4, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    goto :goto_0

    .line 657
    :pswitch_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_STOP:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 658
    invoke-direct {p0, v1, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 659
    goto :goto_1

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->MUSIC_STATUS_PAUSE:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 661
    invoke-direct {p0, v4, v4}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 662
    goto :goto_1

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_BOOKMARK:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_BOOKMARK:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    invoke-direct {p0, v4, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 665
    goto/16 :goto_1

    .line 666
    :cond_3
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_MODE_SET:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_MODE_SET:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    invoke-direct {p0, v4, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 668
    goto/16 :goto_1

    .line 669
    :cond_4
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_QUERY_DETAIL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_QUERY_DETAIL:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 670
    invoke-direct {p0, v4, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 671
    goto/16 :goto_1

    .line 672
    :cond_5
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_PLAY_COLLECT_LIST:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->ACT_PLAY_COLLECT_LIST:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    .line 673
    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 675
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->hasAttr(Lcom/unisound/vui/util/AttributeKey;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->EMPTY_RESULT:Lcom/unisound/vui/util/AttributeKey;

    invoke-interface {p1, v0}, Lcom/unisound/vui/engine/ANTHandlerContext;->attr(Lcom/unisound/vui/util/AttributeKey;)Lcom/unisound/vui/util/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lcom/unisound/vui/util/Attribute;->getAndRemove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_7

    .line 676
    :cond_6
    iput-boolean v1, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->shouldResume:Z

    .line 678
    :cond_7
    invoke-direct {p0, v4, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 679
    goto/16 :goto_1

    .line 682
    :cond_8
    invoke-direct {p0, v4, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->exitSession(ZZ)V

    move v0, v1

    .line 683
    goto/16 :goto_1

    .line 691
    :cond_9
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onTTSEventPlayingEnd(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto/16 :goto_1

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 887
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 888
    const/4 v0, 0x1

    .line 890
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventSetWakeupwordDone(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z
    .locals 1
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 894
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    iget-boolean v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->eventReceived:Z

    if-eqz v0, :cond_0

    .line 895
    const/4 v0, 0x1

    .line 897
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->onWakeupEventUpdateWakeupWordFail(Lcom/unisound/vui/engine/ANTHandlerContext;)Z

    move-result v0

    goto :goto_0
.end method

.method protected recoveryDefaultWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 842
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/unisound/vui/util/UserPerferenceUtil;->getWakeupWord(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 843
    const-string v0, "DefaultMusicHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recoveryDefaultWakeupWord wakeupWords:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 845
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 796
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    invoke-super {p0}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->reset()V

    .line 797
    const/4 v0, 0x0

    iput v0, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->serviceType:I

    .line 798
    return-void
.end method

.method protected setOperateWakeupWord(Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 6
    .param p1, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;

    .prologue
    .line 824
    .line 825
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/unisound/vui/handler/session/music/R$array;->music_running_wakeup_words:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 826
    .local v2, "musicWakeup":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 827
    .local v1, "listWakeup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/unisound/vui/util/UserPerferenceUtil;->getEffectWakeupword(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    .line 828
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    .line 829
    .local v0, "isContain":Z
    const-string v3, "DefaultMusicHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-->>setOperateWakeupWord isContain:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    if-nez v0, :cond_0

    .line 831
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 832
    invoke-interface {p1}, Lcom/unisound/vui/engine/ANTHandlerContext;->androidContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/unisound/vui/util/UserPerferenceUtil;->setStartWakeupAfterSetWakeupWord(Landroid/content/Context;Z)V

    .line 833
    iget-object v3, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Lcom/unisound/vui/engine/ANTHandlerContext;->setWakeupWord(Ljava/util/List;Z)V

    .line 835
    :cond_0
    const-string v3, "DefaultMusicHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOperateWakeupWord wakupWords:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->currentWakeupList:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    return-void
.end method

.method public userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V
    .locals 5
    .param p1, "evt"    # Ljava/lang/Object;
    .param p2, "ctx"    # Lcom/unisound/vui/engine/ANTHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 274
    .local p0, "this":Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;, "Lcom/unisound/vui/handler/session/music/DefaultMusicHandler<TI;TT;>;"
    instance-of v2, p1, Lnluparser/scheme/LocalASR;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 275
    check-cast v2, Lnluparser/scheme/LocalASR;

    invoke-virtual {v2}, Lnluparser/scheme/LocalASR;->getRecognitionResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "wakeupWord":Ljava/lang/String;
    const-string v2, "DefaultMusicHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-->>userEventTriggered wakeupWord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->isIntervalWakeupWord(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 279
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    if-eqz v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->context:Landroid/content/Context;

    sget v3, Lcom/unisound/vui/handler/session/music/R$string;->music_wakeup_play:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "playContinue":Ljava/lang/String;
    iget-object v2, p0, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->playController:Lcom/unisound/vui/handler/session/music/ANTPlayController;

    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/music/ANTPlayController;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 283
    const-string v2, "DefaultMusicHandler"

    const-string v3, "current player is not playing and wkaeupControl is not effect"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .end local v0    # "playContinue":Ljava/lang/String;
    .end local v1    # "wakeupWord":Ljava/lang/String;
    :goto_0
    return-void

    .line 287
    .restart local v0    # "playContinue":Ljava/lang/String;
    .restart local v1    # "wakeupWord":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    const-string v2, "DefaultMusicHandler"

    const-string v3, "current player is playing "

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 293
    .end local v0    # "playContinue":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->firNluMusicWakeupOperate(Ljava/lang/String;)V

    goto :goto_0

    .line 296
    .end local v1    # "wakeupWord":Ljava/lang/String;
    :cond_2
    instance-of v2, p1, Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 297
    check-cast v2, Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;

    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;->getType()I

    move-result v3

    move-object v2, p1

    check-cast v2, Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;

    .line 298
    invoke-virtual {v2}, Lcom/unisound/vui/handler/session/music/outputevents/RequestListOutputEvent;->getData()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 297
    invoke-direct {p0, v3, v2}, Lcom/unisound/vui/handler/session/music/DefaultMusicHandler;->requestPlayingData(II)V

    .line 300
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/unisound/vui/handler/SimpleUserEventInboundHandler;->userEventTriggered(Ljava/lang/Object;Lcom/unisound/vui/engine/ANTHandlerContext;)V

    goto :goto_0
.end method
