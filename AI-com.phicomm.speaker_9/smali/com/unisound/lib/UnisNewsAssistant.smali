.class public Lcom/unisound/lib/UnisNewsAssistant;
.super Ljava/lang/Object;
.source "UnisNewsAssistant.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UnisNewsAssistant"


# instance fields
.field private mRequestClient:Lcom/unisound/lib/net/UserRequestClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/unisound/lib/net/UserRequestClient;->getInstance()Lcom/unisound/lib/net/UserRequestClient;

    move-result-object v0

    iput-object v0, p0, Lcom/unisound/lib/UnisNewsAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/unisound/lib/UnisNewsAssistant;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private sendNewsControlCommand(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/unisound/lib/UnisNewsAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unisound/lib/UnisNewsAssistant$3;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisNewsAssistant$3;-><init>(Lcom/unisound/lib/UnisNewsAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->musicControlCommand(Ljava/lang/Object;Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method


# virtual methods
.method public cancelHttpRequest()V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/unisound/lib/UnisNewsAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unisound/lib/net/UserRequestClient;->cancelHttpTask(Ljava/lang/String;)V

    return-void
.end method

.method public getCurrentNewsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/callback/HttpDataCallback<",
            "Lcom/unisound/lib/news/bean/CurrentNewsList;",
            ">;)V"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/unisound/lib/UnisNewsAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/unisound/lib/UnisNewsAssistant$2;

    invoke-direct {v5, p0, p4}, Lcom/unisound/lib/UnisNewsAssistant$2;-><init>(Lcom/unisound/lib/UnisNewsAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/unisound/lib/net/UserRequestClient;->getCurrentNewsList(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public getNewsPlayInfo(Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/unisound/lib/callback/HttpDataCallback<",
            "Lcom/unisound/lib/msgcenter/bean/PlayingInfo<",
            "Lcom/unisound/lib/msgcenter/bean/NewsInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/unisound/lib/UnisNewsAssistant;->mRequestClient:Lcom/unisound/lib/net/UserRequestClient;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/unisound/lib/UnisNewsAssistant$1;

    invoke-direct {v2, p0, p2}, Lcom/unisound/lib/UnisNewsAssistant$1;-><init>(Lcom/unisound/lib/UnisNewsAssistant;Lcom/unisound/lib/callback/HttpDataCallback;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/unisound/lib/net/UserRequestClient;->getNewsPlayingInfo(Ljava/lang/Object;Ljava/lang/String;Lcom/unisound/lib/net/HttpCallBack;)V

    return-void
.end method

.method public playNews(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 2

    .line 137
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    const-string v1, "switch"

    .line 138
    invoke-virtual {v0, v1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setUdid(Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, v0, p3}, Lcom/unisound/lib/UnisNewsAssistant;->sendNewsControlCommand(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public playNextNews(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    .line 108
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setUdid(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    const-string p1, "next"

    .line 110
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 111
    invoke-direct {p0, v0, p3}, Lcom/unisound/lib/UnisNewsAssistant;->sendNewsControlCommand(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public playPauseNews(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 1

    .line 92
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    .line 93
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setUdid(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    const-string p1, "play"

    .line 95
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 96
    invoke-direct {p0, v0, p3}, Lcom/unisound/lib/UnisNewsAssistant;->sendNewsControlCommand(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method

.method public playPrevNews(Ljava/lang/String;Ljava/lang/String;Lcom/unisound/lib/callback/HttpDataCallback;)V
    .locals 1

    .line 122
    new-instance v0, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;

    invoke-direct {v0}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;-><init>()V

    .line 123
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setUdid(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v0, p2}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setItemId(Ljava/lang/String;)V

    const-string p1, "prev"

    .line 125
    invoke-virtual {v0, p1}, Lcom/unisound/lib/msgcenter/bean/MusicControlParam;->setControlCmd(Ljava/lang/String;)V

    .line 126
    invoke-direct {p0, v0, p3}, Lcom/unisound/lib/UnisNewsAssistant;->sendNewsControlCommand(Lcom/unisound/lib/msgcenter/bean/MusicControlParam;Lcom/unisound/lib/callback/HttpDataCallback;)V

    return-void
.end method
