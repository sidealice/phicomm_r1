.class public Lcom/phicomm/speaker/player/helpers/TxNewsTracker;
.super Ljava/lang/Object;
.source "TxNewsTracker.java"


# static fields
.field private static Tag:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->Tag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-direct {v0}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;-><init>()V

    iput-object v0, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    .line 21
    iput-object p1, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mContext:Landroid/content/Context;

    .line 22
    return-void
.end method


# virtual methods
.method public addReadTimeLen(Ljava/lang/String;II)V
    .locals 5
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "voiceLen"    # I
    .param p3, "playLen"    # I

    .prologue
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->Tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " addReadTimeLen itemId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " voiceLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " playLen: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v3, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v3}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->getRead_datails()Ljava/util/List;

    move-result-object v2

    .line 53
    .local v2, "read_datails":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;

    .line 54
    .local v1, "readDetail":Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;
    invoke-virtual {v1}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->getDocid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    div-int/lit16 v3, p3, 0x3e8

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->setUsr_play_timelen(I)V

    .line 56
    div-int/lit16 v3, p2, 0x3e8

    invoke-virtual {v1, v3}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->setVoice_timelen(I)V

    .line 60
    .end local v1    # "readDetail":Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;
    :cond_1
    return-void
.end method

.method public reportStatistics()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->getQuery_raw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->Tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reportStatistics "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/logger/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-static {v0, v1}, Lcom/phicomm/speaker/player/helpers/MessageHelper;->reportPlayingTxNews(Landroid/content/Context;Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;)V

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->stopTrack()V

    .line 74
    return-void
.end method

.method public startTrack(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/phicomm/speaker/player/model/PlaySong;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "playSongList":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/player/model/PlaySong;>;"
    const/4 v1, 0x1

    .line 26
    .local v1, "isTxPlayList":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 27
    .local v4, "now":J
    iget-object v8, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->setQuery_time(Ljava/lang/String;)V

    .line 28
    iget-object v8, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v8, p1}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->setQuery_raw(Ljava/lang/String;)V

    .line 29
    iget-object v8, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v8}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->getRead_datails()Ljava/util/List;

    move-result-object v6

    .line 30
    .local v6, "read_datails":Ljava/util/List;, "Ljava/util/List<Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 31
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/phicomm/speaker/player/model/PlaySong;

    .line 32
    .local v7, "song":Lcom/phicomm/speaker/player/model/PlaySong;
    new-instance v3, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;

    invoke-direct {v3}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;-><init>()V

    .line 33
    .local v3, "readDatail":Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;
    invoke-virtual {v7}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "itemId":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v8, "tc"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 35
    :cond_0
    const/4 v1, 0x0

    .line 42
    .end local v2    # "itemId":Ljava/lang/String;
    .end local v3    # "readDatail":Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;
    .end local v7    # "song":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_1
    if-nez v1, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->stopTrack()V

    .line 45
    :cond_2
    return-void

    .line 38
    .restart local v2    # "itemId":Ljava/lang/String;
    .restart local v3    # "readDatail":Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;
    .restart local v7    # "song":Lcom/phicomm/speaker/player/model/PlaySong;
    :cond_3
    invoke-virtual {v7}, Lcom/phicomm/speaker/player/model/PlaySong;->getItemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo$ReadDetail;->setDocid(Ljava/lang/String;)V

    .line 39
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopTrack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->setQuery_time(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->setQuery_raw(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/player/helpers/TxNewsTracker;->mTxNewsPlayInfo:Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;

    invoke-virtual {v0}, Lcom/phicomm/speaker/player/statistics/bean/TxNewsPlayInfo;->getRead_datails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 66
    return-void
.end method
